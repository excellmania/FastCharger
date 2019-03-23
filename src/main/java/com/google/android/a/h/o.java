package com.google.android.a.h;

import java.nio.charset.Charset;

public final class o {
    public byte[] a;
    private int b;
    private int c;

    public o(int i) {
        this.a = new byte[i];
        this.c = this.a.length;
    }

    public o(byte[] bArr) {
        this.a = bArr;
        this.c = bArr.length;
    }

    public o(byte[] bArr, int i) {
        this.a = bArr;
        this.c = i;
    }

    public String a(int i, Charset charset) {
        String str = new String(this.a, this.b, i, charset);
        this.b += i;
        return str;
    }

    public void a() {
        this.b = 0;
        this.c = 0;
    }

    public void a(int i) {
        boolean z = i >= 0 && i <= this.a.length;
        b.a(z);
        this.c = i;
    }

    public void a(n nVar, int i) {
        a(nVar.a, 0, i);
        nVar.a(0);
    }

    public void a(byte[] bArr, int i) {
        this.a = bArr;
        this.c = i;
        this.b = 0;
    }

    public void a(byte[] bArr, int i, int i2) {
        System.arraycopy(this.a, this.b, bArr, i, i2);
        this.b += i2;
    }

    public int b() {
        return this.c - this.b;
    }

    public void b(int i) {
        boolean z = i >= 0 && i <= this.c;
        b.a(z);
        this.b = i;
    }

    public int c() {
        return this.c;
    }

    public void c(int i) {
        b(this.b + i);
    }

    public int d() {
        return this.b;
    }

    public String d(int i) {
        return a(i, Charset.defaultCharset());
    }

    public int e() {
        return this.a == null ? 0 : this.a.length;
    }

    public int f() {
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        return bArr[i] & 255;
    }

    public int g() {
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        int i2 = (bArr[i] & 255) << 8;
        byte[] bArr2 = this.a;
        int i3 = this.b;
        this.b = i3 + 1;
        return i2 | (bArr2[i3] & 255);
    }

    public int h() {
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        int i2 = bArr[i] & 255;
        byte[] bArr2 = this.a;
        int i3 = this.b;
        this.b = i3 + 1;
        return i2 | ((bArr2[i3] & 255) << 8);
    }

    public short i() {
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        int i2 = (bArr[i] & 255) << 8;
        byte[] bArr2 = this.a;
        int i3 = this.b;
        this.b = i3 + 1;
        return (short) (i2 | (bArr2[i3] & 255));
    }

    public int j() {
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        int i2 = (bArr[i] & 255) << 16;
        byte[] bArr2 = this.a;
        int i3 = this.b;
        this.b = i3 + 1;
        i2 |= (bArr2[i3] & 255) << 8;
        bArr2 = this.a;
        i3 = this.b;
        this.b = i3 + 1;
        return i2 | (bArr2[i3] & 255);
    }

    public long k() {
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        long j = (((long) bArr[i]) & 255) << 24;
        byte[] bArr2 = this.a;
        int i2 = this.b;
        this.b = i2 + 1;
        j |= (((long) bArr2[i2]) & 255) << 16;
        bArr2 = this.a;
        i2 = this.b;
        this.b = i2 + 1;
        j |= (((long) bArr2[i2]) & 255) << 8;
        bArr2 = this.a;
        i2 = this.b;
        this.b = i2 + 1;
        return j | (((long) bArr2[i2]) & 255);
    }

    public long l() {
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        long j = ((long) bArr[i]) & 255;
        byte[] bArr2 = this.a;
        int i2 = this.b;
        this.b = i2 + 1;
        j |= (((long) bArr2[i2]) & 255) << 8;
        bArr2 = this.a;
        i2 = this.b;
        this.b = i2 + 1;
        j |= (((long) bArr2[i2]) & 255) << 16;
        bArr2 = this.a;
        i2 = this.b;
        this.b = i2 + 1;
        return j | ((((long) bArr2[i2]) & 255) << 24);
    }

    public int m() {
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        int i2 = (bArr[i] & 255) << 24;
        byte[] bArr2 = this.a;
        int i3 = this.b;
        this.b = i3 + 1;
        i2 |= (bArr2[i3] & 255) << 16;
        bArr2 = this.a;
        i3 = this.b;
        this.b = i3 + 1;
        i2 |= (bArr2[i3] & 255) << 8;
        bArr2 = this.a;
        i3 = this.b;
        this.b = i3 + 1;
        return i2 | (bArr2[i3] & 255);
    }

    public int n() {
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        int i2 = bArr[i] & 255;
        byte[] bArr2 = this.a;
        int i3 = this.b;
        this.b = i3 + 1;
        i2 |= (bArr2[i3] & 255) << 8;
        bArr2 = this.a;
        i3 = this.b;
        this.b = i3 + 1;
        i2 |= (bArr2[i3] & 255) << 16;
        bArr2 = this.a;
        i3 = this.b;
        this.b = i3 + 1;
        return i2 | ((bArr2[i3] & 255) << 24);
    }

    public long o() {
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        long j = (((long) bArr[i]) & 255) << 56;
        byte[] bArr2 = this.a;
        int i2 = this.b;
        this.b = i2 + 1;
        j |= (((long) bArr2[i2]) & 255) << 48;
        bArr2 = this.a;
        i2 = this.b;
        this.b = i2 + 1;
        j |= (((long) bArr2[i2]) & 255) << 40;
        bArr2 = this.a;
        i2 = this.b;
        this.b = i2 + 1;
        j |= (((long) bArr2[i2]) & 255) << 32;
        bArr2 = this.a;
        i2 = this.b;
        this.b = i2 + 1;
        j |= (((long) bArr2[i2]) & 255) << 24;
        bArr2 = this.a;
        i2 = this.b;
        this.b = i2 + 1;
        j |= (((long) bArr2[i2]) & 255) << 16;
        bArr2 = this.a;
        i2 = this.b;
        this.b = i2 + 1;
        j |= (((long) bArr2[i2]) & 255) << 8;
        bArr2 = this.a;
        i2 = this.b;
        this.b = i2 + 1;
        return j | (((long) bArr2[i2]) & 255);
    }

    public long p() {
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        long j = ((long) bArr[i]) & 255;
        byte[] bArr2 = this.a;
        int i2 = this.b;
        this.b = i2 + 1;
        j |= (((long) bArr2[i2]) & 255) << 8;
        bArr2 = this.a;
        i2 = this.b;
        this.b = i2 + 1;
        j |= (((long) bArr2[i2]) & 255) << 16;
        bArr2 = this.a;
        i2 = this.b;
        this.b = i2 + 1;
        j |= (((long) bArr2[i2]) & 255) << 24;
        bArr2 = this.a;
        i2 = this.b;
        this.b = i2 + 1;
        j |= (((long) bArr2[i2]) & 255) << 32;
        bArr2 = this.a;
        i2 = this.b;
        this.b = i2 + 1;
        j |= (((long) bArr2[i2]) & 255) << 40;
        bArr2 = this.a;
        i2 = this.b;
        this.b = i2 + 1;
        j |= (((long) bArr2[i2]) & 255) << 48;
        bArr2 = this.a;
        i2 = this.b;
        this.b = i2 + 1;
        return j | ((((long) bArr2[i2]) & 255) << 56);
    }

    public int q() {
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        int i2 = (bArr[i] & 255) << 8;
        byte[] bArr2 = this.a;
        int i3 = this.b;
        this.b = i3 + 1;
        i2 |= bArr2[i3] & 255;
        this.b += 2;
        return i2;
    }

    public int r() {
        return (((f() << 21) | (f() << 14)) | (f() << 7)) | f();
    }

    public int s() {
        int m = m();
        if (m >= 0) {
            return m;
        }
        throw new IllegalStateException("Top bit not zero: " + m);
    }

    public int t() {
        int n = n();
        if (n >= 0) {
            return n;
        }
        throw new IllegalStateException("Top bit not zero: " + n);
    }

    public long u() {
        long o = o();
        if (o >= 0) {
            return o;
        }
        throw new IllegalStateException("Top bit not zero: " + o);
    }

    public double v() {
        return Double.longBitsToDouble(o());
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x004b A:{LOOP_START, LOOP:1: B:13:0x004b->B:12:0x0044, PHI: r0 r2 } */
    /* JADX WARNING: Removed duplicated region for block: B:7:0x0024  */
    public long w() {
        /*
        r11 = this;
        r5 = 7;
        r10 = 6;
        r0 = 1;
        r1 = 0;
        r2 = r11.a;
        r3 = r11.b;
        r2 = r2[r3];
        r2 = (long) r2;
        r4 = r5;
    L_0x000c:
        if (r4 < 0) goto L_0x0022;
    L_0x000e:
        r6 = r0 << r4;
        r6 = (long) r6;
        r6 = r6 & r2;
        r8 = 0;
        r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        if (r6 != 0) goto L_0x0041;
    L_0x0018:
        if (r4 >= r10) goto L_0x003d;
    L_0x001a:
        r1 = r0 << r4;
        r1 = r1 + -1;
        r6 = (long) r1;
        r2 = r2 & r6;
        r1 = 7 - r4;
    L_0x0022:
        if (r1 != 0) goto L_0x004b;
    L_0x0024:
        r0 = new java.lang.NumberFormatException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r4 = "Invalid UTF-8 sequence first byte: ";
        r1 = r1.append(r4);
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x003d:
        if (r4 != r5) goto L_0x0022;
    L_0x003f:
        r1 = r0;
        goto L_0x0022;
    L_0x0041:
        r4 = r4 + -1;
        goto L_0x000c;
    L_0x0044:
        r2 = r2 << r10;
        r4 = r4 & 63;
        r4 = (long) r4;
        r2 = r2 | r4;
        r0 = r0 + 1;
    L_0x004b:
        if (r0 >= r1) goto L_0x0073;
    L_0x004d:
        r4 = r11.a;
        r5 = r11.b;
        r5 = r5 + r0;
        r4 = r4[r5];
        r5 = r4 & 192;
        r6 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        if (r5 == r6) goto L_0x0044;
    L_0x005a:
        r0 = new java.lang.NumberFormatException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r4 = "Invalid UTF-8 sequence continuation byte: ";
        r1 = r1.append(r4);
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x0073:
        r0 = r11.b;
        r0 = r0 + r1;
        r11.b = r0;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.a.h.o.w():long");
    }
}
