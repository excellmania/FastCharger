package com.google.android.gms.c;

import android.content.Context;
import android.os.SystemClock;

@pa
public abstract class ok extends se {
    protected final com.google.android.gms.c.ol.a a;
    protected final Context b;
    protected final Object c = new Object();
    protected final Object d = new Object();
    protected final com.google.android.gms.c.rv.a e;
    protected pj f;

    protected static final class a extends Exception {
        private final int a;

        public a(String str, int i) {
            super(str);
            this.a = i;
        }

        public int a() {
            return this.a;
        }
    }

    protected ok(Context context, com.google.android.gms.c.rv.a aVar, com.google.android.gms.c.ol.a aVar2) {
        super(true);
        this.b = context;
        this.e = aVar;
        this.f = aVar.b;
        this.a = aVar2;
    }

    public abstract rv a(int i);

    public void a() {
        synchronized (this.c) {
            sz.b("AdRendererBackgroundTask started.");
            int i = this.e.e;
            try {
                a(SystemClock.elapsedRealtime());
            } catch (a e) {
                int a = e.a();
                if (a == 3 || a == -1) {
                    sz.d(e.getMessage());
                } else {
                    sz.e(e.getMessage());
                }
                if (this.f == null) {
                    this.f = new pj(a);
                } else {
                    this.f = new pj(a, this.f.k);
                }
                sj.a.post(new Runnable() {
                    public void run() {
                        ok.this.b();
                    }
                });
                i = a;
            }
            final rv a2 = a(i);
            sj.a.post(new Runnable() {
                public void run() {
                    synchronized (ok.this.c) {
                        ok.this.a(a2);
                    }
                }
            });
        }
    }

    public abstract void a(long j);

    /* Access modifiers changed, original: protected */
    public void a(rv rvVar) {
        this.a.b(rvVar);
    }

    public void b() {
    }
}
