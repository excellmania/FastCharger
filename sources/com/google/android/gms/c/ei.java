package com.google.android.gms.c;

import android.support.v4.media.TransportMediator;

public final class ei {
    private final byte[] a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    private int h;
    private int i = 64;
    private int j = 67108864;

    private ei(byte[] bArr, int i, int i2) {
        this.a = bArr;
        this.b = i;
        this.c = i + i2;
        this.e = i;
    }

    public static long a(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    public static ei a(byte[] bArr, int i, int i2) {
        return new ei(bArr, i, i2);
    }

    private void r() {
        this.c += this.d;
        int i = this.c;
        if (i > this.g) {
            this.d = i - this.g;
            this.c -= this.d;
            return;
        }
        this.d = 0;
    }

    public int a() {
        if (o()) {
            this.f = 0;
            return 0;
        }
        this.f = j();
        if (this.f != 0) {
            return this.f;
        }
        throw ep.d();
    }

    public void a(int i) {
        if (this.f != i) {
            throw ep.e();
        }
    }

    public void a(eq eqVar) {
        int j = j();
        if (this.h >= this.i) {
            throw ep.g();
        }
        j = c(j);
        this.h++;
        eqVar.b(this);
        a(0);
        this.h--;
        d(j);
    }

    public byte[] a(int i, int i2) {
        if (i2 == 0) {
            return et.h;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.a, this.b + i, bArr, 0, i2);
        return bArr;
    }

    public void b() {
        int a;
        do {
            a = a();
            if (a == 0) {
                return;
            }
        } while (b(a));
    }

    public boolean b(int i) {
        switch (et.a(i)) {
            case 0:
                e();
                return true;
            case 1:
                m();
                return true;
            case 2:
                f(j());
                return true;
            case 3:
                b();
                a(et.a(et.b(i), 4));
                return true;
            case 4:
                return false;
            case 5:
                l();
                return true;
            default:
                throw ep.f();
        }
    }

    public int c(int i) {
        if (i < 0) {
            throw ep.b();
        }
        int i2 = this.e + i;
        int i3 = this.g;
        if (i2 > i3) {
            throw ep.a();
        }
        this.g = i2;
        r();
        return i3;
    }

    public long c() {
        return k();
    }

    public long d() {
        return k();
    }

    public void d(int i) {
        this.g = i;
        r();
    }

    public int e() {
        return j();
    }

    public void e(int i) {
        if (i > this.e - this.b) {
            throw new IllegalArgumentException("Position " + i + " is beyond current " + (this.e - this.b));
        } else if (i < 0) {
            throw new IllegalArgumentException("Bad position " + i);
        } else {
            this.e = this.b + i;
        }
    }

    public void f(int i) {
        if (i < 0) {
            throw ep.b();
        } else if (this.e + i > this.g) {
            f(this.g - this.e);
            throw ep.a();
        } else if (i <= this.c - this.e) {
            this.e += i;
        } else {
            throw ep.a();
        }
    }

    public boolean f() {
        return j() != 0;
    }

    public String g() {
        int j = j();
        if (j < 0) {
            throw ep.b();
        } else if (j > this.c - this.e) {
            throw ep.a();
        } else {
            String str = new String(this.a, this.e, j, eo.a);
            this.e = j + this.e;
            return str;
        }
    }

    public byte[] h() {
        int j = j();
        if (j < 0) {
            throw ep.b();
        } else if (j == 0) {
            return et.h;
        } else {
            if (j > this.c - this.e) {
                throw ep.a();
            }
            byte[] bArr = new byte[j];
            System.arraycopy(this.a, this.e, bArr, 0, j);
            this.e = j + this.e;
            return bArr;
        }
    }

    public long i() {
        return a(k());
    }

    public int j() {
        byte q = q();
        if (q >= (byte) 0) {
            return q;
        }
        int i = q & TransportMediator.KEYCODE_MEDIA_PAUSE;
        byte q2 = q();
        if (q2 >= (byte) 0) {
            return i | (q2 << 7);
        }
        i |= (q2 & TransportMediator.KEYCODE_MEDIA_PAUSE) << 7;
        q2 = q();
        if (q2 >= (byte) 0) {
            return i | (q2 << 14);
        }
        i |= (q2 & TransportMediator.KEYCODE_MEDIA_PAUSE) << 14;
        q2 = q();
        if (q2 >= (byte) 0) {
            return i | (q2 << 21);
        }
        i |= (q2 & TransportMediator.KEYCODE_MEDIA_PAUSE) << 21;
        q2 = q();
        i |= q2 << 28;
        if (q2 >= (byte) 0) {
            return i;
        }
        for (int i2 = 0; i2 < 5; i2++) {
            if (q() >= (byte) 0) {
                return i;
            }
        }
        throw ep.c();
    }

    public long k() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte q = q();
            j |= ((long) (q & TransportMediator.KEYCODE_MEDIA_PAUSE)) << i;
            if ((q & 128) == 0) {
                return j;
            }
        }
        throw ep.c();
    }

    public int l() {
        return (((q() & 255) | ((q() & 255) << 8)) | ((q() & 255) << 16)) | ((q() & 255) << 24);
    }

    public long m() {
        byte q = q();
        byte q2 = q();
        return ((((((((((long) q2) & 255) << 8) | (((long) q) & 255)) | ((((long) q()) & 255) << 16)) | ((((long) q()) & 255) << 24)) | ((((long) q()) & 255) << 32)) | ((((long) q()) & 255) << 40)) | ((((long) q()) & 255) << 48)) | ((((long) q()) & 255) << 56);
    }

    public int n() {
        if (this.g == ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
            return -1;
        }
        return this.g - this.e;
    }

    public boolean o() {
        return this.e == this.c;
    }

    public int p() {
        return this.e - this.b;
    }

    public byte q() {
        if (this.e == this.c) {
            throw ep.a();
        }
        byte[] bArr = this.a;
        int i = this.e;
        this.e = i + 1;
        return bArr[i];
    }
}
