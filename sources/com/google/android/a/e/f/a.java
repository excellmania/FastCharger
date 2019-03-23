package com.google.android.a.e.f;

import com.google.android.a.e.e;
import com.google.android.a.e.f;
import com.google.android.a.e.g;
import com.google.android.a.e.j;
import com.google.android.a.e.l;
import com.google.android.a.e.m;
import com.google.android.a.r;
import com.google.android.a.t;

public final class a implements e, l {
    private g a;
    private m b;
    private b c;
    private int d;
    private int e;

    public int a(f fVar, j jVar) {
        if (this.c == null) {
            this.c = c.a(fVar);
            if (this.c == null) {
                throw new t("Error initializing WavHeader. Did you sniff first?");
            }
            this.d = this.c.e();
        }
        if (!this.c.i()) {
            c.a(fVar, this.c);
            this.b.a(r.a(null, "audio/raw", this.c.f(), 32768, this.c.a(), this.c.h(), this.c.g(), null, null, this.c.j()));
            this.a.a((l) this);
        }
        int a = this.b.a(fVar, 32768 - this.e, true);
        if (a != -1) {
            this.e += a;
        }
        int i = (this.e / this.d) * this.d;
        if (i > 0) {
            long c = fVar.c() - ((long) this.e);
            this.e -= i;
            this.b.a(this.c.b(c), 1, i, this.e, null);
        }
        return a == -1 ? -1 : 0;
    }

    public void a(g gVar) {
        this.a = gVar;
        this.b = gVar.a_(0);
        this.c = null;
        gVar.a();
    }

    public boolean a() {
        return true;
    }

    public boolean a(f fVar) {
        return c.a(fVar) != null;
    }

    public long b(long j) {
        return this.c.a(j);
    }

    public void b() {
        this.e = 0;
    }

    public void c() {
    }
}
