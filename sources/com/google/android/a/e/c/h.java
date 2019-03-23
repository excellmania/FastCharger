package com.google.android.a.e.c;

import com.google.android.a.e.f;
import com.google.android.a.h.o;
import com.google.android.a.h.x;

final class h {
    private static final int[] a = new int[]{x.e("isom"), x.e("iso2"), x.e("avc1"), x.e("hvc1"), x.e("hev1"), x.e("mp41"), x.e("mp42"), x.e("3g2a"), x.e("3g2b"), x.e("3gr6"), x.e("3gs6"), x.e("3ge6"), x.e("3gg6"), x.e("M4V "), x.e("M4A "), x.e("f4v "), x.e("kddi"), x.e("M4VP"), x.e("qt  "), x.e("MSNV")};

    private static boolean a(int i) {
        if ((i >>> 8) == x.e("3gp")) {
            return true;
        }
        for (int i2 : a) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(f fVar) {
        return a(fVar, 4096, true);
    }

    private static boolean a(f fVar, int i, boolean z) {
        long d = fVar.d();
        if (d == -1 || d > ((long) i)) {
            d = (long) i;
        }
        int i2 = (int) d;
        o oVar = new o(64);
        Object obj = null;
        boolean z2 = false;
        long o;
        for (int i3 = 0; i3 < i2; i3 = (int) (((long) i3) + o)) {
            int i4;
            fVar.c(oVar.a, 0, 8);
            oVar.b(0);
            long k = oVar.k();
            int m = oVar.m();
            if (k == 1) {
                fVar.c(oVar.a, 8, 8);
                i4 = 16;
                o = oVar.o();
            } else {
                long j = k;
                i4 = 8;
                o = j;
            }
            if (o < ((long) i4)) {
                return false;
            }
            i4 = ((int) o) - i4;
            if (m != a.a) {
                if (m != a.J) {
                    if (i4 != 0) {
                        if (((long) i3) + o >= ((long) i2)) {
                            break;
                        }
                        fVar.c(i4);
                    } else {
                        continue;
                    }
                } else {
                    z2 = true;
                    break;
                }
            } else if (i4 < 8) {
                return false;
            } else {
                int i5 = (i4 - 8) / 4;
                fVar.c(oVar.a, 0, (i5 + 2) * 4);
                for (i4 = 0; i4 < i5 + 2; i4++) {
                    if (i4 != 1 && a(oVar.m())) {
                        obj = 1;
                        break;
                    }
                }
                if (obj == null) {
                    return false;
                }
            }
        }
        return obj != null && z == z2;
    }

    public static boolean b(f fVar) {
        return a(fVar, 128, false);
    }
}
