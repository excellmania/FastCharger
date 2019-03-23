package com.google.android.a.e.f;

final class b {
    private final int a;
    private final int b;
    private final int c;
    private final int d;
    private final int e;
    private final int f;
    private long g;
    private long h;

    public b(int i, int i2, int i3, int i4, int i5, int i6) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i6;
    }

    public long a() {
        return (c() * 1000000) / ((long) this.b);
    }

    public long a(long j) {
        return ((((((long) this.c) * j) / 1000000) / ((long) this.a)) * ((long) this.a)) + this.g;
    }

    public void a(long j, long j2) {
        this.g = j;
        this.h = j2;
    }

    public long b() {
        return this.h / ((long) d());
    }

    public long b(long j) {
        return (1000000 * j) / ((long) this.c);
    }

    public long c() {
        return b() / ((long) h());
    }

    public int d() {
        return this.d / this.a;
    }

    public int e() {
        return this.d;
    }

    public int f() {
        return (this.b * this.e) * this.a;
    }

    public int g() {
        return this.b;
    }

    public int h() {
        return this.a;
    }

    public boolean i() {
        return (this.g == 0 || this.h == 0) ? false : true;
    }

    public int j() {
        return this.f;
    }
}
