package com.google.android.a.h;

public final class g {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final long h;

    public g(byte[] bArr, int i) {
        n nVar = new n(bArr);
        nVar.a(i * 8);
        this.a = nVar.c(16);
        this.b = nVar.c(16);
        this.c = nVar.c(24);
        this.d = nVar.c(24);
        this.e = nVar.c(20);
        this.f = nVar.c(3) + 1;
        this.g = nVar.c(5) + 1;
        this.h = (long) nVar.c(36);
    }

    public int a() {
        return this.g * this.e;
    }

    public long b() {
        return (this.h * 1000000) / ((long) this.e);
    }
}
