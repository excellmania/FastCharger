package com.google.android.a.e.b;

import com.google.android.a.e.e;
import com.google.android.a.e.f;
import com.google.android.a.e.g;
import com.google.android.a.e.i;
import com.google.android.a.e.j;
import com.google.android.a.e.m;
import com.google.android.a.h.l;
import com.google.android.a.h.o;
import com.google.android.a.h.x;
import com.google.android.a.r;
import com.google.android.a.t;
import java.io.EOFException;

public final class c implements e {
    private static final int a = x.e("Xing");
    private static final int b = x.e("Info");
    private static final int c = x.e("VBRI");
    private final long d;
    private final o e;
    private final l f;
    private g g;
    private m h;
    private int i;
    private i j;
    private a k;
    private long l;
    private long m;
    private int n;

    interface a extends com.google.android.a.e.l {
        long a(long j);

        long b();
    }

    public c() {
        this(-1);
    }

    public c(long j) {
        this.d = j;
        this.e = new o(4);
        this.f = new l();
        this.l = -1;
    }

    private boolean a(f fVar, boolean z) {
        int b;
        int i;
        int i2;
        int i3;
        int i4;
        fVar.a();
        if (fVar.c() == 0) {
            this.j = b.a(fVar);
            b = (int) fVar.b();
            if (!z) {
                fVar.b(b);
            }
            i = b;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        } else {
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        }
        while (true) {
            if (z && i4 == 4096) {
                return false;
            }
            if (!z && i4 == 131072) {
                throw new t("Searched too many bytes.");
            } else if (!fVar.b(this.e.a, 0, 4, true)) {
                return false;
            } else {
                boolean z2;
                boolean z3;
                this.e.b(0);
                b = this.e.m();
                if (i2 == 0 || (b & -128000) == (i2 & -128000)) {
                    int a = l.a(b);
                    if (a != -1) {
                        z2 = i3 + 1;
                        if (z2) {
                            l.a(b, this.f);
                        } else if (z2) {
                            if (z) {
                                fVar.b(i + i4);
                            } else {
                                fVar.a();
                            }
                            this.i = i2;
                            return true;
                        } else {
                            b = i2;
                        }
                        fVar.c(a - 4);
                        z3 = z2;
                        i3 = i4;
                        i4 = i3;
                        z2 = z3;
                        i2 = b;
                    }
                }
                b = i4 + 1;
                if (z) {
                    fVar.a();
                    fVar.c(i + b);
                    z3 = false;
                    i3 = b;
                    b = 0;
                } else {
                    fVar.b(1);
                    z3 = false;
                    i3 = b;
                    b = 0;
                }
                i4 = i3;
                z2 = z3;
                i2 = b;
            }
        }
    }

    private int b(f fVar) {
        if (this.n == 0) {
            if (!c(fVar)) {
                return -1;
            }
            if (this.l == -1) {
                this.l = this.k.a(fVar.c());
                if (this.d != -1) {
                    long a = this.k.a(0);
                    this.l = (this.d - a) + this.l;
                }
            }
            this.n = this.f.c;
        }
        int a2 = this.h.a(fVar, this.n, true);
        if (a2 == -1) {
            return -1;
        }
        this.n -= a2;
        if (this.n > 0) {
            return 0;
        }
        this.h.a(((this.m * 1000000) / ((long) this.f.d)) + this.l, 1, this.f.c, 0, null);
        this.m += (long) this.f.g;
        this.n = 0;
        return 0;
    }

    private boolean c(f fVar) {
        fVar.a();
        if (!fVar.b(this.e.a, 0, 4, true)) {
            return false;
        }
        this.e.b(0);
        int m = this.e.m();
        if ((m & -128000) != (this.i & -128000) || l.a(m) == -1) {
            this.i = 0;
            fVar.b(1);
            return d(fVar);
        }
        l.a(m, this.f);
        return true;
    }

    private boolean d(f fVar) {
        boolean z = false;
        try {
            return a(fVar, false);
        } catch (EOFException e) {
            return z;
        }
    }

    private void e(f fVar) {
        int i = 21;
        o oVar = new o(this.f.c);
        fVar.c(oVar.a, 0, this.f.c);
        long c = fVar.c();
        long d = fVar.d();
        if ((this.f.a & 1) != 0) {
            if (this.f.e != 1) {
                i = 36;
            }
        } else if (this.f.e == 1) {
            i = 13;
        }
        oVar.b(i);
        int m = oVar.m();
        if (m == a || m == b) {
            this.k = e.a(this.f, oVar, c, d);
            if (this.k != null && this.j == null) {
                fVar.a();
                fVar.c(i + 141);
                fVar.c(this.e.a, 0, 3);
                this.e.b(0);
                this.j = i.a(this.e.j());
            }
            fVar.b(this.f.c);
        } else {
            oVar.b(36);
            if (oVar.m() == c) {
                this.k = d.a(this.f, oVar, c, d);
                fVar.b(this.f.c);
            }
        }
        if (this.k == null) {
            fVar.a();
            fVar.c(this.e.a, 0, 4);
            this.e.b(0);
            l.a(this.e.m(), this.f);
            this.k = new a(fVar.c(), this.f.f, d);
        }
    }

    public int a(f fVar, j jVar) {
        if (this.i == 0 && !d(fVar)) {
            return -1;
        }
        if (this.k == null) {
            e(fVar);
            this.g.a(this.k);
            r a = r.a(null, this.f.b, -1, 4096, this.k.b(), this.f.e, this.f.d, null, null);
            if (this.j != null) {
                a = a.b(this.j.a, this.j.b);
            }
            this.h.a(a);
        }
        return b(fVar);
    }

    public void a(g gVar) {
        this.g = gVar;
        this.h = gVar.a_(0);
        gVar.a();
    }

    public boolean a(f fVar) {
        return a(fVar, true);
    }

    public void b() {
        this.i = 0;
        this.m = 0;
        this.l = -1;
        this.n = 0;
    }

    public void c() {
    }
}
