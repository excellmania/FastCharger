package com.google.android.a.e.b;

import com.google.android.a.h.l;
import com.google.android.a.h.o;
import com.google.android.a.h.x;

final class d implements a {
    private final long[] a;
    private final long[] b;
    private final long c;

    private d(long[] jArr, long[] jArr2, long j) {
        this.a = jArr;
        this.b = jArr2;
        this.c = j;
    }

    public static d a(l lVar, o oVar, long j, long j2) {
        oVar.c(10);
        int m = oVar.m();
        if (m <= 0) {
            return null;
        }
        int i = lVar.d;
        long a = x.a((long) m, ((long) (i >= 32000 ? 1152 : 576)) * 1000000, (long) i);
        int g = oVar.g();
        int g2 = oVar.g();
        int g3 = oVar.g();
        oVar.c(2);
        long j3 = j + ((long) lVar.c);
        long[] jArr = new long[(g + 1)];
        long[] jArr2 = new long[(g + 1)];
        jArr[0] = 0;
        jArr2[0] = j3;
        for (m = 1; m < jArr.length; m++) {
            int f;
            switch (g3) {
                case 1:
                    f = oVar.f();
                    break;
                case 2:
                    f = oVar.g();
                    break;
                case 3:
                    f = oVar.j();
                    break;
                case 4:
                    f = oVar.s();
                    break;
                default:
                    return null;
            }
            j3 += (long) (f * g2);
            jArr[m] = (((long) m) * a) / ((long) g);
            jArr2[m] = j2 == -1 ? j3 : Math.min(j2, j3);
        }
        return new d(jArr, jArr2, a);
    }

    public long a(long j) {
        return this.a[x.a(this.b, j, true, true)];
    }

    public boolean a() {
        return true;
    }

    public long b() {
        return this.c;
    }

    public long b(long j) {
        return this.b[x.a(this.a, j, true, true)];
    }
}
