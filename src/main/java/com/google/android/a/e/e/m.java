package com.google.android.a.e.e;

public final class m {
    private final long a;
    private long b;
    private volatile long c = Long.MIN_VALUE;

    public m(long j) {
        this.a = j;
    }

    public static long b(long j) {
        return (1000000 * j) / 90000;
    }

    public long a(long j) {
        long j2;
        long j3;
        if (this.c != Long.MIN_VALUE) {
            j2 = (this.c + 4294967296L) / 8589934592L;
            j3 = ((j2 - 1) * 8589934592L) + j;
            j2 = (j2 * 8589934592L) + j;
            if (Math.abs(j3 - this.c) >= Math.abs(j2 - this.c)) {
                j3 = j2;
            }
        } else {
            j3 = j;
        }
        j2 = b(j3);
        if (this.a != Long.MAX_VALUE && this.c == Long.MIN_VALUE) {
            this.b = this.a - j2;
        }
        this.c = j3;
        return this.b + j2;
    }

    public void a() {
        this.c = Long.MIN_VALUE;
    }
}
