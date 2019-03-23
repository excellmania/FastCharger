package com.google.android.a.e.b;

import com.google.android.a.h.l;
import com.google.android.a.h.o;
import com.google.android.a.h.x;

final class e implements a {
    private final long a;
    private final long b;
    private final long c;
    private final long[] d;
    private final long e;
    private final int g;

    private e(long j, long j2, long j3) {
        this(j, j2, j3, null, 0, 0);
    }

    private e(long j, long j2, long j3, long[] jArr, long j4, int i) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = jArr;
        this.e = j4;
        this.g = i;
    }

    private long a(int i) {
        return (this.b * ((long) i)) / 100;
    }

    public static e a(l lVar, o oVar, long j, long j2) {
        int i = lVar.g;
        int i2 = lVar.d;
        long j3 = j + ((long) lVar.c);
        int m = oVar.m();
        if ((m & 1) == 1) {
            int s = oVar.s();
            if (s != 0) {
                long a = x.a((long) s, ((long) i) * 1000000, (long) i2);
                if ((m & 6) != 6) {
                    return new e(j3, a, j2);
                }
                long s2 = (long) oVar.s();
                oVar.c(1);
                long[] jArr = new long[99];
                for (s = 0; s < 99; s++) {
                    jArr[s] = (long) oVar.f();
                }
                return new e(j3, a, j2, jArr, s2, lVar.c);
            }
        }
        return null;
    }

    public long a(long j) {
        if (!a() || j < this.a) {
            return 0;
        }
        double d = (256.0d * ((double) (j - this.a))) / ((double) this.e);
        int a = x.a(this.d, (long) d, true, false) + 1;
        long a2 = a(a);
        long j2 = a == 0 ? 0 : this.d[a - 1];
        long j3 = a == 99 ? 256 : this.d[a];
        return a2 + (j3 == j2 ? 0 : (long) ((((double) (a(a + 1) - a2)) * (d - ((double) j2))) / ((double) (j3 - j2))));
    }

    public boolean a() {
        return this.d != null;
    }

    public long b() {
        return this.b;
    }

    public long b(long j) {
        float f = 256.0f;
        float f2 = 0.0f;
        if (!a()) {
            return this.a;
        }
        float f3 = (((float) j) * 100.0f) / ((float) this.b);
        if (f3 <= 0.0f) {
            f = 0.0f;
        } else if (f3 < 100.0f) {
            int i = (int) f3;
            if (i != 0) {
                f2 = (float) this.d[i - 1];
            }
            if (i < 99) {
                f = (float) this.d[i];
            }
            f = ((f - f2) * (f3 - ((float) i))) + f2;
        }
        return Math.min(this.a + Math.round((((double) f) * 0.00390625d) * ((double) this.e)), this.c != -1 ? this.c - 1 : ((this.a - ((long) this.g)) + this.e) - 1);
    }
}
