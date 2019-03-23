package com.google.android.a.e.a;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.google.android.a.e.e;
import com.google.android.a.e.f;
import com.google.android.a.e.g;
import com.google.android.a.e.j;
import com.google.android.a.e.l;
import com.google.android.a.h.o;
import com.google.android.a.h.x;

public final class b implements e, l {
    private static final int d = x.e("FLV");
    public int a;
    public int b;
    public long c;
    private final o e = new o(4);
    private final o g = new o(9);
    private final o h = new o(11);
    private final o i = new o();
    private g j;
    private int k = 1;
    private int l;
    private a m;
    private e n;
    private c o;

    private boolean b(f fVar) {
        int i = 0;
        if (!fVar.a(this.g.a, 0, 9, true)) {
            return false;
        }
        this.g.b(0);
        this.g.c(4);
        int f = this.g.f();
        boolean z = (f & 4) != 0;
        if ((f & 1) != 0) {
            i = 1;
        }
        if (z && this.m == null) {
            this.m = new a(this.j.a_(8));
        }
        if (i != 0 && this.n == null) {
            this.n = new e(this.j.a_(9));
        }
        if (this.o == null) {
            this.o = new c(null);
        }
        this.j.a();
        this.j.a((l) this);
        this.l = (this.g.m() - 9) + 4;
        this.k = 2;
        return true;
    }

    private void c(f fVar) {
        fVar.b(this.l);
        this.l = 0;
        this.k = 3;
    }

    private boolean d(f fVar) {
        if (!fVar.a(this.h.a, 0, 11, true)) {
            return false;
        }
        this.h.b(0);
        this.a = this.h.f();
        this.b = this.h.j();
        this.c = (long) this.h.j();
        this.c = (((long) (this.h.f() << 24)) | this.c) * 1000;
        this.h.c(3);
        this.k = 4;
        return true;
    }

    private boolean e(f fVar) {
        boolean z = true;
        if (this.a == 8 && this.m != null) {
            this.m.b(f(fVar), this.c);
        } else if (this.a == 9 && this.n != null) {
            this.n.b(f(fVar), this.c);
        } else if (this.a != 18 || this.o == null) {
            fVar.b(this.b);
            z = false;
        } else {
            this.o.b(f(fVar), this.c);
            if (this.o.a() != -1) {
                if (this.m != null) {
                    this.m.a(this.o.a());
                }
                if (this.n != null) {
                    this.n.a(this.o.a());
                }
            }
        }
        this.l = 4;
        this.k = 2;
        return z;
    }

    private o f(f fVar) {
        if (this.b > this.i.e()) {
            this.i.a(new byte[Math.max(this.i.e() * 2, this.b)], 0);
        } else {
            this.i.b(0);
        }
        this.i.a(this.b);
        fVar.b(this.i.a, 0, this.b);
        return this.i;
    }

    public int a(f fVar, j jVar) {
        while (true) {
            switch (this.k) {
                case 1:
                    if (b(fVar)) {
                        break;
                    }
                    return -1;
                case 2:
                    c(fVar);
                    break;
                case 3:
                    if (d(fVar)) {
                        break;
                    }
                    return -1;
                case 4:
                    if (!e(fVar)) {
                        break;
                    }
                    return 0;
                default:
                    break;
            }
        }
    }

    public void a(g gVar) {
        this.j = gVar;
    }

    public boolean a() {
        return false;
    }

    public boolean a(f fVar) {
        fVar.c(this.e.a, 0, 3);
        this.e.b(0);
        if (this.e.j() != d) {
            return false;
        }
        fVar.c(this.e.a, 0, 2);
        this.e.b(0);
        if ((this.e.g() & Callback.DEFAULT_SWIPE_ANIMATION_DURATION) != 0) {
            return false;
        }
        fVar.c(this.e.a, 0, 4);
        this.e.b(0);
        int m = this.e.m();
        fVar.a();
        fVar.c(m);
        fVar.c(this.e.a, 0, 4);
        this.e.b(0);
        return this.e.m() == 0;
    }

    public long b(long j) {
        return 0;
    }

    public void b() {
        this.k = 1;
        this.l = 0;
    }

    public void c() {
    }
}
