package com.google.android.a.e.e;

import android.util.SparseArray;
import com.google.android.a.e.m;
import com.google.android.a.h.m.b;
import com.google.android.a.h.n;
import com.google.android.a.h.o;
import com.google.android.a.r;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class g extends e {
    private boolean b;
    private final n c;
    private final boolean[] d = new boolean[3];
    private final a e;
    private final k f;
    private final k g;
    private final k h;
    private long i;
    private long j;
    private final o k;

    private static final class a {
        private final m a;
        private final boolean b;
        private final boolean c;
        private final n d = new n();
        private final SparseArray<b> e = new SparseArray();
        private final SparseArray<com.google.android.a.h.m.a> f = new SparseArray();
        private byte[] g = new byte[128];
        private int h;
        private int i;
        private long j;
        private boolean k;
        private long l;
        private a m = new a();
        private a n = new a();
        private boolean o;
        private long p;
        private long q;
        private boolean r;

        private static final class a {
            private boolean a;
            private boolean b;
            private b c;
            private int d;
            private int e;
            private int f;
            private int g;
            private boolean h;
            private boolean i;
            private boolean j;
            private boolean k;
            private int l;
            private int m;
            private int n;
            private int o;
            private int p;

            private a() {
            }

            private boolean a(a aVar) {
                if (this.a) {
                    if (!aVar.a || this.f != aVar.f || this.g != aVar.g || this.h != aVar.h) {
                        return true;
                    }
                    if (this.i && aVar.i && this.j != aVar.j) {
                        return true;
                    }
                    if (this.d != aVar.d && (this.d == 0 || aVar.d == 0)) {
                        return true;
                    }
                    if (this.c.h == 0 && aVar.c.h == 0 && (this.m != aVar.m || this.n != aVar.n)) {
                        return true;
                    }
                    if ((this.c.h == 1 && aVar.c.h == 1 && (this.o != aVar.o || this.p != aVar.p)) || this.k != aVar.k) {
                        return true;
                    }
                    if (this.k && aVar.k && this.l != aVar.l) {
                        return true;
                    }
                }
                return false;
            }

            public void a() {
                this.b = false;
                this.a = false;
            }

            public void a(int i) {
                this.e = i;
                this.b = true;
            }

            public void a(b bVar, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5, int i6, int i7, int i8, int i9) {
                this.c = bVar;
                this.d = i;
                this.e = i2;
                this.f = i3;
                this.g = i4;
                this.h = z;
                this.i = z2;
                this.j = z3;
                this.k = z4;
                this.l = i5;
                this.m = i6;
                this.n = i7;
                this.o = i8;
                this.p = i9;
                this.a = true;
                this.b = true;
            }

            public boolean b() {
                return this.b && (this.e == 7 || this.e == 2);
            }
        }

        public a(m mVar, boolean z, boolean z2) {
            this.a = mVar;
            this.b = z;
            this.c = z2;
            b();
        }

        private void a(int i) {
            this.a.a(this.q, this.r ? 1 : 0, (int) (this.j - this.p), i, null);
        }

        public void a(long j, int i) {
            int i2 = 0;
            if (this.i == 9 || (this.c && this.n.a(this.m))) {
                if (this.o) {
                    a(((int) (j - this.j)) + i);
                }
                this.p = this.j;
                this.q = this.l;
                this.r = false;
                this.o = true;
            }
            boolean z = this.r;
            if (this.i == 5 || (this.b && this.i == 1 && this.n.b())) {
                i2 = 1;
            }
            this.r = i2 | z;
        }

        public void a(long j, int i, long j2) {
            this.i = i;
            this.l = j2;
            this.j = j;
            if (!(this.b && this.i == 1)) {
                if (!this.c) {
                    return;
                }
                if (!(this.i == 5 || this.i == 1 || this.i == 2)) {
                    return;
                }
            }
            a aVar = this.m;
            this.m = this.n;
            this.n = aVar;
            this.n.a();
            this.h = 0;
            this.k = true;
        }

        public void a(com.google.android.a.h.m.a aVar) {
            this.f.append(aVar.a, aVar);
        }

        public void a(b bVar) {
            this.e.append(bVar.a, bVar);
        }

        public void a(byte[] bArr, int i, int i2) {
            if (this.k) {
                int i3 = i2 - i;
                if (this.g.length < this.h + i3) {
                    this.g = Arrays.copyOf(this.g, (this.h + i3) * 2);
                }
                System.arraycopy(bArr, i, this.g, this.h, i3);
                this.h = i3 + this.h;
                this.d.a(this.g, this.h);
                if (this.d.a() >= 8) {
                    this.d.b(1);
                    int c = this.d.c(2);
                    this.d.b(5);
                    if (this.d.c()) {
                        this.d.d();
                        if (this.d.c()) {
                            int d = this.d.d();
                            if (!this.c) {
                                this.k = false;
                                this.n.a(d);
                            } else if (this.d.c()) {
                                int d2 = this.d.d();
                                if (this.f.indexOfKey(d2) < 0) {
                                    this.k = false;
                                    return;
                                }
                                com.google.android.a.h.m.a aVar = (com.google.android.a.h.m.a) this.f.get(d2);
                                b bVar = (b) this.e.get(aVar.b);
                                if (bVar.e) {
                                    if (this.d.a() >= 2) {
                                        this.d.b(2);
                                    } else {
                                        return;
                                    }
                                }
                                if (this.d.a() >= bVar.g) {
                                    boolean z = false;
                                    boolean z2 = false;
                                    boolean z3 = false;
                                    int c2 = this.d.c(bVar.g);
                                    if (!bVar.f) {
                                        if (this.d.a() >= 1) {
                                            z = this.d.b();
                                            if (z) {
                                                if (this.d.a() >= 1) {
                                                    z3 = this.d.b();
                                                    z2 = true;
                                                } else {
                                                    return;
                                                }
                                            }
                                        }
                                        return;
                                    }
                                    boolean z4 = this.i == 5;
                                    int i4 = 0;
                                    if (z4) {
                                        if (this.d.c()) {
                                            i4 = this.d.d();
                                        } else {
                                            return;
                                        }
                                    }
                                    int i5 = 0;
                                    int i6 = 0;
                                    int i7 = 0;
                                    int i8 = 0;
                                    if (bVar.h == 0) {
                                        if (this.d.a() >= bVar.i) {
                                            i5 = this.d.c(bVar.i);
                                            if (aVar.c && !z) {
                                                if (this.d.c()) {
                                                    i6 = this.d.e();
                                                } else {
                                                    return;
                                                }
                                            }
                                        }
                                        return;
                                    } else if (bVar.h == 1 && !bVar.j) {
                                        if (this.d.c()) {
                                            i7 = this.d.e();
                                            if (aVar.c && !z) {
                                                if (this.d.c()) {
                                                    i8 = this.d.e();
                                                } else {
                                                    return;
                                                }
                                            }
                                        }
                                        return;
                                    }
                                    this.n.a(bVar, c, d, c2, d2, z, z2, z3, z4, i4, i5, i6, i7, i8);
                                    this.k = false;
                                }
                            }
                        }
                    }
                }
            }
        }

        public boolean a() {
            return this.c;
        }

        public void b() {
            this.k = false;
            this.o = false;
            this.n.a();
        }
    }

    public g(m mVar, n nVar, boolean z, boolean z2) {
        super(mVar);
        this.c = nVar;
        this.e = new a(mVar, z, z2);
        this.f = new k(7, 128);
        this.g = new k(8, 128);
        this.h = new k(6, 128);
        this.k = new o();
    }

    private static n a(k kVar) {
        n nVar = new n(kVar.a, com.google.android.a.h.m.a(kVar.a, kVar.b));
        nVar.b(32);
        return nVar;
    }

    private void a(long j, int i, int i2, long j2) {
        if (!this.b || this.e.a()) {
            this.f.b(i2);
            this.g.b(i2);
            if (this.b) {
                if (this.f.b()) {
                    this.e.a(com.google.android.a.h.m.a(a(this.f)));
                    this.f.a();
                } else if (this.g.b()) {
                    this.e.a(com.google.android.a.h.m.b(a(this.g)));
                    this.g.a();
                }
            } else if (this.f.b() && this.g.b()) {
                List arrayList = new ArrayList();
                arrayList.add(Arrays.copyOf(this.f.a, this.f.b));
                arrayList.add(Arrays.copyOf(this.g.a, this.g.b));
                b a = com.google.android.a.h.m.a(a(this.f));
                com.google.android.a.h.m.a b = com.google.android.a.h.m.b(a(this.g));
                this.a.a(r.a(null, "video/avc", -1, -1, -1, a.b, a.c, arrayList, -1, a.d));
                this.b = true;
                this.e.a(a);
                this.e.a(b);
                this.f.a();
                this.g.a();
            }
        }
        if (this.h.b(i2)) {
            this.k.a(this.h.a, com.google.android.a.h.m.a(this.h.a, this.h.b));
            this.k.b(4);
            this.c.a(j2, this.k);
        }
        this.e.a(j, i);
    }

    private void a(long j, int i, long j2) {
        if (!this.b || this.e.a()) {
            this.f.a(i);
            this.g.a(i);
        }
        this.h.a(i);
        this.e.a(j, i, j2);
    }

    private void a(byte[] bArr, int i, int i2) {
        if (!this.b || this.e.a()) {
            this.f.a(bArr, i, i2);
            this.g.a(bArr, i, i2);
        }
        this.h.a(bArr, i, i2);
        this.e.a(bArr, i, i2);
    }

    public void a() {
        com.google.android.a.h.m.a(this.d);
        this.f.a();
        this.g.a();
        this.h.a();
        this.e.b();
        this.i = 0;
    }

    public void a(long j, boolean z) {
        this.j = j;
    }

    public void a(o oVar) {
        if (oVar.b() > 0) {
            int d = oVar.d();
            int c = oVar.c();
            byte[] bArr = oVar.a;
            this.i += (long) oVar.b();
            this.a.a(oVar, oVar.b());
            while (true) {
                int a = com.google.android.a.h.m.a(bArr, d, c, this.d);
                if (a == c) {
                    a(bArr, d, c);
                    return;
                }
                int b = com.google.android.a.h.m.b(bArr, a);
                int i = a - d;
                if (i > 0) {
                    a(bArr, d, a);
                }
                int i2 = c - a;
                long j = this.i - ((long) i2);
                a(j, i2, i < 0 ? -i : 0, this.j);
                a(j, b, this.j);
                d = a + 3;
            }
        }
    }

    public void b() {
    }
}
