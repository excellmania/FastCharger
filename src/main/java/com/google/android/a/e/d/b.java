package com.google.android.a.e.d;

import com.google.android.a.e.e;
import com.google.android.a.e.f;
import com.google.android.a.e.g;
import com.google.android.a.e.j;
import com.google.android.a.e.m;
import com.google.android.a.h.o;
import com.google.android.a.t;

public class b implements e {
    private f a;

    public int a(f fVar, j jVar) {
        return this.a.a(fVar, jVar);
    }

    public void a(g gVar) {
        m a_ = gVar.a_(0);
        gVar.a();
        this.a.a(gVar, a_);
    }

    public boolean a(f fVar) {
        try {
            o oVar = new o(new byte[27], 0);
            com.google.android.a.e.d.e.b bVar = new com.google.android.a.e.d.e.b();
            if (!e.a(fVar, bVar, oVar, true) || (bVar.b & 2) != 2 || bVar.i < 7) {
                return false;
            }
            oVar.a();
            fVar.c(oVar.a, 0, 7);
            if (a.a(oVar)) {
                this.a = new a();
            } else {
                oVar.a();
                if (!h.a(oVar)) {
                    return false;
                }
                this.a = new h();
            }
            return true;
        } catch (t e) {
            return false;
        }
    }

    public void b() {
        this.a.b();
    }

    public void c() {
    }
}
