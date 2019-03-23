package com.google.android.gms.c;

import java.util.concurrent.Future;

@pa
public abstract class se implements sl<Future> {
    private final Runnable a;
    private volatile Thread b;
    private boolean c;

    public se() {
        this.a = new Runnable() {
            public final void run() {
                se.this.b = Thread.currentThread();
                se.this.a();
            }
        };
        this.c = false;
    }

    public se(boolean z) {
        this.a = /* anonymous class already generated */;
        this.c = z;
    }

    public abstract void a();

    public abstract void b();

    public final void d() {
        b();
        if (this.b != null) {
            this.b.interrupt();
        }
    }

    /* renamed from: h */
    public final Future e() {
        return this.c ? si.a(1, this.a) : si.a(this.a);
    }
}
