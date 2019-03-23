package com.google.android.a.e.c;

import com.google.android.a.h.x;

final class d {

    public static final class a {
        public final long[] a;
        public final int[] b;
        public final int c;
        public final long[] d;
        public final int[] e;

        public a(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
            this.a = jArr;
            this.b = iArr;
            this.c = i;
            this.d = jArr2;
            this.e = iArr2;
        }
    }

    public static a a(int i, long[] jArr, int[] iArr, long j) {
        int i2 = 8192 / i;
        int i3 = 0;
        int i4 = 0;
        while (i3 < iArr.length) {
            i3++;
            i4 = x.a(iArr[i3], i2) + i4;
        }
        long[] jArr2 = new long[i4];
        int[] iArr2 = new int[i4];
        int i5 = 0;
        long[] jArr3 = new long[i4];
        int[] iArr3 = new int[i4];
        int i6 = 0;
        i4 = 0;
        i3 = 0;
        while (true) {
            int i7 = i4;
            i4 = i5;
            i5 = i6;
            i6 = i7;
            if (i3 >= iArr.length) {
                return new a(jArr2, iArr2, i4, jArr3, iArr3);
            }
            int i8 = iArr[i3];
            long j2 = jArr[i3];
            i7 = i6;
            i6 = i5;
            i5 = i4;
            i4 = i7;
            while (i8 > 0) {
                int min = Math.min(i2, i8);
                jArr2[i4] = j2;
                iArr2[i4] = i * min;
                int max = Math.max(i5, iArr2[i4]);
                jArr3[i4] = ((long) i6) * j;
                iArr3[i4] = 1;
                j2 += (long) iArr2[i4];
                i4++;
                i8 -= min;
                i6 += min;
                i5 = max;
            }
            i3++;
        }
    }
}
