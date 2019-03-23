package com.facebook.ads.internal.b;

public class c {
    private double a;
    private double b;
    private int c;
    private double d;
    private double e;
    private double f = 1.0d;
    private double g;
    private double h;
    private double i;

    public c(double d) {
        this.i = d;
    }

    public double a() {
        return this.a;
    }

    /* Access modifiers changed, original: 0000 */
    public void a(double d, double d2) {
        this.c++;
        this.d += d;
        this.b = d2;
        this.g += d2 * d;
        this.a = this.g / this.d;
        if (this.f > d2) {
            this.f = d2;
        }
        if (this.e < d2) {
            this.e = d2;
        }
        if (d2 >= this.i) {
            this.h += d;
        }
    }

    public double b() {
        return this.d;
    }

    public double c() {
        return this.f;
    }

    public double d() {
        return this.h;
    }
}
