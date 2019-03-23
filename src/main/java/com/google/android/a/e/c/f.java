package com.google.android.a.e.c;

import com.google.android.a.e.e;
import com.google.android.a.e.g;
import com.google.android.a.e.i;
import com.google.android.a.e.j;
import com.google.android.a.e.l;
import com.google.android.a.h.b;
import com.google.android.a.h.m;
import com.google.android.a.h.o;
import com.google.android.a.h.x;
import com.google.android.a.r;
import java.util.ArrayList;
import java.util.Stack;

public final class f implements e, l {
    private static final int a = x.e("qt  ");
    private final o b = new o(m.a);
    private final o c = new o(4);
    private final o d = new o(16);
    private final Stack<a> e = new Stack();
    private int g;
    private int h;
    private long i;
    private int j;
    private o k;
    private int l;
    private int m;
    private int n;
    private g o;
    private a[] p;
    private boolean q;

    private static final class a {
        public final i a;
        public final l b;
        public final com.google.android.a.e.m c;
        public int d;

        public a(i iVar, l lVar, com.google.android.a.e.m mVar) {
            this.a = iVar;
            this.b = lVar;
            this.c = mVar;
        }
    }

    public f() {
        d();
    }

    private void a(long j) {
        while (!this.e.isEmpty() && ((a) this.e.peek()).aC == j) {
            a aVar = (a) this.e.pop();
            if (aVar.aB == a.A) {
                a(aVar);
                this.e.clear();
                this.g = 3;
            } else if (!this.e.isEmpty()) {
                ((a) this.e.peek()).a(aVar);
            }
        }
        if (this.g != 3) {
            d();
        }
    }

    private void a(a aVar) {
        ArrayList arrayList = new ArrayList();
        long j = Long.MAX_VALUE;
        b d = aVar.d(a.au);
        i a = d != null ? b.a(d, this.q) : null;
        for (int i = 0; i < aVar.aE.size(); i++) {
            a aVar2 = (a) aVar.aE.get(i);
            if (aVar2.aB == a.C) {
                i a2 = b.a(aVar2, aVar.d(a.B), this.q);
                if (a2 != null) {
                    l a3 = b.a(a2, aVar2.e(a.D).e(a.E).e(a.F));
                    if (a3.a != 0) {
                        a aVar3 = new a(a2, a3, this.o.a_(i));
                        r a4 = a2.k.a(a3.d + 30);
                        if (a != null) {
                            a4 = a4.b(a.a, a.b);
                        }
                        aVar3.c.a(a4);
                        arrayList.add(aVar3);
                        long j2 = a3.b[0];
                        if (j2 < j) {
                            j = j2;
                        }
                    }
                }
            }
        }
        this.p = (a[]) arrayList.toArray(new a[0]);
        this.o.a();
        this.o.a((l) this);
    }

    private static boolean a(int i) {
        return i == a.P || i == a.B || i == a.Q || i == a.R || i == a.ai || i == a.aj || i == a.ak || i == a.O || i == a.al || i == a.am || i == a.an || i == a.ao || i == a.M || i == a.a || i == a.au;
    }

    private static boolean a(o oVar) {
        oVar.b(8);
        if (oVar.m() == a) {
            return true;
        }
        oVar.c(4);
        while (oVar.b() > 0) {
            if (oVar.m() == a) {
                return true;
            }
        }
        return false;
    }

    private static boolean b(int i) {
        return i == a.A || i == a.C || i == a.D || i == a.E || i == a.F || i == a.N;
    }

    private boolean b(com.google.android.a.e.f fVar) {
        if (this.j == 0) {
            if (!fVar.a(this.d.a, 0, 8, true)) {
                return false;
            }
            this.j = 8;
            this.d.b(0);
            this.i = this.d.k();
            this.h = this.d.m();
        }
        if (this.i == 1) {
            fVar.b(this.d.a, 8, 8);
            this.j += 8;
            this.i = this.d.u();
        }
        if (b(this.h)) {
            long c = (fVar.c() + this.i) - ((long) this.j);
            this.e.add(new a(this.h, c));
            if (this.i == ((long) this.j)) {
                a(c);
            } else {
                d();
            }
        } else if (a(this.h)) {
            b.b(this.j == 8);
            b.b(this.i <= 2147483647L);
            this.k = new o((int) this.i);
            System.arraycopy(this.d.a, 0, this.k.a, 0, 8);
            this.g = 2;
        } else {
            this.k = null;
            this.g = 2;
        }
        return true;
    }

    private boolean b(com.google.android.a.e.f fVar, j jVar) {
        boolean z;
        long j = this.i - ((long) this.j);
        long c = fVar.c() + j;
        if (this.k != null) {
            fVar.b(this.k.a, this.j, (int) j);
            if (this.h == a.a) {
                this.q = a(this.k);
                z = false;
            } else if (this.e.isEmpty()) {
                z = false;
            } else {
                ((a) this.e.peek()).a(new b(this.h, this.k));
                z = false;
            }
        } else if (j < 262144) {
            fVar.b((int) j);
            z = false;
        } else {
            jVar.a = j + fVar.c();
            z = true;
        }
        a(c);
        return z && this.g != 3;
    }

    private int c(com.google.android.a.e.f fVar, j jVar) {
        int e = e();
        if (e == -1) {
            return -1;
        }
        a aVar = this.p[e];
        com.google.android.a.e.m mVar = aVar.c;
        int i = aVar.d;
        long j = aVar.b.b[i];
        long c = (j - fVar.c()) + ((long) this.m);
        if (c < 0 || c >= 262144) {
            jVar.a = j;
            return 1;
        }
        fVar.b((int) c);
        this.l = aVar.b.c[i];
        int i2;
        if (aVar.a.o != -1) {
            byte[] bArr = this.c.a;
            bArr[0] = (byte) 0;
            bArr[1] = (byte) 0;
            bArr[2] = (byte) 0;
            i2 = aVar.a.o;
            int i3 = 4 - aVar.a.o;
            while (this.m < this.l) {
                if (this.n == 0) {
                    fVar.b(this.c.a, i3, i2);
                    this.c.b(0);
                    this.n = this.c.s();
                    this.b.b(0);
                    mVar.a(this.b, 4);
                    this.m += 4;
                    this.l += i3;
                } else {
                    int a = mVar.a(fVar, this.n, false);
                    this.m += a;
                    this.n -= a;
                }
            }
        } else {
            while (this.m < this.l) {
                i2 = mVar.a(fVar, this.l - this.m, false);
                this.m += i2;
                this.n -= i2;
            }
        }
        mVar.a(aVar.b.e[i], aVar.b.f[i], this.l, 0, null);
        aVar.d++;
        this.m = 0;
        this.n = 0;
        return 0;
    }

    private void d() {
        this.g = 1;
        this.j = 0;
    }

    private int e() {
        int i = -1;
        long j = Long.MAX_VALUE;
        for (int i2 = 0; i2 < this.p.length; i2++) {
            a aVar = this.p[i2];
            int i3 = aVar.d;
            if (i3 != aVar.b.a) {
                long j2 = aVar.b.b[i3];
                if (j2 < j) {
                    j = j2;
                    i = i2;
                }
            }
        }
        return i;
    }

    public int a(com.google.android.a.e.f fVar, j jVar) {
        while (true) {
            switch (this.g) {
                case 0:
                    if (fVar.c() != 0) {
                        this.g = 3;
                        break;
                    }
                    d();
                    break;
                case 1:
                    if (b(fVar)) {
                        break;
                    }
                    return -1;
                case 2:
                    if (!b(fVar, jVar)) {
                        break;
                    }
                    return 1;
                default:
                    return c(fVar, jVar);
            }
        }
    }

    public void a(g gVar) {
        this.o = gVar;
    }

    public boolean a() {
        return true;
    }

    public boolean a(com.google.android.a.e.f fVar) {
        return h.b(fVar);
    }

    public long b(long j) {
        long j2 = Long.MAX_VALUE;
        for (int i = 0; i < this.p.length; i++) {
            l lVar = this.p[i].b;
            int a = lVar.a(j);
            if (a == -1) {
                a = lVar.b(j);
            }
            this.p[i].d = a;
            long j3 = lVar.b[a];
            if (j3 < j2) {
                j2 = j3;
            }
        }
        return j2;
    }

    public void b() {
        this.e.clear();
        this.j = 0;
        this.m = 0;
        this.n = 0;
        this.g = 0;
    }

    public void c() {
    }
}
