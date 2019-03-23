package com.facebook.ads.internal.b;

public class d {
    private c a;
    private final c b;
    private final b c;
    private boolean d = false;
    private boolean e = false;
    private boolean f = false;

    public d(b bVar) {
        this.c = bVar;
        this.b = new c(bVar.a);
        this.a = new c(bVar.a);
    }

    private void a() {
        this.e = true;
        b();
    }

    private void b() {
        this.f = true;
        c();
    }

    private void c() {
        this.d = true;
        this.c.a(this.f, this.e, this.e ? this.a : this.b);
    }

    public void a(double d, double d2) {
        if (!this.d) {
            this.b.a(d, d2);
            this.a.a(d, d2);
            double d3 = this.a.d();
            if (this.c.d && d2 < this.c.a) {
                this.a = new c(this.c.a);
            }
            if (this.c.b >= 0.0d && this.b.b() > this.c.b && d3 == 0.0d) {
                b();
            } else if (d3 >= this.c.c) {
                a();
            }
        }
    }
}
