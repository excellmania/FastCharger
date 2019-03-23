package com.google.android.a.e.c;

import android.support.v4.media.TransportMediator;
import android.util.Pair;
import com.google.android.a.e.i;
import com.google.android.a.h.m;
import com.google.android.a.h.n;
import com.google.android.a.h.o;
import com.google.android.a.h.x;
import com.google.android.a.r;
import com.google.android.a.t;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class b {

    private static final class a {
        public final List<byte[]> a;
        public final int b;
        public final float c;

        public a(List<byte[]> list, int i, float f) {
            this.a = list;
            this.b = i;
            this.c = f;
        }
    }

    private static final class b {
        public final int a;
        public int b;
        public int c;
        public long d;
        private final boolean e;
        private final o f;
        private final o g;
        private int h;
        private int i;

        public b(o oVar, o oVar2, boolean z) {
            boolean z2 = true;
            this.g = oVar;
            this.f = oVar2;
            this.e = z;
            oVar2.b(12);
            this.a = oVar2.s();
            oVar.b(12);
            this.i = oVar.s();
            if (oVar.m() != 1) {
                z2 = false;
            }
            com.google.android.a.h.b.b(z2, "first_chunk must be 1");
            this.b = -1;
        }

        public boolean a() {
            int i = this.b + 1;
            this.b = i;
            if (i == this.a) {
                return false;
            }
            this.d = this.e ? this.f.u() : this.f.k();
            if (this.b == this.h) {
                this.c = this.g.s();
                this.g.c(4);
                i = this.i - 1;
                this.i = i;
                this.h = i > 0 ? this.g.s() - 1 : -1;
            }
            return true;
        }
    }

    private static final class c {
        public final j[] a;
        public r b;
        public int c = -1;

        public c(int i) {
            this.a = new j[i];
        }
    }

    private static final class d {
        private final int a;
        private final long b;
        private final int c;

        public d(int i, long j, int i2) {
            this.a = i;
            this.b = j;
            this.c = i2;
        }
    }

    private static Pair<long[], long[]> a(a aVar) {
        if (aVar != null) {
            b d = aVar.d(a.O);
            if (d != null) {
                o oVar = d.aC;
                oVar.b(8);
                int a = a.a(oVar.m());
                int s = oVar.s();
                long[] jArr = new long[s];
                long[] jArr2 = new long[s];
                for (int i = 0; i < s; i++) {
                    jArr[i] = a == 1 ? oVar.u() : oVar.k();
                    jArr2[i] = a == 1 ? oVar.o() : (long) oVar.m();
                    if (oVar.i() != (short) 1) {
                        throw new IllegalArgumentException("Unsupported media rate.");
                    }
                    oVar.c(2);
                }
                return Pair.create(jArr, jArr2);
            }
        }
        return Pair.create(null, null);
    }

    private static a a(o oVar, int i) {
        oVar.b((i + 8) + 4);
        int f = (oVar.f() & 3) + 1;
        if (f == 3) {
            throw new IllegalStateException();
        }
        int i2;
        ArrayList arrayList = new ArrayList();
        float f2 = 1.0f;
        int f3 = oVar.f() & 31;
        for (i2 = 0; i2 < f3; i2++) {
            arrayList.add(m.a(oVar));
        }
        int f4 = oVar.f();
        for (i2 = 0; i2 < f4; i2++) {
            arrayList.add(m.a(oVar));
        }
        if (f3 > 0) {
            n nVar = new n((byte[]) arrayList.get(0));
            nVar.a((f + 1) * 8);
            f2 = m.a(nVar).d;
        }
        return new a(arrayList, f, f2);
    }

    private static c a(o oVar, int i, long j, int i2, String str, boolean z) {
        oVar.b(12);
        int m = oVar.m();
        c cVar = new c(m);
        for (int i3 = 0; i3 < m; i3++) {
            int d = oVar.d();
            int m2 = oVar.m();
            com.google.android.a.h.b.a(m2 > 0, "childAtomSize should be positive");
            int m3 = oVar.m();
            if (m3 == a.b || m3 == a.c || m3 == a.X || m3 == a.ah || m3 == a.d || m3 == a.e || m3 == a.f) {
                a(oVar, d, m2, i, j, i2, cVar, i3);
            } else if (m3 == a.i || m3 == a.Y || m3 == a.m || m3 == a.o || m3 == a.q || m3 == a.t || m3 == a.r || m3 == a.s || m3 == a.as || m3 == a.at || m3 == a.k || m3 == a.l) {
                a(oVar, m3, d, m2, i, j, str, z, cVar, i3);
            } else if (m3 == a.af) {
                cVar.b = r.a(Integer.toString(i), "application/ttml+xml", -1, j, str);
            } else if (m3 == a.ap) {
                cVar.b = r.a(Integer.toString(i), "application/x-quicktime-tx3g", -1, j, str);
            } else if (m3 == a.aq) {
                cVar.b = r.a(Integer.toString(i), "application/x-mp4vtt", -1, j, str);
            } else if (m3 == a.ar) {
                cVar.b = r.a(Integer.toString(i), "application/ttml+xml", -1, j, str, 0);
            }
            oVar.b(d + m2);
        }
        return cVar;
    }

    public static i a(a aVar, b bVar, boolean z) {
        a e = aVar.e(a.D);
        int e2 = e(e.d(a.Q).aC);
        if (e2 != i.b && e2 != i.a && e2 != i.c && e2 != i.d && e2 != i.e) {
            return null;
        }
        d d = d(aVar.d(a.M).aC);
        long a = d.b;
        long c = c(bVar.aC);
        long a2 = a == -1 ? -1 : x.a(a, 1000000, c);
        a e3 = e.e(a.E).e(a.F);
        Pair f = f(e.d(a.P).aC);
        c a3 = a(e3.d(a.R).aC, d.a, a2, d.c, (String) f.second, z);
        Pair a4 = a(aVar.e(a.N));
        if (a3.b == null) {
            return null;
        }
        return new i(d.a, e2, ((Long) f.first).longValue(), c, a2, a3.b, a3.a, a3.c, (long[]) a4.first, (long[]) a4.second);
    }

    private static j a(o oVar, int i, int i2) {
        int i3 = i + 8;
        j jVar = null;
        while (i3 - i < i2) {
            oVar.b(i3);
            int m = oVar.m();
            int m2 = oVar.m();
            if (m2 == a.Z) {
                oVar.m();
            } else if (m2 == a.U) {
                oVar.c(4);
                oVar.m();
                oVar.m();
            } else if (m2 == a.V) {
                jVar = b(oVar, i3, m);
            }
            i3 += m;
        }
        return jVar;
    }

    public static l a(i iVar, a aVar) {
        o oVar = aVar.d(a.am).aC;
        boolean z = false;
        b d = aVar.d(a.an);
        if (d == null) {
            z = true;
            d = aVar.d(a.ao);
        }
        o oVar2 = d.aC;
        o oVar3 = aVar.d(a.al).aC;
        o oVar4 = aVar.d(a.ai).aC;
        d = aVar.d(a.aj);
        o oVar5 = d != null ? d.aC : null;
        b d2 = aVar.d(a.ak);
        o oVar6 = d2 != null ? d2.aC : null;
        oVar.b(12);
        int s = oVar.s();
        int s2 = oVar.s();
        if (s2 == 0) {
            return new l(new long[0], new int[0], 0, new long[0], new int[0]);
        }
        long j;
        int i;
        int i2;
        int i3;
        int i4;
        Object obj;
        long[] jArr;
        Object obj2;
        b bVar = new b(oVar3, oVar2, z);
        oVar4.b(12);
        int s3 = oVar4.s() - 1;
        int s4 = oVar4.s();
        int s5 = oVar4.s();
        int i5 = 0;
        if (oVar6 != null) {
            oVar6.b(12);
            i5 = oVar6.s();
        }
        int i6 = -1;
        int i7 = 0;
        if (oVar5 != null) {
            oVar5.b(12);
            i7 = oVar5.s();
            i6 = oVar5.s() - 1;
        }
        Object obj3 = (s != 0 && "audio/raw".equals(iVar.k.b) && s3 == 0 && i5 == 0 && i7 == 0) ? 1 : null;
        int i8 = 0;
        if (obj3 == null) {
            Object obj4 = new long[s2];
            Object obj5 = new int[s2];
            long[] jArr2 = new long[s2];
            Object obj6 = new int[s2];
            j = 0;
            int i9 = 0;
            long j2 = 0;
            i = s5;
            i2 = s3;
            s3 = s4;
            s4 = 0;
            i3 = 0;
            i4 = i5;
            i5 = 0;
            while (s4 < s2) {
                long j3 = j;
                int i10 = i9;
                while (i10 == 0) {
                    com.google.android.a.h.b.b(bVar.a());
                    j3 = bVar.d;
                    i10 = bVar.c;
                }
                if (oVar6 != null) {
                    while (i5 == 0 && i4 > 0) {
                        i5 = oVar6.s();
                        i3 = oVar6.m();
                        i4--;
                    }
                    i5--;
                }
                obj4[s4] = j3;
                obj5[s4] = s == 0 ? oVar.s() : s;
                i9 = obj5[s4] > i8 ? obj5[s4] : i8;
                jArr2[s4] = ((long) i3) + j2;
                obj6[s4] = oVar5 == null ? 1 : 0;
                if (s4 == i6) {
                    obj6[s4] = 1;
                    i8 = i7 - 1;
                    if (i8 > 0) {
                        i6 = oVar5.s() - 1;
                        i7 = i8;
                    } else {
                        i7 = i8;
                    }
                }
                j2 += (long) i;
                i8 = s3 - 1;
                if (i8 != 0 || i2 <= 0) {
                    int i11 = i;
                    i = i8;
                    i8 = i11;
                } else {
                    i = oVar4.s();
                    i8 = oVar4.s();
                    i2--;
                }
                s4++;
                s3 = i;
                i = i8;
                i8 = i9;
                i9 = i10 - 1;
                j = j3 + ((long) obj5[s4]);
            }
            com.google.android.a.h.b.a(i7 == 0);
            com.google.android.a.h.b.a(s3 == 0);
            com.google.android.a.h.b.a(i9 == 0);
            com.google.android.a.h.b.a(i2 == 0);
            com.google.android.a.h.b.a(i4 == 0);
            obj = obj6;
            jArr = jArr2;
            i4 = i8;
            obj2 = obj5;
            obj3 = obj4;
        } else {
            long[] jArr3 = new long[bVar.a];
            int[] iArr = new int[bVar.a];
            while (bVar.a()) {
                jArr3[bVar.b] = bVar.d;
                iArr[bVar.b] = bVar.c;
            }
            com.google.android.a.e.c.d.a a = d.a(s, jArr3, iArr, (long) s5);
            obj3 = a.a;
            obj2 = a.b;
            i4 = a.c;
            jArr = a.d;
            obj = a.e;
        }
        int i12;
        if (iVar.m == null) {
            x.a(jArr, 1000000, iVar.h);
            return new l(obj3, obj2, i4, jArr, obj);
        } else if (iVar.m.length == 1 && iVar.m[0] == 0) {
            for (i12 = 0; i12 < jArr.length; i12++) {
                jArr[i12] = x.a(jArr[i12] - iVar.n[0], 1000000, iVar.h);
            }
            return new l(obj3, obj2, i4, jArr, obj);
        } else {
            int i13;
            long a2;
            i = 0;
            i8 = 0;
            s = 0;
            i12 = 0;
            while (true) {
                i13 = s;
                int i14 = i8;
                i7 = i;
                if (i12 >= iVar.m.length) {
                    break;
                }
                j = iVar.n[i12];
                if (j != -1) {
                    a2 = x.a(iVar.m[i12], iVar.h, iVar.i);
                    i2 = x.b(jArr, j, true, true);
                    i8 = x.b(jArr, a2 + j, true, false);
                    i = i7 + (i8 - i2);
                    s = (i14 != i2 ? 1 : 0) | i13;
                } else {
                    s = i13;
                    i8 = i14;
                    i = i7;
                }
                i12++;
            }
            s3 = i13 | (i7 != s2 ? 1 : 0);
            Object obj7 = s3 != 0 ? new long[i7] : obj3;
            Object obj8 = s3 != 0 ? new int[i7] : obj2;
            i = s3 != 0 ? 0 : i4;
            Object obj9 = s3 != 0 ? new int[i7] : obj;
            long[] jArr4 = new long[i7];
            a2 = 0;
            i4 = 0;
            i12 = 0;
            while (true) {
                i13 = i4;
                j = a2;
                i4 = i;
                if (i12 >= iVar.m.length) {
                    break;
                }
                long j4 = iVar.n[i12];
                a2 = iVar.m[i12];
                if (j4 != -1) {
                    long a3 = j4 + x.a(a2, iVar.h, iVar.i);
                    i = x.b(jArr, j4, true, true);
                    int b = x.b(jArr, a3, true, false);
                    if (s3 != 0) {
                        i2 = b - i;
                        System.arraycopy(obj3, i, obj7, i13, i2);
                        System.arraycopy(obj2, i, obj8, i13, i2);
                        System.arraycopy(obj, i, obj9, i13, i2);
                    }
                    i7 = i13;
                    for (int i15 = i; i15 < b; i15++) {
                        jArr4[i7] = x.a(jArr[i15] - j4, 1000000, iVar.h) + x.a(j, 1000000, iVar.i);
                        if (s3 != 0 && obj8[i7] > i4) {
                            i4 = obj2[i15];
                        }
                        i7++;
                    }
                    i = i4;
                    i4 = i7;
                } else {
                    i = i4;
                    i4 = i13;
                }
                a2 += j;
                i12++;
            }
            i3 = 0;
            for (i12 = 0; i12 < obj9.length && i3 == 0; i12++) {
                i3 |= (obj9[i12] & 1) != 0 ? 1 : 0;
            }
            if (i3 != 0) {
                return new l(obj7, obj8, i4, jArr4, obj9);
            }
            throw new t("The edited sample sequence does not contain a sync sample.");
        }
    }

    public static i a(b bVar, boolean z) {
        if (z) {
            return null;
        }
        o oVar = bVar.aC;
        oVar.b(8);
        while (oVar.b() >= 8) {
            int m = oVar.m();
            if (oVar.m() == a.av) {
                oVar.b(oVar.d() - 8);
                oVar.a(oVar.d() + m);
                return a(oVar);
            }
            oVar.c(m - 8);
        }
        return null;
    }

    private static i a(o oVar) {
        oVar.c(12);
        o oVar2 = new o();
        while (oVar.b() >= 8) {
            int m = oVar.m() - 8;
            if (oVar.m() == a.aw) {
                oVar2.a(oVar.a, oVar.d() + m);
                oVar2.b(oVar.d());
                i b = b(oVar2);
                if (b != null) {
                    return b;
                }
            }
            oVar.c(m);
        }
        return null;
    }

    private static void a(o oVar, int i, int i2, int i3, int i4, long j, String str, boolean z, c cVar, int i5) {
        int g;
        int i6;
        int g2;
        oVar.b(i2 + 8);
        if (z) {
            oVar.c(8);
            g = oVar.g();
            oVar.c(6);
            i6 = g;
        } else {
            oVar.c(16);
            i6 = 0;
        }
        if (i6 == 0 || i6 == 1) {
            g2 = oVar.g();
            oVar.c(6);
            g = oVar.q();
            if (i6 == 1) {
                oVar.c(16);
            }
        } else if (i6 == 2) {
            oVar.c(16);
            g = (int) Math.round(oVar.v());
            g2 = oVar.s();
            oVar.c(20);
        } else {
            return;
        }
        String str2 = null;
        if (i == a.m) {
            str2 = "audio/ac3";
        } else if (i == a.o) {
            str2 = "audio/eac3";
        } else if (i == a.q) {
            str2 = "audio/vnd.dts";
        } else if (i == a.r || i == a.s) {
            str2 = "audio/vnd.dts.hd";
        } else if (i == a.t) {
            str2 = "audio/vnd.dts.hd;profile=lbr";
        } else if (i == a.as) {
            str2 = "audio/3gpp";
        } else if (i == a.at) {
            str2 = "audio/amr-wb";
        } else if (i == a.k || i == a.l) {
            str2 = "audio/raw";
        }
        Object obj = null;
        int d = oVar.d();
        int i7 = g;
        int i8 = g2;
        String str3 = str2;
        while (d - i2 < i3) {
            oVar.b(d);
            int m = oVar.m();
            com.google.android.a.h.b.a(m > 0, "childAtomSize should be positive");
            i6 = oVar.m();
            if (i == a.i || i == a.Y) {
                Object obj2;
                g = -1;
                if (i6 == a.I) {
                    g = d;
                } else if (z && i6 == a.j) {
                    g = c(oVar, d, m);
                }
                if (g != -1) {
                    Pair d2 = d(oVar, g);
                    str3 = (String) d2.first;
                    obj2 = (byte[]) d2.second;
                    if ("audio/mp4a-latm".equals(str3)) {
                        Pair a = com.google.android.a.h.d.a(obj2);
                        i7 = ((Integer) a.first).intValue();
                        i8 = ((Integer) a.second).intValue();
                    }
                } else {
                    if (i6 == a.T) {
                        cVar.a[i5] = a(oVar, d, m);
                    }
                    obj2 = obj;
                }
                obj = obj2;
            } else if (i == a.m && i6 == a.n) {
                oVar.b(d + 8);
                cVar.b = com.google.android.a.h.a.a(oVar, Integer.toString(i4), j, str);
                return;
            } else if (i == a.o && i6 == a.p) {
                oVar.b(d + 8);
                cVar.b = com.google.android.a.h.a.b(oVar, Integer.toString(i4), j, str);
                return;
            } else if ((i == a.q || i == a.t || i == a.r || i == a.s) && i6 == a.u) {
                cVar.b = r.a(Integer.toString(i4), str3, -1, -1, j, i8, i7, null, str);
                return;
            }
            d += m;
        }
        if (str3 != null) {
            cVar.b = r.a(Integer.toString(i4), str3, -1, -1, j, i8, i7, obj == null ? null : Collections.singletonList(obj), str, "audio/raw".equals(str3) ? 2 : -1);
        }
    }

    private static void a(o oVar, int i, int i2, int i3, long j, int i4, c cVar, int i5) {
        oVar.b(i + 8);
        oVar.c(24);
        int g = oVar.g();
        int g2 = oVar.g();
        Object obj = null;
        float f = 1.0f;
        oVar.c(50);
        List list = null;
        String str = null;
        int d = oVar.d();
        while (d - i < i2) {
            oVar.b(d);
            int d2 = oVar.d();
            int m = oVar.m();
            if (m == 0 && oVar.d() - i == i2) {
                break;
            }
            Object obj2;
            com.google.android.a.h.b.a(m > 0, "childAtomSize should be positive");
            int m2 = oVar.m();
            if (m2 == a.G) {
                com.google.android.a.h.b.b(str == null);
                str = "video/avc";
                a a = a(oVar, d2);
                list = a.a;
                cVar.c = a.b;
                if (obj == null) {
                    f = a.c;
                }
                obj2 = obj;
            } else if (m2 == a.H) {
                com.google.android.a.h.b.b(str == null);
                Pair b = b(oVar, d2);
                List list2 = (List) b.first;
                cVar.c = ((Integer) b.second).intValue();
                list = list2;
                obj2 = obj;
                str = "video/hevc";
            } else if (m2 == a.g) {
                com.google.android.a.h.b.b(str == null);
                str = "video/3gpp";
                obj2 = obj;
            } else if (m2 == a.I) {
                com.google.android.a.h.b.b(str == null);
                Pair d3 = d(oVar, d2);
                String str2 = (String) d3.first;
                list = Collections.singletonList(d3.second);
                str = str2;
                obj2 = obj;
            } else if (m2 == a.T) {
                cVar.a[i5] = a(oVar, d2, m);
                obj2 = obj;
            } else if (m2 == a.ae) {
                f = c(oVar, d2);
                obj2 = 1;
            } else {
                obj2 = obj;
            }
            d += m;
            obj = obj2;
        }
        if (str != null) {
            cVar.b = r.a(Integer.toString(i3), str, -1, -1, j, g, g2, list, i4, f);
        }
    }

    private static Pair<List<byte[]>, Integer> b(o oVar, int i) {
        int g;
        int i2;
        int i3;
        oVar.b((i + 8) + 21);
        int f = oVar.f() & 3;
        int f2 = oVar.f();
        int d = oVar.d();
        int i4 = 0;
        int i5 = 0;
        while (i4 < f2) {
            oVar.c(1);
            g = oVar.g();
            i2 = i5;
            for (i3 = 0; i3 < g; i3++) {
                i5 = oVar.g();
                i2 += i5 + 4;
                oVar.c(i5);
            }
            i4++;
            i5 = i2;
        }
        oVar.b(d);
        byte[] bArr = new byte[i5];
        i4 = 0;
        i3 = 0;
        while (i4 < f2) {
            oVar.c(1);
            g = oVar.g();
            i2 = i3;
            for (i3 = 0; i3 < g; i3++) {
                int g2 = oVar.g();
                System.arraycopy(m.a, 0, bArr, i2, m.a.length);
                i2 += m.a.length;
                System.arraycopy(oVar.a, oVar.d(), bArr, i2, g2);
                i2 += g2;
                oVar.c(g2);
            }
            i4++;
            i3 = i2;
        }
        return Pair.create(i5 == 0 ? null : Collections.singletonList(bArr), Integer.valueOf(f + 1));
    }

    private static j b(o oVar, int i, int i2) {
        boolean z = true;
        int i3 = i + 8;
        while (i3 - i < i2) {
            oVar.b(i3);
            int m = oVar.m();
            if (oVar.m() == a.W) {
                oVar.c(4);
                i3 = oVar.m();
                if ((i3 >> 8) != 1) {
                    z = false;
                }
                i3 &= 255;
                byte[] bArr = new byte[16];
                oVar.a(bArr, 0, bArr.length);
                return new j(z, i3, bArr);
            }
            i3 += m;
        }
        return null;
    }

    private static i b(o oVar) {
        while (oVar.b() > 0) {
            int d = oVar.d() + oVar.m();
            if (oVar.m() == a.aA) {
                String str = null;
                String str2 = null;
                Object obj = null;
                while (oVar.d() < d) {
                    int m = oVar.m() - 12;
                    int m2 = oVar.m();
                    oVar.c(4);
                    if (m2 == a.ax) {
                        obj = oVar.d(m);
                    } else if (m2 == a.ay) {
                        str2 = oVar.d(m);
                    } else if (m2 == a.az) {
                        oVar.c(4);
                        str = oVar.d(m - 4);
                    } else {
                        oVar.c(m);
                    }
                }
                if (!(str2 == null || str == null || !"com.apple.iTunes".equals(obj))) {
                    return i.a(str2, str);
                }
            }
            oVar.b(d);
        }
        return null;
    }

    private static float c(o oVar, int i) {
        oVar.b(i + 8);
        return ((float) oVar.s()) / ((float) oVar.s());
    }

    private static int c(o oVar, int i, int i2) {
        int d = oVar.d();
        while (d - i < i2) {
            oVar.b(d);
            int m = oVar.m();
            com.google.android.a.h.b.a(m > 0, "childAtomSize should be positive");
            if (oVar.m() == a.I) {
                return d;
            }
            d += m;
        }
        return -1;
    }

    private static long c(o oVar) {
        int i = 8;
        oVar.b(8);
        if (a.a(oVar.m()) != 0) {
            i = 16;
        }
        oVar.c(i);
        return oVar.k();
    }

    private static Pair<String, byte[]> d(o oVar, int i) {
        Object obj = null;
        oVar.b((i + 8) + 4);
        oVar.c(1);
        g(oVar);
        oVar.c(2);
        int f = oVar.f();
        if ((f & 128) != 0) {
            oVar.c(2);
        }
        if ((f & 64) != 0) {
            oVar.c(oVar.g());
        }
        if ((f & 32) != 0) {
            oVar.c(2);
        }
        oVar.c(1);
        g(oVar);
        switch (oVar.f()) {
            case 32:
                obj = "video/mp4v-es";
                break;
            case 33:
                obj = "video/avc";
                break;
            case 35:
                obj = "video/hevc";
                break;
            case 64:
            case 102:
            case 103:
            case 104:
                obj = "audio/mp4a-latm";
                break;
            case 107:
                return Pair.create("audio/mpeg", null);
            case 165:
                obj = "audio/ac3";
                break;
            case 166:
                obj = "audio/eac3";
                break;
            case 169:
            case 172:
                return Pair.create("audio/vnd.dts", null);
            case 170:
            case 171:
                return Pair.create("audio/vnd.dts.hd", null);
        }
        oVar.c(12);
        oVar.c(1);
        f = g(oVar);
        byte[] bArr = new byte[f];
        oVar.a(bArr, 0, f);
        return Pair.create(obj, bArr);
    }

    private static d d(o oVar) {
        int i;
        long j;
        int i2 = 8;
        oVar.b(8);
        int a = a.a(oVar.m());
        oVar.c(a == 0 ? 8 : 16);
        int m = oVar.m();
        oVar.c(4);
        Object obj = 1;
        int d = oVar.d();
        if (a == 0) {
            i2 = 4;
        }
        for (i = 0; i < i2; i++) {
            if (oVar.a[d + i] != (byte) -1) {
                obj = null;
                break;
            }
        }
        if (obj != null) {
            oVar.c(i2);
            j = -1;
        } else {
            j = a == 0 ? oVar.k() : oVar.u();
        }
        oVar.c(16);
        int m2 = oVar.m();
        i = oVar.m();
        oVar.c(4);
        int m3 = oVar.m();
        a = oVar.m();
        m2 = (m2 == 0 && i == 65536 && m3 == (-65536) && a == 0) ? 90 : (m2 == 0 && i == (-65536) && m3 == 65536 && a == 0) ? 270 : (m2 == (-65536) && i == 0 && m3 == 0 && a == (-65536)) ? 180 : 0;
        return new d(m, j, m2);
    }

    private static int e(o oVar) {
        oVar.b(16);
        return oVar.m();
    }

    private static Pair<Long, String> f(o oVar) {
        int i = 8;
        oVar.b(8);
        int a = a.a(oVar.m());
        oVar.c(a == 0 ? 8 : 16);
        long k = oVar.k();
        if (a == 0) {
            i = 4;
        }
        oVar.c(i);
        int g = oVar.g();
        return Pair.create(Long.valueOf(k), "" + ((char) (((g >> 10) & 31) + 96)) + ((char) (((g >> 5) & 31) + 96)) + ((char) ((g & 31) + 96)));
    }

    private static int g(o oVar) {
        int f = oVar.f();
        int i = f & TransportMediator.KEYCODE_MEDIA_PAUSE;
        while ((f & 128) == 128) {
            f = oVar.f();
            i = (i << 7) | (f & TransportMediator.KEYCODE_MEDIA_PAUSE);
        }
        return i;
    }
}
