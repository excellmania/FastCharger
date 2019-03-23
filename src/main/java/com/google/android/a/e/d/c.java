package com.google.android.a.e.d;

import com.google.android.a.e.d.e.a;
import com.google.android.a.e.d.e.b;
import com.google.android.a.e.f;
import com.google.android.a.h.o;
import com.google.android.a.t;

final class c {
    private final b a = new b();
    private final o b = new o(282);
    private final a c = new a();
    private int d = -1;
    private long e;

    c() {
    }

    public long a(f fVar) {
        com.google.android.a.h.b.a(fVar.d() != -1);
        e.a(fVar);
        this.a.a();
        while ((this.a.b & 4) != 4 && fVar.c() < fVar.d()) {
            e.a(fVar, this.a, this.b, false);
            fVar.b(this.a.h + this.a.i);
        }
        return this.a.c;
    }

    public long a(f fVar, long j) {
        e.a(fVar);
        e.a(fVar, this.a, this.b, false);
        while (this.a.c < j) {
            fVar.b(this.a.h + this.a.i);
            this.e = this.a.c;
            e.a(fVar, this.a, this.b, false);
        }
        if (this.e == 0) {
            throw new t();
        }
        fVar.a();
        long j2 = this.e;
        this.e = 0;
        this.d = -1;
        return j2;
    }

    public void a() {
        this.a.a();
        this.b.a();
        this.d = -1;
    }

    public boolean a(f fVar, o oVar) {
        boolean z = (fVar == null || oVar == null) ? false : true;
        com.google.android.a.h.b.b(z);
        for (boolean z2 = false; !z2; z2 = z) {
            int i;
            if (this.d < 0) {
                if (!e.a(fVar, this.a, this.b, true)) {
                    return false;
                }
                int i2 = this.a.h;
                if ((this.a.b & 1) == 1 && oVar.c() == 0) {
                    e.a(this.a, 0, this.c);
                    i = this.c.b + 0;
                    i2 += this.c.a;
                } else {
                    i = 0;
                }
                fVar.b(i2);
                this.d = i;
            }
            e.a(this.a, this.d, this.c);
            i = this.c.b + this.d;
            if (this.c.a > 0) {
                fVar.b(oVar.a, oVar.c(), this.c.a);
                oVar.a(oVar.c() + this.c.a);
                z = this.a.j[i + -1] != 255;
            } else {
                z = z2;
            }
            if (i == this.a.g) {
                i = -1;
            }
            this.d = i;
        }
        return true;
    }
}
