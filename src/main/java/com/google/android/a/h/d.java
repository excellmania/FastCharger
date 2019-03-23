package com.google.android.a.h;

public final class d {
    private static final byte[] a = new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 1};
    private static final int[] b = new int[]{96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
    private static final int[] c = new int[]{0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0075  */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> a(byte[] r11) {
        /*
        r9 = 13;
        r8 = 5;
        r1 = 1;
        r2 = 0;
        r7 = 4;
        r4 = new com.google.android.a.h.n;
        r4.<init>(r11);
        r5 = r4.c(r8);
        r3 = r4.c(r7);
        r0 = 15;
        if (r3 != r0) goto L_0x005b;
    L_0x0017:
        r0 = 24;
        r0 = r4.c(r0);
    L_0x001d:
        r3 = r4.c(r7);
        if (r5 == r8) goto L_0x0027;
    L_0x0023:
        r6 = 29;
        if (r5 != r6) goto L_0x0077;
    L_0x0027:
        r5 = r4.c(r7);
        r0 = 15;
        if (r5 != r0) goto L_0x0068;
    L_0x002f:
        r0 = 24;
        r0 = r4.c(r0);
    L_0x0035:
        r5 = r4.c(r8);
        r6 = 22;
        if (r5 != r6) goto L_0x0077;
    L_0x003d:
        r3 = r4.c(r7);
        r10 = r3;
        r3 = r0;
        r0 = r10;
    L_0x0044:
        r4 = c;
        r0 = r4[r0];
        r4 = -1;
        if (r0 == r4) goto L_0x0075;
    L_0x004b:
        com.google.android.a.h.b.a(r1);
        r1 = java.lang.Integer.valueOf(r3);
        r0 = java.lang.Integer.valueOf(r0);
        r0 = android.util.Pair.create(r1, r0);
        return r0;
    L_0x005b:
        if (r3 >= r9) goto L_0x0066;
    L_0x005d:
        r0 = r1;
    L_0x005e:
        com.google.android.a.h.b.a(r0);
        r0 = b;
        r0 = r0[r3];
        goto L_0x001d;
    L_0x0066:
        r0 = r2;
        goto L_0x005e;
    L_0x0068:
        if (r5 >= r9) goto L_0x0073;
    L_0x006a:
        r0 = r1;
    L_0x006b:
        com.google.android.a.h.b.a(r0);
        r0 = b;
        r0 = r0[r5];
        goto L_0x0035;
    L_0x0073:
        r0 = r2;
        goto L_0x006b;
    L_0x0075:
        r1 = r2;
        goto L_0x004b;
    L_0x0077:
        r10 = r3;
        r3 = r0;
        r0 = r10;
        goto L_0x0044;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.a.h.d.a(byte[]):android.util.Pair");
    }

    public static byte[] a(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    public static byte[] a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[(a.length + i2)];
        System.arraycopy(a, 0, bArr2, 0, a.length);
        System.arraycopy(bArr, i, bArr2, a.length, i2);
        return bArr2;
    }
}
