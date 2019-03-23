package com.google.android.a.b;

import com.google.android.a.d.a;
import com.google.android.a.g.f;
import com.google.android.a.g.h;
import com.google.android.a.h.x;
import com.google.android.a.r;

public final class n extends b {
    private final r k;
    private final a l;
    private volatile int m;
    private volatile boolean n;

    public n(f fVar, h hVar, int i, i iVar, long j, long j2, int i2, r rVar, a aVar, int i3) {
        super(fVar, hVar, i, iVar, j, j2, i2, true, i3);
        this.k = rVar;
        this.l = aVar;
    }

    public r b() {
        return this.k;
    }

    public a c() {
        return this.l;
    }

    public long e() {
        return (long) this.m;
    }

    public void f() {
        this.n = true;
    }

    public boolean g() {
        return this.n;
    }

    public void h() {
        int i = 0;
        try {
            this.g.a(x.a(this.e, this.m));
            while (i != -1) {
                this.m = i + this.m;
                i = d().a(this.g, (int) ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, true);
            }
            d().a(this.h, 1, this.m, 0, null);
        } finally {
            this.g.b();
        }
    }
}
