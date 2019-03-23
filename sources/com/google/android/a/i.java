package com.google.android.a;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.a.h.a;
import com.google.android.a.h.c;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

final class i implements h {
    private final Handler a;
    private final j b;
    private final CopyOnWriteArraySet<c> c = new CopyOnWriteArraySet();
    private final r[][] d;
    private final int[] e;
    private boolean f = false;
    private int g = 1;
    private int h;

    @SuppressLint({"HandlerLeak"})
    public i(int i, int i2, int i3) {
        Log.i("ExoPlayerImpl", "Init 1.5.8");
        this.d = new r[i][];
        this.e = new int[i];
        this.a = new Handler() {
            public void handleMessage(Message message) {
                i.this.a(message);
            }
        };
        this.b = new j(this.a, this.f, this.e, i2, i3);
    }

    public void a(long j) {
        this.b.a(j);
    }

    /* Access modifiers changed, original: 0000 */
    public void a(Message message) {
        Iterator it;
        switch (message.what) {
            case 1:
                System.arraycopy(message.obj, 0, this.d, 0, this.d.length);
                this.g = message.arg1;
                it = this.c.iterator();
                while (it.hasNext()) {
                    ((c) it.next()).onPlayerStateChanged(this.f, this.g);
                }
                return;
            case 2:
                this.g = message.arg1;
                it = this.c.iterator();
                while (it.hasNext()) {
                    ((c) it.next()).onPlayerStateChanged(this.f, this.g);
                }
                return;
            case 3:
                this.h--;
                if (this.h == 0) {
                    it = this.c.iterator();
                    while (it.hasNext()) {
                        ((c) it.next()).onPlayWhenReadyCommitted();
                    }
                    return;
                }
                return;
            case 4:
                g gVar = (g) message.obj;
                Iterator it2 = this.c.iterator();
                while (it2.hasNext()) {
                    ((c) it2.next()).onPlayerError(gVar);
                }
                return;
            default:
                return;
        }
    }

    public void a(a aVar, int i, Object obj) {
        this.b.a(aVar, i, obj);
    }

    public void a(c cVar) {
        this.c.add(cVar);
    }

    public void a(boolean z) {
        if (this.f != z) {
            this.f = z;
            this.h++;
            this.b.a(z);
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                ((c) it.next()).onPlayerStateChanged(z, this.g);
            }
        }
    }

    public void a(z... zVarArr) {
        Arrays.fill(this.d, null);
        this.b.a(zVarArr);
    }

    public boolean a() {
        return this.f;
    }

    public void b() {
        this.b.d();
        this.a.removeCallbacksAndMessages(null);
    }

    public void b(c cVar) {
        this.c.remove(cVar);
    }

    public long c() {
        return this.b.c();
    }

    public long d() {
        return this.b.a();
    }

    public int e() {
        long j = 100;
        long f = f();
        long c = c();
        if (f == -1 || c == -1) {
            return 0;
        }
        if (c != 0) {
            j = (100 * f) / c;
        }
        return (int) j;
    }

    public long f() {
        return this.b.b();
    }
}
