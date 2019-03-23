package com.google.android.a.e.e;

import android.support.v4.view.InputDeviceCompat;
import android.util.SparseArray;
import com.google.android.a.e.e;
import com.google.android.a.e.f;
import com.google.android.a.e.g;
import com.google.android.a.e.j;
import com.google.android.a.h.n;
import com.google.android.a.h.o;

public final class l implements e {
    private final m a;
    private final SparseArray<a> b;
    private final o c;
    private boolean d;
    private boolean e;
    private boolean f;
    private g g;

    private static final class a {
        private final e a;
        private final m b;
        private final n c = new n(new byte[64]);
        private boolean d;
        private boolean e;
        private boolean f;
        private int g;
        private long h;

        public a(e eVar, m mVar) {
            this.a = eVar;
            this.b = mVar;
        }

        private void b() {
            this.c.b(8);
            this.d = this.c.b();
            this.e = this.c.b();
            this.c.b(6);
            this.g = this.c.c(8);
        }

        private void c() {
            this.h = 0;
            if (this.d) {
                this.c.b(4);
                long c = ((long) this.c.c(3)) << 30;
                this.c.b(1);
                c |= (long) (this.c.c(15) << 15);
                this.c.b(1);
                c |= (long) this.c.c(15);
                this.c.b(1);
                if (!this.f && this.e) {
                    this.c.b(4);
                    long c2 = ((long) this.c.c(3)) << 30;
                    this.c.b(1);
                    c2 |= (long) (this.c.c(15) << 15);
                    this.c.b(1);
                    c2 |= (long) this.c.c(15);
                    this.c.b(1);
                    this.b.a(c2);
                    this.f = true;
                }
                this.h = this.b.a(c);
            }
        }

        public void a() {
            this.f = false;
            this.a.a();
        }

        public void a(o oVar, g gVar) {
            oVar.a(this.c.a, 0, 3);
            this.c.a(0);
            b();
            oVar.a(this.c.a, 0, this.g);
            this.c.a(0);
            c();
            this.a.a(this.h, true);
            this.a.a(oVar);
            this.a.b();
        }
    }

    public l() {
        this(new m(0));
    }

    public l(m mVar) {
        this.a = mVar;
        this.c = new o(4096);
        this.b = new SparseArray();
    }

    public int a(f fVar, j jVar) {
        if (!fVar.b(this.c.a, 0, 4, true)) {
            return -1;
        }
        this.c.b(0);
        int m = this.c.m();
        if (m == 441) {
            return -1;
        }
        if (m == 442) {
            fVar.c(this.c.a, 0, 10);
            this.c.b(0);
            this.c.c(9);
            fVar.b((this.c.f() & 7) + 14);
            return 0;
        } else if (m == 443) {
            fVar.c(this.c.a, 0, 2);
            this.c.b(0);
            fVar.b(this.c.g() + 6);
            return 0;
        } else if (((m & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
            fVar.b(1);
            return 0;
        } else {
            int i = m & 255;
            a aVar = (a) this.b.get(i);
            if (!this.d) {
                if (aVar == null) {
                    e eVar = null;
                    if (!this.e && i == 189) {
                        eVar = new a(this.g.a_(i), false);
                        this.e = true;
                    } else if (!this.e && (i & 224) == 192) {
                        eVar = new j(this.g.a_(i));
                        this.e = true;
                    } else if (!this.f && (i & 240) == 224) {
                        eVar = new f(this.g.a_(i));
                        this.f = true;
                    }
                    if (eVar != null) {
                        aVar = new a(eVar, this.a);
                        this.b.put(i, aVar);
                    }
                }
                if ((this.e && this.f) || fVar.c() > 1048576) {
                    this.d = true;
                    this.g.a();
                }
            }
            fVar.c(this.c.a, 0, 2);
            this.c.b(0);
            m = this.c.g() + 6;
            if (aVar == null) {
                fVar.b(m);
            } else {
                if (this.c.e() < m) {
                    this.c.a(new byte[m], m);
                }
                fVar.b(this.c.a, 0, m);
                this.c.b(6);
                this.c.a(m);
                aVar.a(this.c, this.g);
                this.c.a(this.c.e());
            }
            return 0;
        }
    }

    public void a(g gVar) {
        this.g = gVar;
        gVar.a(com.google.android.a.e.l.f);
    }

    public boolean a(f fVar) {
        boolean z = true;
        byte[] bArr = new byte[14];
        fVar.c(bArr, 0, 14);
        if (442 != (((((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16)) | ((bArr[2] & 255) << 8)) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        fVar.c(bArr[13] & 7);
        fVar.c(bArr, 0, 3);
        if (1 != ((bArr[2] & 255) | (((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)))) {
            z = false;
        }
        return z;
    }

    public void b() {
        this.a.a();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.b.size()) {
                ((a) this.b.valueAt(i2)).a();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void c() {
    }
}
