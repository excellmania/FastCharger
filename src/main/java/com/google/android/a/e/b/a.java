package com.google.android.a.e.b;

final class a implements a {
    private final long a;
    private final int b;
    private final long c;

    public a(long j, int i, long j2) {
        long j3 = -1;
        this.a = j;
        this.b = i;
        if (j2 != -1) {
            j3 = a(j2);
        }
        this.c = j3;
    }

    public long a(long j) {
        return ((Math.max(0, j - this.a) * 1000000) * 8) / ((long) this.b);
    }

    public boolean a() {
        return this.c != -1;
    }

    public long b() {
        return this.c;
    }

    public long b(long j) {
        return this.c == -1 ? 0 : this.a + ((((long) this.b) * j) / 8000000);
    }
}
