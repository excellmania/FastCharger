package com.google.android.a.e.e;

import com.google.android.a.e.m;
import com.google.android.a.h.l;
import com.google.android.a.h.o;
import com.google.android.a.r;

final class j extends e {
    private final o b = new o(4);
    private final l c;
    private int d = 0;
    private int e;
    private boolean f;
    private boolean g;
    private long h;
    private int i;
    private long j;

    public j(m mVar) {
        super(mVar);
        this.b.a[0] = (byte) -1;
        this.c = new l();
    }

    private void b(o oVar) {
        byte[] bArr = oVar.a;
        int d = oVar.d();
        int c = oVar.c();
        int i = d;
        while (i < c) {
            int i2;
            boolean z = (bArr[i] & 255) == 255;
            if (this.g && (bArr[i] & 224) == 224) {
                i2 = 1;
            } else {
                boolean i22 = false;
            }
            this.g = z;
            if (i22 != 0) {
                oVar.b(i + 1);
                this.g = false;
                this.b.a[1] = bArr[i];
                this.e = 2;
                this.d = 1;
                return;
            }
            i++;
        }
        oVar.b(c);
    }

    private void c(o oVar) {
        int min = Math.min(oVar.b(), 4 - this.e);
        oVar.a(this.b.a, this.e, min);
        this.e = min + this.e;
        if (this.e >= 4) {
            this.b.b(0);
            if (l.a(this.b.m(), this.c)) {
                this.i = this.c.c;
                if (!this.f) {
                    this.h = (1000000 * ((long) this.c.g)) / ((long) this.c.d);
                    this.a.a(r.a(null, this.c.b, -1, 4096, -1, this.c.e, this.c.d, null, null));
                    this.f = true;
                }
                this.b.b(0);
                this.a.a(this.b, 4);
                this.d = 2;
                return;
            }
            this.e = 0;
            this.d = 1;
        }
    }

    private void d(o oVar) {
        int min = Math.min(oVar.b(), this.i - this.e);
        this.a.a(oVar, min);
        this.e = min + this.e;
        if (this.e >= this.i) {
            this.a.a(this.j, 1, this.i, 0, null);
            this.j += this.h;
            this.e = 0;
            this.d = 0;
        }
    }

    public void a() {
        this.d = 0;
        this.e = 0;
        this.g = false;
    }

    public void a(long j, boolean z) {
        this.j = j;
    }

    public void a(o oVar) {
        while (oVar.b() > 0) {
            switch (this.d) {
                case 0:
                    b(oVar);
                    break;
                case 1:
                    c(oVar);
                    break;
                case 2:
                    d(oVar);
                    break;
                default:
                    break;
            }
        }
    }

    public void b() {
    }
}
