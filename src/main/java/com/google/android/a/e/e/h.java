package com.google.android.a.e.e;

import android.util.Log;
import com.google.android.a.e.m;
import com.google.android.a.h.n;
import com.google.android.a.h.o;
import com.google.android.a.r;
import java.util.Collections;

final class h extends e {
    private boolean b;
    private final n c;
    private final boolean[] d = new boolean[3];
    private final k e = new k(32, 128);
    private final k f = new k(33, 128);
    private final k g = new k(34, 128);
    private final k h = new k(39, 128);
    private final k i = new k(40, 128);
    private final a j;
    private long k;
    private long l;
    private final o m;

    private static final class a {
        private final m a;
        private long b;
        private boolean c;
        private int d;
        private long e;
        private boolean f;
        private boolean g;
        private boolean h;
        private long i;
        private long j;
        private boolean k;

        public a(m mVar) {
            this.a = mVar;
        }

        private void a(int i) {
            this.a.a(this.j, this.k ? 1 : 0, (int) (this.b - this.i), i, null);
        }

        public void a() {
            this.f = false;
            this.g = false;
            this.h = false;
        }

        public void a(long j, int i) {
            if (this.g) {
                if (this.h) {
                    a(((int) (j - this.b)) + i);
                }
                this.i = this.b;
                this.j = this.e;
                this.h = true;
                this.k = this.c;
            }
        }

        public void a(long j, int i, int i2, long j2) {
            boolean z = false;
            this.g = false;
            this.e = j2;
            this.d = 0;
            this.b = j;
            if (i2 >= 32 && this.h) {
                a(i);
                this.h = false;
            }
            boolean z2 = i2 >= 16 && i2 <= 21;
            this.c = z2;
            if (this.c || i2 <= 9) {
                z = true;
            }
            this.f = z;
        }

        public void a(byte[] bArr, int i, int i2) {
            if (this.f) {
                int i3 = (i + 2) - this.d;
                if (i3 < i2) {
                    this.g = (bArr[i3] & 128) != 0;
                    this.f = false;
                    return;
                }
                this.d += i2 - i;
            }
        }
    }

    public h(m mVar, n nVar) {
        super(mVar);
        this.c = nVar;
        this.j = new a(mVar);
        this.m = new o();
    }

    private static r a(k kVar, k kVar2, k kVar3) {
        int i;
        float f;
        byte[] bArr = new byte[((kVar.b + kVar2.b) + kVar3.b)];
        System.arraycopy(kVar.a, 0, bArr, 0, kVar.b);
        System.arraycopy(kVar2.a, 0, bArr, kVar.b, kVar2.b);
        System.arraycopy(kVar3.a, 0, bArr, kVar.b + kVar2.b, kVar3.b);
        com.google.android.a.h.m.a(kVar2.a, kVar2.b);
        n nVar = new n(kVar2.a);
        nVar.b(44);
        int c = nVar.c(3);
        nVar.b(1);
        nVar.b(88);
        nVar.b(8);
        int i2 = 0;
        for (i = 0; i < c; i++) {
            if (nVar.b()) {
                i2 += 89;
            }
            if (nVar.b()) {
                i2 += 8;
            }
        }
        nVar.b(i2);
        if (c > 0) {
            nVar.b((8 - c) * 2);
        }
        nVar.d();
        int d = nVar.d();
        if (d == 3) {
            nVar.b(1);
        }
        int d2 = nVar.d();
        int d3 = nVar.d();
        if (nVar.b()) {
            int d4 = nVar.d();
            int d5 = nVar.d();
            int d6 = nVar.d();
            int d7 = nVar.d();
            i = (d == 1 || d == 2) ? 2 : 1;
            d2 -= i * (d4 + d5);
            d3 -= (d == 1 ? 2 : 1) * (d6 + d7);
        }
        nVar.d();
        nVar.d();
        i = nVar.d();
        i2 = nVar.b() ? 0 : c;
        while (i2 <= c) {
            nVar.d();
            nVar.d();
            nVar.d();
            i2++;
        }
        nVar.d();
        nVar.d();
        nVar.d();
        nVar.d();
        nVar.d();
        nVar.d();
        if (nVar.b() && nVar.b()) {
            a(nVar);
        }
        nVar.b(2);
        if (nVar.b()) {
            nVar.b(8);
            nVar.d();
            nVar.d();
            nVar.b(1);
        }
        b(nVar);
        if (nVar.b()) {
            for (i2 = 0; i2 < nVar.d(); i2++) {
                nVar.b((i + 4) + 1);
            }
        }
        nVar.b(2);
        float f2 = 1.0f;
        if (nVar.b() && nVar.b()) {
            c = nVar.c(8);
            if (c == 255) {
                c = nVar.c(16);
                i = nVar.c(16);
                if (!(c == 0 || i == 0)) {
                    f2 = ((float) c) / ((float) i);
                }
                f = f2;
            } else if (c < com.google.android.a.h.m.b.length) {
                f = com.google.android.a.h.m.b[c];
            } else {
                Log.w("H265Reader", "Unexpected aspect_ratio_idc value: " + c);
            }
            return r.a(null, "video/hevc", -1, -1, -1, d2, d3, Collections.singletonList(bArr), -1, f);
        }
        f = 1.0f;
        return r.a(null, "video/hevc", -1, -1, -1, d2, d3, Collections.singletonList(bArr), -1, f);
    }

    private void a(long j, int i, int i2, long j2) {
        if (!this.b) {
            this.e.a(i2);
            this.f.a(i2);
            this.g.a(i2);
        }
        this.h.a(i2);
        this.i.a(i2);
        this.j.a(j, i, i2, j2);
    }

    private static void a(n nVar) {
        int i = 0;
        while (i < 4) {
            for (int i2 = 0; i2 < 6; i2 = (i == 3 ? 3 : 1) + i2) {
                if (nVar.b()) {
                    int min = Math.min(64, 1 << ((i << 1) + 4));
                    if (i > 1) {
                        nVar.e();
                    }
                    for (int i3 = 0; i3 < min; i3++) {
                        nVar.e();
                    }
                } else {
                    nVar.d();
                }
            }
            i++;
        }
    }

    private void a(byte[] bArr, int i, int i2) {
        if (this.b) {
            this.j.a(bArr, i, i2);
        } else {
            this.e.a(bArr, i, i2);
            this.f.a(bArr, i, i2);
            this.g.a(bArr, i, i2);
        }
        this.h.a(bArr, i, i2);
        this.i.a(bArr, i, i2);
    }

    private void b(long j, int i, int i2, long j2) {
        if (this.b) {
            this.j.a(j, i);
        } else {
            this.e.b(i2);
            this.f.b(i2);
            this.g.b(i2);
            if (this.e.b() && this.f.b() && this.g.b()) {
                this.a.a(a(this.e, this.f, this.g));
                this.b = true;
            }
        }
        if (this.h.b(i2)) {
            this.m.a(this.h.a, com.google.android.a.h.m.a(this.h.a, this.h.b));
            this.m.c(5);
            this.c.a(j2, this.m);
        }
        if (this.i.b(i2)) {
            this.m.a(this.i.a, com.google.android.a.h.m.a(this.i.a, this.i.b));
            this.m.c(5);
            this.c.a(j2, this.m);
        }
    }

    private static void b(n nVar) {
        int d = nVar.d();
        int i = 0;
        int i2 = 0;
        boolean z = false;
        while (i < d) {
            boolean b = i != 0 ? nVar.b() : z;
            int i3;
            if (b) {
                nVar.b(1);
                nVar.d();
                for (i3 = 0; i3 <= i2; i3++) {
                    if (nVar.b()) {
                        nVar.b(1);
                    }
                }
            } else {
                int d2 = nVar.d();
                int d3 = nVar.d();
                i2 = d2 + d3;
                for (i3 = 0; i3 < d2; i3++) {
                    nVar.d();
                    nVar.b(1);
                }
                for (i3 = 0; i3 < d3; i3++) {
                    nVar.d();
                    nVar.b(1);
                }
            }
            i++;
            z = b;
        }
    }

    public void a() {
        com.google.android.a.h.m.a(this.d);
        this.e.a();
        this.f.a();
        this.g.a();
        this.h.a();
        this.i.a();
        this.j.a();
        this.k = 0;
    }

    public void a(long j, boolean z) {
        this.l = j;
    }

    public void a(o oVar) {
        while (oVar.b() > 0) {
            int d = oVar.d();
            int c = oVar.c();
            byte[] bArr = oVar.a;
            this.k += (long) oVar.b();
            this.a.a(oVar, oVar.b());
            while (d < c) {
                int a = com.google.android.a.h.m.a(bArr, d, c, this.d);
                if (a == c) {
                    a(bArr, d, c);
                    return;
                }
                int c2 = com.google.android.a.h.m.c(bArr, a);
                int i = a - d;
                if (i > 0) {
                    a(bArr, d, a);
                }
                int i2 = c - a;
                long j = this.k - ((long) i2);
                b(j, i2, i < 0 ? -i : 0, this.l);
                a(j, i2, c2, this.l);
                d = a + 3;
            }
        }
    }

    public void b() {
    }
}
