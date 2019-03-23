package com.google.android.gms.ads.internal;

import android.os.Handler;
import android.support.annotation.Nullable;
import com.google.android.gms.c.gv;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.sj;
import com.google.android.gms.c.sz;
import java.lang.ref.WeakReference;

@pa
public class s {
    private final a a;
    private final Runnable b;
    @Nullable
    private gv c;
    private boolean d;
    private boolean e;
    private long f;

    public static class a {
        private final Handler a;

        public a(Handler handler) {
            this.a = handler;
        }

        public void a(Runnable runnable) {
            this.a.removeCallbacks(runnable);
        }

        public boolean a(Runnable runnable, long j) {
            return this.a.postDelayed(runnable, j);
        }
    }

    public s(a aVar) {
        this(aVar, new a(sj.a));
    }

    s(a aVar, a aVar2) {
        this.d = false;
        this.e = false;
        this.f = 0;
        this.a = aVar2;
        final WeakReference weakReference = new WeakReference(aVar);
        this.b = new Runnable() {
            public void run() {
                s.this.d = false;
                a aVar = (a) weakReference.get();
                if (aVar != null) {
                    aVar.c(s.this.c);
                }
            }
        };
    }

    public void a() {
        this.d = false;
        this.a.a(this.b);
    }

    public void a(gv gvVar) {
        this.c = gvVar;
    }

    public void a(gv gvVar, long j) {
        if (this.d) {
            sz.e("An ad refresh is already scheduled.");
            return;
        }
        this.c = gvVar;
        this.d = true;
        this.f = j;
        if (!this.e) {
            sz.d("Scheduling ad refresh " + j + " milliseconds from now.");
            this.a.a(this.b, j);
        }
    }

    public void b() {
        this.e = true;
        if (this.d) {
            this.a.a(this.b);
        }
    }

    public void b(gv gvVar) {
        a(gvVar, 60000);
    }

    public void c() {
        this.e = false;
        if (this.d) {
            this.d = false;
            a(this.c, this.f);
        }
    }

    public boolean d() {
        return this.d;
    }
}
