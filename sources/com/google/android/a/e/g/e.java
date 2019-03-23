package com.google.android.a.e.g;

import com.google.android.a.e.f;

final class e {
    private static final long[] a = new long[]{128, 64, 32, 16, 8, 4, 2, 1};
    private final byte[] b = new byte[8];
    private int c;
    private int d;

    public static int a(int i) {
        for (int i2 = 0; i2 < a.length; i2++) {
            if ((a[i2] & ((long) i)) != 0) {
                return i2 + 1;
            }
        }
        return -1;
    }

    public static long a(byte[] bArr, int i, boolean z) {
        long j = ((long) bArr[0]) & 255;
        if (z) {
            j &= a[i - 1] ^ -1;
        }
        long j2 = j;
        for (int i2 = 1; i2 < i; i2++) {
            j2 = (j2 << 8) | (((long) bArr[i2]) & 255);
        }
        return j2;
    }

    public long a(f fVar, boolean z, boolean z2, int i) {
        if (this.c == 0) {
            if (!fVar.a(this.b, 0, 1, z)) {
                return -1;
            }
            this.d = a(this.b[0] & 255);
            if (this.d == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.c = 1;
        }
        if (this.d > i) {
            this.c = 0;
            return -2;
        }
        if (this.d != 1) {
            fVar.b(this.b, 1, this.d - 1);
        }
        this.c = 0;
        return a(this.b, this.d, z2);
    }

    public void a() {
        this.c = 0;
        this.d = 0;
    }

    public int b() {
        return this.d;
    }
}
