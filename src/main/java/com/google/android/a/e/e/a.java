package com.google.android.a.e.e;

import com.google.android.a.e.m;
import com.google.android.a.h.n;
import com.google.android.a.h.o;
import com.google.android.a.r;

final class a extends e {
    private final boolean b;
    private final n c = new n(new byte[8]);
    private final o d = new o(this.c.a);
    private int e = 0;
    private int f;
    private boolean g;
    private long h;
    private r i;
    private int j;
    private long k;

    public a(m mVar, boolean z) {
        super(mVar);
        this.b = z;
    }

    private boolean a(o oVar, byte[] bArr, int i) {
        int min = Math.min(oVar.b(), i - this.f);
        oVar.a(bArr, this.f, min);
        this.f = min + this.f;
        return this.f == i;
    }

    private boolean b(o oVar) {
        while (oVar.b() > 0) {
            if (this.g) {
                int f = oVar.f();
                if (f == 119) {
                    this.g = false;
                    return true;
                }
                this.g = f == 11;
            } else {
                this.g = oVar.f() == 11;
            }
        }
        return false;
    }

    private void c() {
        if (this.i == null) {
            this.i = this.b ? com.google.android.a.h.a.b(this.c, null, -1, null) : com.google.android.a.h.a.a(this.c, null, -1, null);
            this.a.a(this.i);
        }
        this.j = this.b ? com.google.android.a.h.a.b(this.c.a) : com.google.android.a.h.a.a(this.c.a);
        this.h = (long) ((int) ((((long) (this.b ? com.google.android.a.h.a.c(this.c.a) : com.google.android.a.h.a.a())) * 1000000) / ((long) this.i.o)));
    }

    public void a() {
        this.e = 0;
        this.f = 0;
        this.g = false;
    }

    public void a(long j, boolean z) {
        this.k = j;
    }

    public void a(o oVar) {
        while (oVar.b() > 0) {
            switch (this.e) {
                case 0:
                    if (!b(oVar)) {
                        break;
                    }
                    this.e = 1;
                    this.d.a[0] = (byte) 11;
                    this.d.a[1] = (byte) 119;
                    this.f = 2;
                    break;
                case 1:
                    if (!a(oVar, this.d.a, 8)) {
                        break;
                    }
                    c();
                    this.d.b(0);
                    this.a.a(this.d, 8);
                    this.e = 2;
                    break;
                case 2:
                    int min = Math.min(oVar.b(), this.j - this.f);
                    this.a.a(oVar, min);
                    this.f = min + this.f;
                    if (this.f != this.j) {
                        break;
                    }
                    this.a.a(this.k, 1, this.j, 0, null);
                    this.k += this.h;
                    this.e = 0;
                    break;
                default:
                    break;
            }
        }
    }

    public void b() {
    }
}
