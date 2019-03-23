package com.facebook.ads.internal.c;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class b {
    private static final String a = b.class.getSimpleName();
    private final Handler b = new Handler();
    private final ExecutorService c = Executors.newFixedThreadPool(10);
    private final c d;
    private final d e;
    private final List<Callable<Boolean>> f;

    private class a implements Callable<Boolean> {
        private final String b;

        public a(String str) {
            this.b = str;
        }

        /* renamed from: a */
        public Boolean call() {
            b.this.d.a(this.b);
            return Boolean.valueOf(true);
        }
    }

    private class b implements Callable<Boolean> {
        private final String b;

        public b(String str) {
            this.b = str;
        }

        /* renamed from: a */
        public Boolean call() {
            b.this.e.a(this.b);
            return Boolean.valueOf(true);
        }
    }

    public b(Context context) {
        this.d = c.a(context);
        this.e = d.a(context);
        this.f = new ArrayList();
    }

    public void a(final a aVar) {
        final ArrayList arrayList = new ArrayList(this.f);
        this.c.submit(new Runnable() {
            public void run() {
                ArrayList<Future> arrayList = new ArrayList(arrayList.size());
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList.add(b.this.c.submit((Callable) it.next()));
                }
                try {
                    for (Future future : arrayList) {
                        future.get();
                    }
                } catch (InterruptedException | ExecutionException e) {
                    Log.e(b.a, "Exception while executing cache downloads.", e);
                }
                b.this.b.post(new Runnable() {
                    public void run() {
                        aVar.a();
                    }
                });
            }
        });
        this.f.clear();
    }

    public void a(String str) {
        this.f.add(new a(str));
    }

    public void b(String str) {
        this.f.add(new b(str));
    }

    public String c(String str) {
        return this.e.b(str);
    }
}
