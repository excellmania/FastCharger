package com.google.android.a.e.e;

import com.google.android.a.e.m;
import com.google.android.a.f.a.a;
import com.google.android.a.h.o;
import com.google.android.a.r;

final class n {
    private final m a;

    public n(m mVar) {
        this.a = mVar;
        mVar.a(r.a(null, "application/eia-608", -1, -1, null));
    }

    public void a(long j, o oVar) {
        while (oVar.b() > 1) {
            int f;
            int i = 0;
            do {
                f = oVar.f();
                i += f;
            } while (f == 255);
            int i2 = 0;
            do {
                f = oVar.f();
                i2 += f;
            } while (f == 255);
            if (a.a(i, i2, oVar)) {
                this.a.a(oVar, i2);
                this.a.a(j, 1, i2, 0, null);
            } else {
                oVar.c(i2);
            }
        }
    }
}
