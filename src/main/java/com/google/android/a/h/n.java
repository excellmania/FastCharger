package com.google.android.a.h;

public final class n {
    public byte[] a;
    private int b;
    private int c;
    private int d;

    public n(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public n(byte[] bArr, int i) {
        this.a = bArr;
        this.d = i;
    }

    private int f() {
        int i = 0;
        int i2 = 0;
        while (!b()) {
            i2++;
        }
        int i3 = (1 << i2) - 1;
        if (i2 > 0) {
            i = c(i2);
        }
        return i3 + i;
    }

    private void g() {
        boolean z = this.b >= 0 && this.c >= 0 && this.c < 8 && (this.b < this.d || (this.b == this.d && this.c == 0));
        b.b(z);
    }

    public int a() {
        return ((this.d - this.b) * 8) - this.c;
    }

    public void a(int i) {
        this.b = i / 8;
        this.c = i - (this.b * 8);
        g();
    }

    public void a(byte[] bArr) {
        a(bArr, bArr.length);
    }

    public void a(byte[] bArr, int i) {
        this.a = bArr;
        this.b = 0;
        this.c = 0;
        this.d = i;
    }

    public void b(int i) {
        this.b += i / 8;
        this.c += i % 8;
        if (this.c > 7) {
            this.b++;
            this.c -= 8;
        }
        g();
    }

    public boolean b() {
        return c(1) == 1;
    }

    public int c(int i) {
        int i2 = 0;
        if (i != 0) {
            int i3;
            int i4 = i / 8;
            int i5 = 0;
            for (i3 = 0; i3 < i4; i3++) {
                i -= 8;
                i5 |= ((this.c != 0 ? ((this.a[this.b] & 255) << this.c) | ((this.a[this.b + 1] & 255) >>> (8 - this.c)) : this.a[this.b]) & 255) << i;
                this.b++;
            }
            if (i > 0) {
                i3 = this.c + i;
                byte b = (byte) (255 >> (8 - i));
                if (i3 > 8) {
                    i2 = (b & (((this.a[this.b] & 255) << (i3 - 8)) | ((this.a[this.b + 1] & 255) >> (16 - i3)))) | i5;
                    this.b++;
                } else {
                    i2 = (b & ((this.a[this.b] & 255) >> (8 - i3))) | i5;
                    if (i3 == 8) {
                        this.b++;
                    }
                }
                this.c = i3 % 8;
            } else {
                i2 = i5;
            }
            g();
        }
        return i2;
    }

    public boolean c() {
        int i = this.b;
        int i2 = this.c;
        int i3 = 0;
        while (this.b < this.d && !b()) {
            i3++;
        }
        boolean z = this.b == this.d;
        this.b = i;
        this.c = i2;
        return !z && a() >= (i3 * 2) + 1;
    }

    public int d() {
        return f();
    }

    public int e() {
        int f = f();
        return (f % 2 == 0 ? -1 : 1) * ((f + 1) / 2);
    }
}
