package com.google.android.a.e.d;

import android.util.Log;
import com.google.android.a.h.o;
import com.google.android.a.t;
import java.util.Arrays;

final class i {

    public static final class a {
        public final int a;
        public final int b;
        public final long[] c;
        public final int d;
        public final boolean e;

        public a(int i, int i2, long[] jArr, int i3, boolean z) {
            this.a = i;
            this.b = i2;
            this.c = jArr;
            this.d = i3;
            this.e = z;
        }
    }

    public static final class b {
        public final String a;
        public final String[] b;
        public final int c;

        public b(String str, String[] strArr, int i) {
            this.a = str;
            this.b = strArr;
            this.c = i;
        }
    }

    public static final class c {
        public final boolean a;
        public final int b;
        public final int c;
        public final int d;

        public c(boolean z, int i, int i2, int i3) {
            this.a = z;
            this.b = i;
            this.c = i2;
            this.d = i3;
        }
    }

    public static final class d {
        public final long a;
        public final int b;
        public final long c;
        public final int d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final boolean i;
        public final byte[] j;

        public d(long j, int i, long j2, int i2, int i3, int i4, int i5, int i6, boolean z, byte[] bArr) {
            this.a = j;
            this.b = i;
            this.c = j2;
            this.d = i2;
            this.e = i3;
            this.f = i4;
            this.g = i5;
            this.h = i6;
            this.i = z;
            this.j = bArr;
        }
    }

    public static int a(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    private static long a(long j, long j2) {
        return (long) Math.floor(Math.pow((double) j, 1.0d / ((double) j2)));
    }

    public static d a(o oVar) {
        a(1, oVar, false);
        long l = oVar.l();
        int f = oVar.f();
        long l2 = oVar.l();
        int n = oVar.n();
        int n2 = oVar.n();
        int n3 = oVar.n();
        int f2 = oVar.f();
        return new d(l, f, l2, n, n2, n3, (int) Math.pow(2.0d, (double) (f2 & 15)), (int) Math.pow(2.0d, (double) ((f2 & 240) >> 4)), (oVar.f() & 1) > 0, Arrays.copyOf(oVar.a, oVar.c()));
    }

    private static void a(int i, g gVar) {
        int a = gVar.a(6) + 1;
        for (int i2 = 0; i2 < a; i2++) {
            int a2 = gVar.a(16);
            switch (a2) {
                case 0:
                    int i3;
                    a2 = gVar.a() ? gVar.a(4) + 1 : 1;
                    if (gVar.a()) {
                        int a3 = gVar.a(8) + 1;
                        for (i3 = 0; i3 < a3; i3++) {
                            gVar.b(a(i - 1));
                            gVar.b(a(i - 1));
                        }
                    }
                    if (gVar.a(2) == 0) {
                        if (a2 > 1) {
                            for (i3 = 0; i3 < i; i3++) {
                                gVar.b(4);
                            }
                        }
                        for (i3 = 0; i3 < a2; i3++) {
                            gVar.b(8);
                            gVar.b(8);
                            gVar.b(8);
                        }
                        break;
                    }
                    throw new t("to reserved bits must be zero after mapping coupling steps");
                default:
                    Log.e("VorbisUtil", "mapping type other than 0 not supported: " + a2);
                    break;
            }
        }
    }

    public static boolean a(int i, o oVar, boolean z) {
        if (oVar.f() != i) {
            if (z) {
                return false;
            }
            throw new t("expected header type " + Integer.toHexString(i));
        } else if (oVar.f() == 118 && oVar.f() == 111 && oVar.f() == 114 && oVar.f() == 98 && oVar.f() == 105 && oVar.f() == 115) {
            return true;
        } else {
            if (z) {
                return false;
            }
            throw new t("expected characters 'vorbis'");
        }
    }

    private static c[] a(g gVar) {
        int a = gVar.a(6) + 1;
        c[] cVarArr = new c[a];
        for (int i = 0; i < a; i++) {
            cVarArr[i] = new c(gVar.a(), gVar.a(16), gVar.a(16), gVar.a(8));
        }
        return cVarArr;
    }

    public static c[] a(o oVar, int i) {
        int i2;
        int i3 = 0;
        a(5, oVar, false);
        int f = oVar.f() + 1;
        g gVar = new g(oVar.a);
        gVar.b(oVar.d() * 8);
        for (i2 = 0; i2 < f; i2++) {
            d(gVar);
        }
        i2 = gVar.a(6) + 1;
        while (i3 < i2) {
            if (gVar.a(16) != 0) {
                throw new t("placeholder of time domain transforms not zeroed out");
            }
            i3++;
        }
        c(gVar);
        b(gVar);
        a(i, gVar);
        c[] a = a(gVar);
        if (gVar.a()) {
            return a;
        }
        throw new t("framing bit after modes not set as expected");
    }

    public static b b(o oVar) {
        int i = 0;
        a(3, oVar, false);
        String d = oVar.d((int) oVar.l());
        int length = d.length() + 11;
        long l = oVar.l();
        String[] strArr = new String[((int) l)];
        length += 4;
        while (((long) i) < l) {
            length += 4;
            strArr[i] = oVar.d((int) oVar.l());
            length += strArr[i].length();
            i++;
        }
        if ((oVar.f() & 1) != 0) {
            return new b(d, strArr, length + 1);
        }
        throw new t("framing bit expected to be set");
    }

    private static void b(g gVar) {
        int a = gVar.a(6) + 1;
        for (int i = 0; i < a; i++) {
            if (gVar.a(16) > 2) {
                throw new t("residueType greater than 2 is not decodable");
            }
            int i2;
            gVar.b(24);
            gVar.b(24);
            gVar.b(24);
            int a2 = gVar.a(6) + 1;
            gVar.b(8);
            int[] iArr = new int[a2];
            for (i2 = 0; i2 < a2; i2++) {
                iArr[i2] = ((gVar.a() ? gVar.a(5) : 0) * 8) + gVar.a(3);
            }
            for (i2 = 0; i2 < a2; i2++) {
                for (int i3 = 0; i3 < 8; i3++) {
                    if ((iArr[i2] & (1 << i3)) != 0) {
                        gVar.b(8);
                    }
                }
            }
        }
    }

    private static void c(g gVar) {
        int a = gVar.a(6) + 1;
        for (int i = 0; i < a; i++) {
            int a2 = gVar.a(16);
            int a3;
            switch (a2) {
                case 0:
                    gVar.b(8);
                    gVar.b(16);
                    gVar.b(16);
                    gVar.b(6);
                    gVar.b(8);
                    a3 = gVar.a(4) + 1;
                    for (a2 = 0; a2 < a3; a2++) {
                        gVar.b(8);
                    }
                    break;
                case 1:
                    int a4;
                    int a5 = gVar.a(5);
                    a2 = -1;
                    int[] iArr = new int[a5];
                    for (a3 = 0; a3 < a5; a3++) {
                        iArr[a3] = gVar.a(4);
                        if (iArr[a3] > a2) {
                            a2 = iArr[a3];
                        }
                    }
                    int[] iArr2 = new int[(a2 + 1)];
                    for (a2 = 0; a2 < iArr2.length; a2++) {
                        iArr2[a2] = gVar.a(3) + 1;
                        a4 = gVar.a(2);
                        if (a4 > 0) {
                            gVar.b(8);
                        }
                        for (a3 = 0; a3 < (1 << a4); a3++) {
                            gVar.b(8);
                        }
                    }
                    gVar.b(2);
                    int a6 = gVar.a(4);
                    a2 = 0;
                    a4 = 0;
                    for (a3 = 0; a3 < a5; a3++) {
                        a4 += iArr2[iArr[a3]];
                        while (a2 < a4) {
                            gVar.b(a6);
                            a2++;
                        }
                    }
                    break;
                default:
                    throw new t("floor type greater than 1 not decodable: " + a2);
            }
        }
    }

    private static a d(g gVar) {
        int i = 0;
        if (gVar.a(24) != 5653314) {
            throw new t("expected code book to start with [0x56, 0x43, 0x42] at " + gVar.b());
        }
        int i2;
        int a = gVar.a(16);
        int a2 = gVar.a(24);
        long[] jArr = new long[a2];
        boolean a3 = gVar.a();
        if (a3) {
            int a4 = gVar.a(5) + 1;
            i2 = 0;
            while (i2 < jArr.length) {
                int a5 = gVar.a(a(a2 - i2));
                int i3 = 0;
                while (i3 < a5 && i2 < jArr.length) {
                    jArr[i2] = (long) a4;
                    i3++;
                    i2++;
                }
                a4++;
            }
        } else {
            boolean a6 = gVar.a();
            while (i < jArr.length) {
                if (!a6) {
                    jArr[i] = (long) (gVar.a(5) + 1);
                } else if (gVar.a()) {
                    jArr[i] = (long) (gVar.a(5) + 1);
                } else {
                    jArr[i] = 0;
                }
                i++;
            }
        }
        i2 = gVar.a(4);
        if (i2 > 2) {
            throw new t("lookup type greater than 2 not decodable: " + i2);
        }
        if (i2 == 1 || i2 == 2) {
            gVar.b(32);
            gVar.b(32);
            i = gVar.a(4) + 1;
            gVar.b(1);
            long a7 = i2 == 1 ? a != 0 ? a((long) a2, (long) a) : 0 : (long) (a2 * a);
            gVar.b((int) (a7 * ((long) i)));
        }
        return new a(a, a2, jArr, i2, a3);
    }
}
