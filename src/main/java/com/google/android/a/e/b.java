package com.google.android.a.e;

import com.google.android.a.g.f;
import java.io.EOFException;
import java.util.Arrays;

public final class b implements f {
    private static final byte[] a = new byte[4096];
    private final f b;
    private final long c;
    private long d;
    private byte[] e = new byte[8192];
    private int f;
    private int g;

    public b(f fVar, long j, long j2) {
        this.b = fVar;
        this.d = j;
        this.c = j2;
    }

    private int a(byte[] bArr, int i, int i2, int i3, boolean z) {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        int a = this.b.a(bArr, i + i3, i2 - i3);
        if (a != -1) {
            return i3 + a;
        }
        if (i3 == 0 && z) {
            return -1;
        }
        throw new EOFException();
    }

    private int d(byte[] bArr, int i, int i2) {
        if (this.g == 0) {
            return 0;
        }
        int min = Math.min(this.g, i2);
        System.arraycopy(this.e, 0, bArr, i, min);
        f(min);
        return min;
    }

    private void d(int i) {
        int i2 = this.f + i;
        if (i2 > this.e.length) {
            this.e = Arrays.copyOf(this.e, Math.max(this.e.length * 2, i2));
        }
    }

    private int e(int i) {
        int min = Math.min(this.g, i);
        f(min);
        return min;
    }

    private void f(int i) {
        this.g -= i;
        this.f = 0;
        System.arraycopy(this.e, i, this.e, 0, this.g);
    }

    private void g(int i) {
        if (i != -1) {
            this.d += (long) i;
        }
    }

    public int a(int i) {
        int e = e(i);
        if (e == 0) {
            e = a(a, 0, Math.min(i, a.length), 0, true);
        }
        g(e);
        return e;
    }

    public int a(byte[] bArr, int i, int i2) {
        int d = d(bArr, i, i2);
        if (d == 0) {
            d = a(bArr, i, i2, 0, true);
        }
        g(d);
        return d;
    }

    public void a() {
        this.f = 0;
    }

    public boolean a(int i, boolean z) {
        int e = e(i);
        while (e < i && e != -1) {
            e = a(a, -e, Math.min(i, a.length + e), e, z);
        }
        g(e);
        return e != -1;
    }

    public boolean a(byte[] bArr, int i, int i2, boolean z) {
        int d = d(bArr, i, i2);
        while (d < i2 && d != -1) {
            d = a(bArr, i, i2, d, z);
        }
        g(d);
        return d != -1;
    }

    public long b() {
        return this.d + ((long) this.f);
    }

    public void b(int i) {
        a(i, false);
    }

    public void b(byte[] bArr, int i, int i2) {
        a(bArr, i, i2, false);
    }

    public boolean b(int i, boolean z) {
        d(i);
        int min = Math.min(this.g - this.f, i);
        this.g += i - min;
        while (min < i) {
            min = a(this.e, this.f, i, min, z);
            if (min == -1) {
                return false;
            }
        }
        this.f += i;
        return true;
    }

    public boolean b(byte[] bArr, int i, int i2, boolean z) {
        if (!b(i2, z)) {
            return false;
        }
        System.arraycopy(this.e, this.f - i2, bArr, i, i2);
        return true;
    }

    public long c() {
        return this.d;
    }

    public void c(int i) {
        b(i, false);
    }

    public void c(byte[] bArr, int i, int i2) {
        b(bArr, i, i2, false);
    }

    public long d() {
        return this.c;
    }
}
