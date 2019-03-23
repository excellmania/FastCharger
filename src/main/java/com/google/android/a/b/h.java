package com.google.android.a.b;

import com.google.android.a.b.d.a;
import com.google.android.a.e.b;
import com.google.android.a.e.l;
import com.google.android.a.g.f;
import com.google.android.a.h.o;
import com.google.android.a.h.x;
import com.google.android.a.r;

public class h extends b implements a {
    private final d k;
    private final long l;
    private final int m;
    private final int n;
    private r o;
    private com.google.android.a.d.a p;
    private volatile int q;
    private volatile boolean r;

    public h(f fVar, com.google.android.a.g.h hVar, int i, i iVar, long j, long j2, int i2, long j3, d dVar, r rVar, int i3, int i4, com.google.android.a.d.a aVar, boolean z, int i5) {
        super(fVar, hVar, i, iVar, j, j2, i2, z, i5);
        this.k = dVar;
        this.l = j3;
        this.m = i3;
        this.n = i4;
        this.o = a(rVar, j3, i3, i4);
        this.p = aVar;
    }

    private static r a(r rVar, long j, int i, int i2) {
        if (rVar == null) {
            return null;
        }
        r a = (j == 0 || rVar.t == Long.MAX_VALUE) ? rVar : rVar.a(rVar.t + j);
        return (i == -1 && i2 == -1) ? a : a.a(i, i2);
    }

    public final int a(com.google.android.a.e.f fVar, int i, boolean z) {
        return d().a(fVar, i, z);
    }

    public final void a(long j, int i, int i2, int i3, byte[] bArr) {
        d().a(this.l + j, i, i2, i3, bArr);
    }

    public final void a(com.google.android.a.d.a aVar) {
        this.p = aVar;
    }

    public final void a(l lVar) {
    }

    public final void a(o oVar, int i) {
        d().a(oVar, i);
    }

    public final void a(r rVar) {
        this.o = a(rVar, this.l, this.m, this.n);
    }

    public final r b() {
        return this.o;
    }

    public final com.google.android.a.d.a c() {
        return this.p;
    }

    public final long e() {
        return (long) this.q;
    }

    public final void f() {
        this.r = true;
    }

    public final boolean g() {
        return this.r;
    }

    public final void h() {
        com.google.android.a.g.h a = x.a(this.e, this.q);
        com.google.android.a.e.f bVar;
        try {
            bVar = new b(this.g, a.c, this.g.a(a));
            if (this.q == 0) {
                this.k.a((a) this);
            }
            int i = 0;
            while (i == 0) {
                if (!this.r) {
                    i = this.k.a(bVar);
                }
            }
            this.q = (int) (bVar.c() - this.e.c);
            this.g.b();
        } catch (Throwable th) {
            this.g.b();
        }
    }
}
