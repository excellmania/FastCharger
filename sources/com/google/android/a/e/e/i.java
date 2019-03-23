package com.google.android.a.e.e;

import com.google.android.a.e.m;
import com.google.android.a.h.o;
import com.google.android.a.r;

final class i extends e {
    private final o b = new o(10);
    private boolean c;
    private long d;
    private int e;
    private int f;

    public i(m mVar) {
        super(mVar);
        mVar.a(r.a());
    }

    public void a() {
        this.c = false;
    }

    public void a(long j, boolean z) {
        if (z) {
            this.c = true;
            this.d = j;
            this.e = 0;
            this.f = 0;
        }
    }

    public void a(o oVar) {
        if (this.c) {
            int b = oVar.b();
            if (this.f < 10) {
                int min = Math.min(b, 10 - this.f);
                System.arraycopy(oVar.a, oVar.d(), this.b.a, this.f, min);
                if (min + this.f == 10) {
                    this.b.b(6);
                    this.e = this.b.r() + 10;
                }
            }
            this.a.a(oVar, b);
            this.f = b + this.f;
        }
    }

    public void b() {
        if (this.c && this.e != 0 && this.f == this.e) {
            this.a.a(this.d, 1, this.e, 0, null);
            this.c = false;
        }
    }
}
