package com.facebook.ads.internal.g.b.a;

import android.util.Log;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

abstract class e implements a {
    private final ExecutorService a = Executors.newSingleThreadExecutor();

    private class a implements Callable<Void> {
        private final File b;

        public a(File file) {
            this.b = file;
        }

        /* renamed from: a */
        public Void call() {
            e.this.b(this.b);
            return null;
        }
    }

    e() {
    }

    private void a(List<File> list) {
        long b = b((List) list);
        int size = list.size();
        Iterator it = list.iterator();
        while (true) {
            int i = size;
            if (it.hasNext()) {
                File file = (File) it.next();
                if (!a(file, b, i)) {
                    long length = file.length();
                    if (file.delete()) {
                        i--;
                        b -= length;
                        Log.i("ProxyCache", "Cache file " + file + " is deleted because it exceeds cache limit");
                    } else {
                        Log.e("ProxyCache", "Error deleting file " + file + " for trimming cache");
                    }
                }
                size = i;
            } else {
                return;
            }
        }
    }

    private long b(List<File> list) {
        long j = 0;
        Iterator it = list.iterator();
        while (true) {
            long j2 = j;
            if (!it.hasNext()) {
                return j2;
            }
            j = ((File) it.next()).length() + j2;
        }
    }

    private void b(File file) {
        d.c(file);
        a(d.b(file.getParentFile()));
    }

    public void a(File file) {
        this.a.submit(new a(file));
    }

    public abstract boolean a(File file, long j, int i);
}
