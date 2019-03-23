package com.google.android.a.e.e;

import android.support.v4.media.TransportMediator;
import com.google.android.a.e.e;
import com.google.android.a.e.f;
import com.google.android.a.e.g;
import com.google.android.a.e.j;
import com.google.android.a.e.l;
import com.google.android.a.h.n;
import com.google.android.a.h.o;
import com.google.android.a.h.x;

public final class b implements e {
    private static final int a = x.e("ID3");
    private final long b;
    private final o c;
    private c d;
    private boolean e;

    public b() {
        this(0);
    }

    public b(long j) {
        this.b = j;
        this.c = new o(200);
    }

    public int a(f fVar, j jVar) {
        int a = fVar.a(this.c.a, 0, 200);
        if (a == -1) {
            return -1;
        }
        this.c.b(0);
        this.c.a(a);
        if (!this.e) {
            this.d.a(this.b, true);
            this.e = true;
        }
        this.d.a(this.c);
        return 0;
    }

    public void a(g gVar) {
        this.d = new c(gVar.a_(0), gVar.a_(1));
        gVar.a();
        gVar.a(l.f);
    }

    public boolean a(f fVar) {
        int i;
        o oVar = new o(10);
        n nVar = new n(oVar.a);
        int i2 = 0;
        while (true) {
            fVar.c(oVar.a, 0, 10);
            oVar.b(0);
            if (oVar.j() != a) {
                break;
            }
            i = ((((oVar.a[6] & TransportMediator.KEYCODE_MEDIA_PAUSE) << 21) | ((oVar.a[7] & TransportMediator.KEYCODE_MEDIA_PAUSE) << 14)) | ((oVar.a[8] & TransportMediator.KEYCODE_MEDIA_PAUSE) << 7)) | (oVar.a[9] & TransportMediator.KEYCODE_MEDIA_PAUSE);
            i2 += i + 10;
            fVar.c(i);
        }
        fVar.a();
        fVar.c(i2);
        i = 0;
        int i3 = 0;
        int i4 = i2;
        while (true) {
            fVar.c(oVar.a, 0, 2);
            oVar.b(0);
            if ((oVar.g() & 65526) != 65520) {
                fVar.a();
                i4++;
                if (i4 - i2 >= 8192) {
                    return false;
                }
                fVar.c(i4);
                i = 0;
                i3 = 0;
            } else {
                i++;
                if (i >= 4 && i3 > 188) {
                    return true;
                }
                fVar.c(oVar.a, 0, 4);
                nVar.a(14);
                int c = nVar.c(13);
                if (c <= 6) {
                    return false;
                }
                fVar.c(c - 6);
                i3 += c;
            }
        }
    }

    public void b() {
        this.e = false;
        this.d.a();
    }

    public void c() {
    }
}
