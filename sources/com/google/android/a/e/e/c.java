package com.google.android.a.e.e;

import android.util.Log;
import android.util.Pair;
import com.google.android.a.e.m;
import com.google.android.a.h.d;
import com.google.android.a.h.n;
import com.google.android.a.h.o;
import com.google.android.a.r;
import java.util.Arrays;
import java.util.Collections;

final class c extends e {
    private static final byte[] b = new byte[]{(byte) 73, (byte) 68, (byte) 51};
    private final n c = new n(new byte[7]);
    private final o d = new o(Arrays.copyOf(b, 10));
    private final m e;
    private int f;
    private int g;
    private int h;
    private boolean i;
    private boolean j;
    private long k;
    private int l;
    private long m;
    private m n;
    private long o;

    public c(m mVar, m mVar2) {
        super(mVar);
        this.e = mVar2;
        mVar2.a(r.a());
        c();
    }

    private void a(m mVar, long j, int i, int i2) {
        this.f = 3;
        this.g = i;
        this.n = mVar;
        this.o = j;
        this.l = i2;
    }

    private boolean a(o oVar, byte[] bArr, int i) {
        int min = Math.min(oVar.b(), i - this.g);
        oVar.a(bArr, this.g, min);
        this.g = min + this.g;
        return this.g == i;
    }

    private void b(o oVar) {
        byte[] bArr = oVar.a;
        int d = oVar.d();
        int c = oVar.c();
        while (d < c) {
            int i = d + 1;
            d = bArr[d] & 255;
            if (this.h != 512 || d < 240 || d == 255) {
                switch (d | this.h) {
                    case 329:
                        this.h = 768;
                        d = i;
                        break;
                    case 511:
                        this.h = 512;
                        d = i;
                        break;
                    case 836:
                        this.h = 1024;
                        d = i;
                        break;
                    case 1075:
                        d();
                        oVar.b(i);
                        return;
                    default:
                        if (this.h == 256) {
                            d = i;
                            break;
                        }
                        this.h = 256;
                        d = i - 1;
                        break;
                }
            }
            this.i = (d & 1) == 0;
            e();
            oVar.b(i);
            return;
        }
        oVar.b(d);
    }

    private void c() {
        this.f = 0;
        this.g = 0;
        this.h = 256;
    }

    private void c(o oVar) {
        int min = Math.min(oVar.b(), this.l - this.g);
        this.n.a(oVar, min);
        this.g = min + this.g;
        if (this.g == this.l) {
            this.n.a(this.m, 1, this.l, 0, null);
            this.m += this.o;
            c();
        }
    }

    private void d() {
        this.f = 1;
        this.g = b.length;
        this.l = 0;
        this.d.b(0);
    }

    private void e() {
        this.f = 2;
        this.g = 0;
    }

    private void f() {
        this.e.a(this.d, 10);
        this.d.b(6);
        a(this.e, 0, 10, this.d.r() + 10);
    }

    private void g() {
        int i = 2;
        this.c.a(0);
        if (this.j) {
            this.c.b(10);
        } else {
            int c = this.c.c(2) + 1;
            if (c == 1) {
                Log.w("AdtsReader", "Detected AAC Main audio, but assuming AAC LC.");
            } else {
                i = c;
            }
            c = this.c.c(4);
            this.c.b(1);
            byte[] a = d.a(i, c, this.c.c(3));
            Pair a2 = d.a(a);
            r a3 = r.a(null, "audio/mp4a-latm", -1, -1, -1, ((Integer) a2.second).intValue(), ((Integer) a2.first).intValue(), Collections.singletonList(a), null);
            this.k = 1024000000 / ((long) a3.o);
            this.a.a(a3);
            this.j = true;
        }
        this.c.b(4);
        int c2 = (this.c.c(13) - 2) - 5;
        if (this.i) {
            c2 -= 2;
        }
        a(this.a, this.k, 0, c2);
    }

    public void a() {
        c();
    }

    public void a(long j, boolean z) {
        this.m = j;
    }

    public void a(o oVar) {
        while (oVar.b() > 0) {
            switch (this.f) {
                case 0:
                    b(oVar);
                    break;
                case 1:
                    if (!a(oVar, this.d.a, 10)) {
                        break;
                    }
                    f();
                    break;
                case 2:
                    if (!a(oVar, this.c.a, this.i ? 7 : 5)) {
                        break;
                    }
                    g();
                    break;
                case 3:
                    c(oVar);
                    break;
                default:
                    break;
            }
        }
    }

    public void b() {
    }
}
