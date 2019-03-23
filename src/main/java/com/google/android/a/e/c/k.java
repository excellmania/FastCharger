package com.google.android.a.e.c;

import com.google.android.a.e.f;
import com.google.android.a.h.o;

final class k {
    public c a;
    public long b;
    public long c;
    public int d;
    public int[] e;
    public int[] f;
    public long[] g;
    public boolean[] h;
    public boolean i;
    public boolean[] j;
    public int k;
    public o l;
    public boolean m;

    k() {
    }

    public void a() {
        this.d = 0;
        this.i = false;
        this.m = false;
    }

    public void a(int i) {
        this.d = i;
        if (this.e == null || this.e.length < this.d) {
            int i2 = (i * 125) / 100;
            this.e = new int[i2];
            this.f = new int[i2];
            this.g = new long[i2];
            this.h = new boolean[i2];
            this.j = new boolean[i2];
        }
    }

    public void a(f fVar) {
        fVar.b(this.l.a, 0, this.k);
        this.l.b(0);
        this.m = false;
    }

    public void a(o oVar) {
        oVar.a(this.l.a, 0, this.k);
        this.l.b(0);
        this.m = false;
    }

    public void b(int i) {
        if (this.l == null || this.l.c() < i) {
            this.l = new o(i);
        }
        this.k = i;
        this.i = true;
        this.m = true;
    }

    public long c(int i) {
        return this.g[i] + ((long) this.f[i]);
    }
}
