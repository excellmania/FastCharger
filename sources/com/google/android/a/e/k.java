package com.google.android.a.e;

import android.support.v4.media.TransportMediator;
import com.google.android.a.g.f;
import com.google.android.a.h.o;
import com.google.android.a.u;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.concurrent.LinkedBlockingDeque;

final class k {
    private final com.google.android.a.g.b a;
    private final int b;
    private final a c = new a();
    private final LinkedBlockingDeque<com.google.android.a.g.a> d = new LinkedBlockingDeque();
    private final b e = new b();
    private final o f = new o(32);
    private long g;
    private long h;
    private com.google.android.a.g.a i;
    private int j = this.b;

    private static final class a {
        private int a = 1000;
        private long[] b = new long[this.a];
        private int[] c = new int[this.a];
        private int[] d = new int[this.a];
        private long[] e = new long[this.a];
        private byte[][] f = new byte[this.a][];
        private int g;
        private int h;
        private int i;
        private int j;

        public long a(int i) {
            int b = b() - i;
            boolean z = b >= 0 && b <= this.g;
            com.google.android.a.h.b.a(z);
            if (b != 0) {
                this.g -= b;
                this.j = ((this.j + this.a) - b) % this.a;
                return this.b[this.j];
            } else if (this.h == 0) {
                return 0;
            } else {
                int i2 = (this.j == 0 ? this.a : this.j) - 1;
                return ((long) this.c[i2]) + this.b[i2];
            }
        }

        public synchronized long a(long j) {
            long j2 = -1;
            synchronized (this) {
                if (this.g != 0 && j >= this.e[this.i]) {
                    if (j <= this.e[(this.j == 0 ? this.a : this.j) - 1]) {
                        int i = 0;
                        int i2 = this.i;
                        int i3 = -1;
                        while (i2 != this.j && this.e[i2] <= j) {
                            if ((this.d[i2] & 1) != 0) {
                                i3 = i;
                            }
                            i2 = (i2 + 1) % this.a;
                            i++;
                        }
                        if (i3 != -1) {
                            this.g -= i3;
                            this.i = (this.i + i3) % this.a;
                            this.h += i3;
                            j2 = this.b[this.i];
                        }
                    }
                }
            }
            return j2;
        }

        public void a() {
            this.h = 0;
            this.i = 0;
            this.j = 0;
            this.g = 0;
        }

        public synchronized void a(long j, int i, long j2, int i2, byte[] bArr) {
            this.e[this.j] = j;
            this.b[this.j] = j2;
            this.c[this.j] = i2;
            this.d[this.j] = i;
            this.f[this.j] = bArr;
            this.g++;
            if (this.g == this.a) {
                int i3 = this.a + 1000;
                long[] jArr = new long[i3];
                long[] jArr2 = new long[i3];
                int[] iArr = new int[i3];
                int[] iArr2 = new int[i3];
                byte[][] bArr2 = new byte[i3][];
                int i4 = this.a - this.i;
                System.arraycopy(this.b, this.i, jArr, 0, i4);
                System.arraycopy(this.e, this.i, jArr2, 0, i4);
                System.arraycopy(this.d, this.i, iArr, 0, i4);
                System.arraycopy(this.c, this.i, iArr2, 0, i4);
                System.arraycopy(this.f, this.i, bArr2, 0, i4);
                int i5 = this.i;
                System.arraycopy(this.b, 0, jArr, i4, i5);
                System.arraycopy(this.e, 0, jArr2, i4, i5);
                System.arraycopy(this.d, 0, iArr, i4, i5);
                System.arraycopy(this.c, 0, iArr2, i4, i5);
                System.arraycopy(this.f, 0, bArr2, i4, i5);
                this.b = jArr;
                this.e = jArr2;
                this.d = iArr;
                this.c = iArr2;
                this.f = bArr2;
                this.i = 0;
                this.j = this.a;
                this.g = this.a;
                this.a = i3;
            } else {
                this.j++;
                if (this.j == this.a) {
                    this.j = 0;
                }
            }
        }

        public synchronized boolean a(u uVar, b bVar) {
            boolean z;
            if (this.g == 0) {
                z = false;
            } else {
                uVar.e = this.e[this.i];
                uVar.c = this.c[this.i];
                uVar.d = this.d[this.i];
                bVar.a = this.b[this.i];
                bVar.b = this.f[this.i];
                z = true;
            }
            return z;
        }

        public int b() {
            return this.h + this.g;
        }

        public int c() {
            return this.h;
        }

        public synchronized long d() {
            long j;
            this.g--;
            int i = this.i;
            this.i = i + 1;
            this.h++;
            if (this.i == this.a) {
                this.i = 0;
            }
            if (this.g > 0) {
                j = this.b[this.i];
            } else {
                j = this.b[i] + ((long) this.c[i]);
            }
            return j;
        }
    }

    private static final class b {
        public long a;
        public byte[] b;

        private b() {
        }
    }

    public k(com.google.android.a.g.b bVar) {
        this.a = bVar;
        this.b = bVar.c();
    }

    private void a(long j, ByteBuffer byteBuffer, int i) {
        while (i > 0) {
            c(j);
            int i2 = (int) (j - this.g);
            int min = Math.min(i, this.b - i2);
            com.google.android.a.g.a aVar = (com.google.android.a.g.a) this.d.peek();
            byteBuffer.put(aVar.a, aVar.a(i2), min);
            j += (long) min;
            i -= min;
        }
    }

    private void a(long j, byte[] bArr, int i) {
        int i2 = 0;
        while (i2 < i) {
            c(j);
            int i3 = (int) (j - this.g);
            int min = Math.min(i - i2, this.b - i3);
            com.google.android.a.g.a aVar = (com.google.android.a.g.a) this.d.peek();
            System.arraycopy(aVar.a, aVar.a(i3), bArr, i2, min);
            j += (long) min;
            i2 += min;
        }
    }

    private void a(u uVar, b bVar) {
        long j;
        int i = 0;
        long j2 = bVar.a;
        a(j2, this.f.a, 1);
        long j3 = 1 + j2;
        byte b = this.f.a[0];
        int i2 = (b & 128) != 0 ? 1 : 0;
        int i3 = b & TransportMediator.KEYCODE_MEDIA_PAUSE;
        if (uVar.a.a == null) {
            uVar.a.a = new byte[16];
        }
        a(j3, uVar.a.a, i3);
        j3 += (long) i3;
        if (i2 != 0) {
            a(j3, this.f.a, 2);
            j3 += 2;
            this.f.b(0);
            i3 = this.f.g();
            j = j3;
        } else {
            i3 = 1;
            j = j3;
        }
        int[] iArr = uVar.a.d;
        if (iArr == null || iArr.length < i3) {
            iArr = new int[i3];
        }
        int[] iArr2 = uVar.a.e;
        if (iArr2 == null || iArr2.length < i3) {
            iArr2 = new int[i3];
        }
        if (i2 != 0) {
            i2 = i3 * 6;
            b(this.f, i2);
            a(j, this.f.a, i2);
            j += (long) i2;
            this.f.b(0);
            while (i < i3) {
                iArr[i] = this.f.g();
                iArr2[i] = this.f.s();
                i++;
            }
        } else {
            iArr[0] = 0;
            iArr2[0] = uVar.c - ((int) (j - bVar.a));
        }
        uVar.a.a(i3, iArr, iArr2, bVar.b, uVar.a.a, 1);
        i2 = (int) (j - bVar.a);
        bVar.a += (long) i2;
        uVar.c -= i2;
    }

    private int b(int i) {
        if (this.j == this.b) {
            this.j = 0;
            this.i = this.a.a();
            this.d.add(this.i);
        }
        return Math.min(i, this.b - this.j);
    }

    private void b(long j) {
        int i = (int) (j - this.g);
        int i2 = i % this.b;
        i = (this.d.size() - (i / this.b)) - 1;
        int i3 = i2 == 0 ? i + 1 : i;
        for (int i4 = 0; i4 < i3; i4++) {
            this.a.a((com.google.android.a.g.a) this.d.removeLast());
        }
        this.i = (com.google.android.a.g.a) this.d.peekLast();
        this.j = i2 == 0 ? this.b : i2;
    }

    private static void b(o oVar, int i) {
        if (oVar.c() < i) {
            oVar.a(new byte[i], i);
        }
    }

    private void c(long j) {
        int i = ((int) (j - this.g)) / this.b;
        for (int i2 = 0; i2 < i; i2++) {
            this.a.a((com.google.android.a.g.a) this.d.remove());
            this.g += (long) this.b;
        }
    }

    public int a(f fVar, int i, boolean z) {
        int a = fVar.a(this.i.a, this.i.a(this.j), b(i));
        if (a != -1) {
            this.j += a;
            this.h += (long) a;
            return a;
        } else if (z) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    public int a(f fVar, int i, boolean z) {
        int a = fVar.a(this.i.a, this.i.a(this.j), b(i));
        if (a != -1) {
            this.j += a;
            this.h += (long) a;
            return a;
        } else if (z) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    public void a() {
        this.c.a();
        while (!this.d.isEmpty()) {
            this.a.a((com.google.android.a.g.a) this.d.remove());
        }
        this.g = 0;
        this.h = 0;
        this.i = null;
        this.j = this.b;
    }

    public void a(int i) {
        this.h = this.c.a(i);
        b(this.h);
    }

    public void a(long j, int i, long j2, int i2, byte[] bArr) {
        this.c.a(j, i, j2, i2, bArr);
    }

    public void a(o oVar, int i) {
        while (i > 0) {
            int b = b(i);
            oVar.a(this.i.a, this.i.a(this.j), b);
            this.j += b;
            this.h += (long) b;
            i -= b;
        }
    }

    public boolean a(long j) {
        long a = this.c.a(j);
        if (a == -1) {
            return false;
        }
        c(a);
        return true;
    }

    public boolean a(u uVar) {
        return this.c.a(uVar, this.e);
    }

    public int b() {
        return this.c.b();
    }

    public boolean b(u uVar) {
        if (!this.c.a(uVar, this.e)) {
            return false;
        }
        if (uVar.a()) {
            a(uVar, this.e);
        }
        uVar.a(uVar.c);
        a(this.e.a, uVar.b, uVar.c);
        c(this.c.d());
        return true;
    }

    public int c() {
        return this.c.c();
    }

    public void d() {
        c(this.c.d());
    }

    public long e() {
        return this.h;
    }
}
