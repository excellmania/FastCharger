package com.google.android.a.e.d;

import com.google.android.a.h.b;

final class g {
    public final byte[] a;
    private int b;
    private int c;
    private int d;

    public g(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public g(byte[] bArr, int i) {
        this.a = bArr;
        this.b = i * 8;
    }

    public int a(int i) {
        b.b(b() + i <= this.b);
        if (i == 0) {
            return 0;
        }
        long min;
        int i2;
        int i3;
        int i4;
        if (this.d != 0) {
            min = Math.min(i, 8 - this.d);
            i2 = (255 >>> (8 - min)) & (this.a[this.c] >>> this.d);
            this.d += min;
            if (this.d == 8) {
                this.c++;
                this.d = 0;
            }
        } else {
            min = 0;
            i2 = 0;
        }
        if (i - min > 7) {
            int i5 = (i - min) / 8;
            i3 = i2;
            i2 = 0;
            while (i2 < i5) {
                long j = (long) i3;
                byte[] bArr = this.a;
                int i6 = this.c;
                this.c = i6 + 1;
                min += 8;
                i2++;
                i3 = (int) (j | ((((long) bArr[i6]) & 255) << min));
            }
            int i7 = min;
            i4 = i3;
            i3 = i7;
        } else {
            i3 = min;
            i4 = i2;
        }
        if (i > i3) {
            i2 = i - i3;
            i4 |= ((255 >>> (8 - i2)) & this.a[this.c]) << i3;
            this.d += i2;
        }
        return i4;
    }

    public boolean a() {
        return a(1) == 1;
    }

    public int b() {
        return (this.c * 8) + this.d;
    }

    public void b(int i) {
        b.b(b() + i <= this.b);
        this.c += i / 8;
        this.d += i % 8;
        if (this.d > 7) {
            this.c++;
            this.d -= 8;
        }
    }
}
