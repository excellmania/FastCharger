package com.google.android.gms.c;

import com.google.android.gms.c.ol.a;

@pa
public class on extends se {
    private final a a;
    private final pj b = this.c.b;
    private final rv.a c;

    public on(rv.a aVar, a aVar2) {
        this.c = aVar;
        this.a = aVar2;
    }

    private rv a(int i) {
        return new rv(this.c.a.c, null, null, i, null, null, this.b.l, this.b.k, this.c.a.i, false, null, null, null, null, null, this.b.i, this.c.d, this.b.g, this.c.f, this.b.n, this.b.o, this.c.h, null, null, null, null, this.c.b.F, this.c.b.G, null, null, null);
    }

    public void a() {
        final rv a = a(0);
        sj.a.post(new Runnable() {
            public void run() {
                on.this.a.b(a);
            }
        });
    }

    public void b() {
    }
}
