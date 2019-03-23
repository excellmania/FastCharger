package com.google.android.a.e.e;

import com.google.android.a.e.m;
import com.google.android.a.h.e;
import com.google.android.a.h.o;
import com.google.android.a.r;

final class d extends e {
    private final o b = new o(new byte[15]);
    private int c;
    private int d;
    private int e;
    private long f;
    private r g;
    private int h;
    private long i;

    public d(m mVar) {
        super(mVar);
        this.b.a[0] = Byte.MAX_VALUE;
        this.b.a[1] = (byte) -2;
        this.b.a[2] = Byte.MIN_VALUE;
        this.b.a[3] = (byte) 1;
        this.c = 0;
    }

    private boolean a(o oVar, byte[] bArr, int i) {
        int min = Math.min(oVar.b(), i - this.d);
        oVar.a(bArr, this.d, min);
        this.d = min + this.d;
        return this.d == i;
    }

    private boolean b(o oVar) {
        while (oVar.b() > 0) {
            this.e <<= 8;
            this.e |= oVar.f();
            if (this.e == 2147385345) {
                this.e = 0;
                return true;
            }
        }
        return false;
    }

    private void c() {
        byte[] bArr = this.b.a;
        if (this.g == null) {
            this.g = e.a(bArr, null, -1, null);
            this.a.a(this.g);
        }
        this.h = e.b(bArr);
        this.f = (long) ((int) ((((long) e.a(bArr)) * 1000000) / ((long) this.g.o)));
    }

    public void a() {
        this.c = 0;
        this.d = 0;
        this.e = 0;
    }

    public void a(long j, boolean z) {
        this.i = j;
    }

    public void a(o oVar) {
        while (oVar.b() > 0) {
            switch (this.c) {
                case 0:
                    if (!b(oVar)) {
                        break;
                    }
                    this.d = 4;
                    this.c = 1;
                    break;
                case 1:
                    if (!a(oVar, this.b.a, 15)) {
                        break;
                    }
                    c();
                    this.b.b(0);
                    this.a.a(this.b, 15);
                    this.c = 2;
                    break;
                case 2:
                    int min = Math.min(oVar.b(), this.h - this.d);
                    this.a.a(oVar, min);
                    this.d = min + this.d;
                    if (this.d != this.h) {
                        break;
                    }
                    this.a.a(this.i, 1, this.h, 0, null);
                    this.i += this.f;
                    this.c = 0;
                    break;
                default:
                    break;
            }
        }
    }

    public void b() {
    }
}
