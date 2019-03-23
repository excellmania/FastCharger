package com.google.android.a.e.c;

import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.a.e.f;
import com.google.android.a.e.g;
import com.google.android.a.e.j;
import com.google.android.a.e.l;
import com.google.android.a.e.m;
import com.google.android.a.h.b;
import com.google.android.a.h.o;
import com.google.android.a.h.x;
import com.google.android.a.t;
import java.util.Arrays;
import java.util.List;
import java.util.Stack;

public final class e implements com.google.android.a.e.e {
    private static final byte[] a = new byte[]{(byte) -94, (byte) 57, (byte) 79, (byte) 82, (byte) 90, (byte) -101, (byte) 79, (byte) 20, (byte) -94, (byte) 68, (byte) 108, (byte) 66, (byte) 124, (byte) 100, (byte) -115, (byte) -12};
    private final int b;
    private final i c;
    private final SparseArray<a> d;
    private final o e;
    private final o f;
    private final o g;
    private final o h;
    private final byte[] i;
    private final Stack<a> j;
    private int k;
    private int l;
    private long m;
    private int n;
    private o o;
    private long p;
    private a q;
    private int r;
    private int s;
    private int t;
    private g u;
    private boolean v;

    private static final class a {
        public final k a = new k();
        public final m b;
        public i c;
        public c d;
        public int e;

        public a(m mVar) {
            this.b = mVar;
        }

        public void a(i iVar, c cVar) {
            this.c = (i) b.a((Object) iVar);
            this.d = (c) b.a((Object) cVar);
            this.b.a(iVar.k);
            this.a.a();
            this.e = 0;
        }
    }

    public e() {
        this(0);
    }

    public e(int i) {
        this(i, null);
    }

    public e(int i, i iVar) {
        this.c = iVar;
        this.b = (iVar != null ? 4 : 0) | i;
        this.h = new o(16);
        this.e = new o(com.google.android.a.h.m.a);
        this.f = new o(4);
        this.g = new o(1);
        this.i = new byte[16];
        this.j = new Stack();
        this.d = new SparseArray();
        a();
    }

    private int a(a aVar) {
        k kVar = aVar.a;
        o oVar = kVar.l;
        int i = aVar.c.l[kVar.a.a].b;
        boolean z = kVar.j[aVar.e];
        this.g.a[0] = (byte) ((z ? 128 : 0) | i);
        this.g.b(0);
        m mVar = aVar.b;
        mVar.a(this.g, 1);
        mVar.a(oVar, i);
        if (!z) {
            return i + 1;
        }
        int g = oVar.g();
        oVar.c(-2);
        g = (g * 6) + 2;
        mVar.a(oVar, g);
        return (i + 1) + g;
    }

    private static Pair<Integer, c> a(o oVar) {
        oVar.b(12);
        return Pair.create(Integer.valueOf(oVar.m()), new c(oVar.s() - 1, oVar.s(), oVar.s(), oVar.m()));
    }

    private static com.google.android.a.e.a a(o oVar, long j) {
        long k;
        long k2;
        oVar.b(8);
        int a = a.a(oVar.m());
        oVar.c(4);
        long k3 = oVar.k();
        if (a == 0) {
            k = oVar.k() + j;
            k2 = oVar.k();
        } else {
            k = oVar.u() + j;
            k2 = oVar.u();
        }
        oVar.c(2);
        int g = oVar.g();
        int[] iArr = new int[g];
        long[] jArr = new long[g];
        long[] jArr2 = new long[g];
        long[] jArr3 = new long[g];
        long a2 = x.a(k2, 1000000, k3);
        int i = 0;
        long j2 = k;
        while (true) {
            int i2 = i;
            long j3 = k2;
            k2 = a2;
            if (i2 >= g) {
                return new com.google.android.a.e.a(iArr, jArr, jArr2, jArr3);
            }
            int m = oVar.m();
            if ((Integer.MIN_VALUE & m) != 0) {
                throw new t("Unhandled indirect reference");
            }
            a2 = oVar.k();
            iArr[i2] = m & ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            jArr[i2] = j2;
            jArr3[i2] = k2;
            k2 = j3 + a2;
            a2 = x.a(k2, 1000000, k3);
            jArr2[i2] = a2 - jArr3[i2];
            oVar.c(4);
            j2 += (long) iArr[i2];
            i = i2 + 1;
        }
    }

    private static a a(SparseArray<a> sparseArray) {
        a aVar = null;
        long j = Long.MAX_VALUE;
        int size = sparseArray.size();
        int i = 0;
        while (i < size) {
            a aVar2;
            long j2;
            a aVar3 = (a) sparseArray.valueAt(i);
            long j3;
            if (aVar3.e == aVar3.a.d) {
                j3 = j;
                aVar2 = aVar;
                j2 = j3;
            } else {
                long j4 = aVar3.a.b;
                if (j4 < j) {
                    aVar2 = aVar3;
                    j2 = j4;
                } else {
                    j3 = j;
                    aVar2 = aVar;
                    j2 = j3;
                }
            }
            i++;
            aVar = aVar2;
            j = j2;
        }
        return aVar;
    }

    private static a a(o oVar, SparseArray<a> sparseArray, int i) {
        oVar.b(8);
        int b = a.b(oVar.m());
        int m = oVar.m();
        if ((i & 4) != 0) {
            m = 0;
        }
        a aVar = (a) sparseArray.get(m);
        if (aVar == null) {
            return null;
        }
        if ((b & 1) != 0) {
            long u = oVar.u();
            aVar.a.b = u;
            aVar.a.c = u;
        }
        c cVar = aVar.d;
        aVar.a.a = new c((b & 2) != 0 ? oVar.s() - 1 : cVar.a, (b & 8) != 0 ? oVar.s() : cVar.b, (b & 16) != 0 ? oVar.s() : cVar.c, (b & 32) != 0 ? oVar.s() : cVar.d);
        return aVar;
    }

    private void a() {
        this.k = 0;
        this.n = 0;
    }

    private void a(long j) {
        while (!this.j.isEmpty() && ((a) this.j.peek()).aC == j) {
            a((a) this.j.pop());
        }
        a();
    }

    private void a(a aVar) {
        if (aVar.aB == a.A) {
            b(aVar);
        } else if (aVar.aB == a.J) {
            c(aVar);
        } else if (!this.j.isEmpty()) {
            ((a) this.j.peek()).a(aVar);
        }
    }

    private static void a(a aVar, SparseArray<a> sparseArray, int i, byte[] bArr) {
        int size = aVar.aE.size();
        for (int i2 = 0; i2 < size; i2++) {
            a aVar2 = (a) aVar.aE.get(i2);
            if (aVar2.aB == a.K) {
                b(aVar2, sparseArray, i, bArr);
            }
        }
    }

    private void a(b bVar, long j) {
        if (!this.j.isEmpty()) {
            ((a) this.j.peek()).a(bVar);
        } else if (bVar.aB == a.z) {
            this.u.a(a(bVar.aC, j));
            this.v = true;
        }
    }

    private static void a(a aVar, long j, int i, o oVar) {
        oVar.b(8);
        int b = a.b(oVar.m());
        i iVar = aVar.c;
        k kVar = aVar.a;
        c cVar = kVar.a;
        int s = oVar.s();
        if ((b & 1) != 0) {
            kVar.b += (long) oVar.m();
        }
        Object obj = (b & 4) != 0 ? 1 : null;
        int i2 = cVar.d;
        if (obj != null) {
            i2 = oVar.s();
        }
        Object obj2 = (b & 256) != 0 ? 1 : null;
        Object obj3 = (b & 512) != 0 ? 1 : null;
        Object obj4 = (b & 1024) != 0 ? 1 : null;
        Object obj5 = (b & 2048) != 0 ? 1 : null;
        long a = (iVar.m != null && iVar.m.length == 1 && iVar.m[0] == 0) ? x.a(iVar.n[0], 1000, iVar.h) : 0;
        kVar.a(s);
        int[] iArr = kVar.e;
        int[] iArr2 = kVar.f;
        long[] jArr = kVar.g;
        boolean[] zArr = kVar.h;
        long j2 = iVar.h;
        Object obj6 = (iVar.g != i.a || (i & 1) == 0) ? null : 1;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            long j3 = j;
            if (i4 < s) {
                int s2 = obj2 != null ? oVar.s() : cVar.b;
                int s3 = obj3 != null ? oVar.s() : cVar.c;
                int m = (i4 != 0 || obj == null) ? obj4 != null ? oVar.m() : cVar.d : i2;
                if (obj5 != null) {
                    iArr2[i4] = (int) (((long) (oVar.m() * 1000)) / j2);
                } else {
                    iArr2[i4] = 0;
                }
                jArr[i4] = x.a(j3, 1000, j2) - a;
                iArr[i4] = s3;
                boolean z = ((m >> 16) & 1) == 0 && (obj6 == null || i4 == 0);
                zArr[i4] = z;
                j = j3 + ((long) s2);
                i3 = i4 + 1;
            } else {
                return;
            }
        }
    }

    private static void a(j jVar, o oVar, k kVar) {
        boolean z = true;
        int i = jVar.b;
        oVar.b(8);
        if ((a.b(oVar.m()) & 1) == 1) {
            oVar.c(8);
        }
        int f = oVar.f();
        int s = oVar.s();
        if (s != kVar.d) {
            throw new t("Length mismatch: " + s + ", " + kVar.d);
        }
        if (f == 0) {
            boolean[] zArr = kVar.j;
            int i2 = 0;
            f = 0;
            while (i2 < s) {
                int f2 = oVar.f();
                int i3 = f + f2;
                zArr[i2] = f2 > i;
                i2++;
                f = i3;
            }
        } else {
            if (f <= i) {
                z = false;
            }
            f = (f * s) + 0;
            Arrays.fill(kVar.j, 0, s, z);
        }
        kVar.b(f);
    }

    private static void a(o oVar, int i, k kVar) {
        oVar.b(i + 8);
        int b = a.b(oVar.m());
        if ((b & 1) != 0) {
            throw new t("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (b & 2) != 0;
        int s = oVar.s();
        if (s != kVar.d) {
            throw new t("Length mismatch: " + s + ", " + kVar.d);
        }
        Arrays.fill(kVar.j, 0, s, z);
        kVar.b(oVar.b());
        kVar.a(oVar);
    }

    private static void a(o oVar, k kVar) {
        oVar.b(8);
        int m = oVar.m();
        if ((a.b(m) & 1) == 1) {
            oVar.c(8);
        }
        int s = oVar.s();
        if (s != 1) {
            throw new t("Unexpected saio entry count: " + s);
        }
        m = a.a(m);
        kVar.c = (m == 0 ? oVar.k() : oVar.u()) + kVar.c;
    }

    private static void a(o oVar, k kVar, byte[] bArr) {
        oVar.b(8);
        oVar.a(bArr, 0, 16);
        if (Arrays.equals(bArr, a)) {
            a(oVar, 16, kVar);
        }
    }

    private static boolean a(int i) {
        return i == a.Q || i == a.P || i == a.B || i == a.z || i == a.R || i == a.v || i == a.w || i == a.M || i == a.x || i == a.y || i == a.S || i == a.aa || i == a.ab || i == a.ad || i == a.ac || i == a.O;
    }

    private static long b(o oVar) {
        oVar.b(8);
        return a.a(oVar.m()) == 1 ? oVar.u() : oVar.k();
    }

    private void b(a aVar) {
        b bVar;
        int i;
        i a;
        boolean z = true;
        b.b(this.c == null, "Unexpected moov box.");
        List list = aVar.aD;
        int size = list.size();
        com.google.android.a.d.a aVar2 = null;
        for (int i2 = 0; i2 < size; i2++) {
            bVar = (b) list.get(i2);
            if (bVar.aB == a.S) {
                if (aVar2 == null) {
                    aVar2 = new com.google.android.a.d.a.a();
                }
                byte[] bArr = bVar.aC.a;
                if (g.a(bArr) == null) {
                    Log.w("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    aVar2.a(g.a(bArr), new com.google.android.a.d.a.b("video/mp4", bArr));
                }
            }
        }
        if (aVar2 != null) {
            this.u.a(aVar2);
        }
        a e = aVar.e(a.L);
        SparseArray sparseArray = new SparseArray();
        size = e.aD.size();
        for (i = 0; i < size; i++) {
            bVar = (b) e.aD.get(i);
            if (bVar.aB == a.x) {
                Pair a2 = a(bVar.aC);
                sparseArray.put(((Integer) a2.first).intValue(), a2.second);
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        size = aVar.aE.size();
        for (i = 0; i < size; i++) {
            a aVar3 = (a) aVar.aE.get(i);
            if (aVar3.aB == a.C) {
                a = b.a(aVar3, aVar.d(a.B), false);
                if (a != null) {
                    sparseArray2.put(a.f, a);
                }
            }
        }
        size = sparseArray2.size();
        if (this.d.size() == 0) {
            for (int i3 = 0; i3 < size; i3++) {
                this.d.put(((i) sparseArray2.valueAt(i3)).f, new a(this.u.a_(i3)));
            }
            this.u.a();
        } else {
            if (this.d.size() != size) {
                z = false;
            }
            b.b(z);
        }
        for (i = 0; i < size; i++) {
            a = (i) sparseArray2.valueAt(i);
            ((a) this.d.get(a.f)).a(a, (c) sparseArray.get(a.f));
        }
    }

    private static void b(a aVar, SparseArray<a> sparseArray, int i, byte[] bArr) {
        if (aVar.f(a.y) != 1) {
            throw new t("Trun count in traf != 1 (unsupported).");
        }
        a a = a(aVar.d(a.w).aC, (SparseArray) sparseArray, i);
        if (a != null) {
            k kVar = a.a;
            a.e = 0;
            kVar.a();
            long b = (aVar.d(a.v) == null || (i & 2) != 0) ? 0 : b(aVar.d(a.v).aC);
            a(a, b, i, aVar.d(a.y).aC);
            b d = aVar.d(a.aa);
            if (d != null) {
                a(a.c.l[kVar.a.a], d.aC, kVar);
            }
            d = aVar.d(a.ab);
            if (d != null) {
                a(d.aC, kVar);
            }
            d = aVar.d(a.ad);
            if (d != null) {
                b(d.aC, kVar);
            }
            int size = aVar.aD.size();
            for (int i2 = 0; i2 < size; i2++) {
                d = (b) aVar.aD.get(i2);
                if (d.aB == a.ac) {
                    a(d.aC, kVar, bArr);
                }
            }
        }
    }

    private static void b(o oVar, k kVar) {
        a(oVar, 0, kVar);
    }

    private static boolean b(int i) {
        return i == a.A || i == a.C || i == a.D || i == a.E || i == a.F || i == a.J || i == a.K || i == a.L || i == a.N;
    }

    private boolean b(f fVar) {
        if (this.n == 0) {
            if (!fVar.a(this.h.a, 0, 8, true)) {
                return false;
            }
            this.n = 8;
            this.h.b(0);
            this.m = this.h.k();
            this.l = this.h.m();
        }
        if (this.m == 1) {
            fVar.b(this.h.a, 8, 8);
            this.n += 8;
            this.m = this.h.u();
        }
        long c = fVar.c() - ((long) this.n);
        if (this.l == a.J) {
            int size = this.d.size();
            for (int i = 0; i < size; i++) {
                k kVar = ((a) this.d.valueAt(i)).a;
                kVar.c = c;
                kVar.b = c;
            }
        }
        if (this.l == a.h) {
            this.q = null;
            this.p = this.m + c;
            if (!this.v) {
                this.u.a(l.f);
                this.v = true;
            }
            this.k = 2;
            return true;
        }
        if (b(this.l)) {
            long c2 = (fVar.c() + this.m) - 8;
            this.j.add(new a(this.l, c2));
            if (this.m == ((long) this.n)) {
                a(c2);
            } else {
                a();
            }
        } else if (a(this.l)) {
            if (this.n != 8) {
                throw new t("Leaf atom defines extended atom size (unsupported).");
            } else if (this.m > 2147483647L) {
                throw new t("Leaf atom with length > 2147483647 (unsupported).");
            } else {
                this.o = new o((int) this.m);
                System.arraycopy(this.h.a, 0, this.o.a, 0, 8);
                this.k = 1;
            }
        } else if (this.m > 2147483647L) {
            throw new t("Skipping atom with length > 2147483647 (unsupported).");
        } else {
            this.o = null;
            this.k = 1;
        }
        return true;
    }

    private void c(a aVar) {
        a(aVar, this.d, this.b, this.i);
    }

    private void c(f fVar) {
        int i = ((int) this.m) - this.n;
        if (this.o != null) {
            fVar.b(this.o.a, 8, i);
            a(new b(this.l, this.o), fVar.c());
        } else {
            fVar.b(i);
        }
        a(fVar.c());
    }

    private void d(f fVar) {
        a aVar = null;
        long j = Long.MAX_VALUE;
        int size = this.d.size();
        int i = 0;
        while (i < size) {
            long j2;
            a aVar2;
            k kVar = ((a) this.d.valueAt(i)).a;
            if (!kVar.m || kVar.c >= j) {
                j2 = j;
                aVar2 = aVar;
            } else {
                j2 = kVar.c;
                aVar2 = (a) this.d.valueAt(i);
            }
            i++;
            aVar = aVar2;
            j = j2;
        }
        if (aVar == null) {
            this.k = 3;
            return;
        }
        int c = (int) (j - fVar.c());
        if (c < 0) {
            throw new t("Offset to encryption data was negative.");
        }
        fVar.b(c);
        aVar.a.a(fVar);
    }

    private boolean e(f fVar) {
        int i = 2;
        if (this.k == 3) {
            if (this.q == null) {
                this.q = a(this.d);
                if (this.q == null) {
                    i = (int) (this.p - fVar.c());
                    if (i < 0) {
                        throw new t("Offset to end of mdat was negative.");
                    }
                    fVar.b(i);
                    a();
                    return false;
                }
                int c = (int) (this.q.a.b - fVar.c());
                if (c < 0) {
                    throw new t("Offset to sample data was negative.");
                }
                fVar.b(c);
            }
            this.r = this.q.a.e[this.q.e];
            if (this.q.a.i) {
                this.s = a(this.q);
                this.r += this.s;
            } else {
                this.s = 0;
            }
            this.k = 4;
            this.t = 0;
        }
        k kVar = this.q.a;
        i iVar = this.q.c;
        m mVar = this.q.b;
        int i2 = this.q.e;
        if (iVar.o != -1) {
            byte[] bArr = this.f.a;
            bArr[0] = (byte) 0;
            bArr[1] = (byte) 0;
            bArr[2] = (byte) 0;
            int i3 = iVar.o;
            int i4 = 4 - iVar.o;
            while (this.s < this.r) {
                if (this.t == 0) {
                    fVar.b(this.f.a, i4, i3);
                    this.f.b(0);
                    this.t = this.f.s();
                    this.e.b(0);
                    mVar.a(this.e, 4);
                    this.s += 4;
                    this.r += i4;
                } else {
                    int a = mVar.a(fVar, this.t, false);
                    this.s += a;
                    this.t -= a;
                }
            }
        } else {
            while (this.s < this.r) {
                this.s = mVar.a(fVar, this.r - this.s, false) + this.s;
            }
        }
        long c2 = kVar.c(i2) * 1000;
        if (!kVar.i) {
            i = 0;
        }
        mVar.a(c2, (kVar.h[i2] ? 1 : 0) | i, this.r, 0, kVar.i ? iVar.l[kVar.a.a].c : null);
        a aVar = this.q;
        aVar.e++;
        if (this.q.e == kVar.d) {
            this.q = null;
        }
        this.k = 3;
        return true;
    }

    public int a(f fVar, j jVar) {
        while (true) {
            switch (this.k) {
                case 0:
                    if (b(fVar)) {
                        break;
                    }
                    return -1;
                case 1:
                    c(fVar);
                    break;
                case 2:
                    d(fVar);
                    break;
                default:
                    if (!e(fVar)) {
                        break;
                    }
                    return 0;
            }
        }
    }

    public void a(g gVar) {
        this.u = gVar;
        if (this.c != null) {
            a aVar = new a(gVar.a_(0));
            aVar.a(this.c, new c(0, 0, 0, 0));
            this.d.put(0, aVar);
            this.u.a();
        }
    }

    public boolean a(f fVar) {
        return h.a(fVar);
    }

    public void b() {
        this.j.clear();
        a();
    }

    public void c() {
    }
}
