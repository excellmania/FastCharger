package com.google.android.a.h;

import com.google.android.a.e.l;

public final class f {
    private final long[] a;
    private final long[] b;

    private f(long[] jArr, long[] jArr2) {
        this.a = jArr;
        this.b = jArr2;
    }

    public static f a(o oVar) {
        oVar.c(1);
        int j = oVar.j() / 18;
        long[] jArr = new long[j];
        long[] jArr2 = new long[j];
        for (int i = 0; i < j; i++) {
            jArr[i] = oVar.o();
            jArr2[i] = oVar.o();
            oVar.c(2);
        }
        return new f(jArr, jArr2);
    }

    public l a(long j, long j2) {
        final long j3 = j2;
        final long j4 = j;
        return new l() {
            public boolean a() {
                return true;
            }

            public long b(long j) {
                int a = x.a(f.this.a, (j3 * j) / 1000000, true, true);
                return f.this.b[a] + j4;
            }
        };
    }
}
