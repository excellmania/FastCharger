package com.google.android.gms.c;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class uv {
    private static long a(long j) {
        return (j >>> 47) ^ j;
    }

    private static long a(long j, long j2) {
        long j3 = (j2 ^ j) * -4132994306676758123L;
        j3 = ((j3 ^ (j3 >>> 47)) ^ j) * -4132994306676758123L;
        return (j3 ^ (j3 >>> 47)) * -4132994306676758123L;
    }

    public static long a(byte[] bArr) {
        long j = -6505348102511208375L;
        long a = bArr.length <= 32 ? a(bArr, -1397348546323613475L) : bArr.length <= 64 ? b(bArr) : c(bArr);
        long a2 = bArr.length >= 8 ? a(bArr, 0) : -6505348102511208375L;
        if (bArr.length >= 9) {
            j = a(bArr, bArr.length - 8);
        }
        a = a(a + j, a2);
        return (a == 0 || a == 1) ? a - 2 : a;
    }

    private static long a(byte[] bArr, int i) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr, i, 8);
        wrap.order(ByteOrder.LITTLE_ENDIAN);
        return wrap.getLong();
    }

    private static long a(byte[] bArr, int i, int i2) {
        long j = 0;
        for (int i3 = 0; i3 < Math.min(i2, 8); i3++) {
            j |= (((long) bArr[i + i3]) & 255) << (i3 * 8);
        }
        return j;
    }

    private static long a(byte[] bArr, long j) {
        int length = bArr.length & -8;
        int length2 = bArr.length & 7;
        long length3 = j ^ (((long) bArr.length) * -4132994306676758123L);
        int i = 0;
        while (i < length) {
            long a = (length3 ^ (a(a(bArr, i) * -4132994306676758123L) * -4132994306676758123L)) * -4132994306676758123L;
            i += 8;
            length3 = a;
        }
        if (length2 != 0) {
            length3 = (length3 ^ a(bArr, length, length2)) * -4132994306676758123L;
        }
        return a(a(length3) * -4132994306676758123L);
    }

    private static void a(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long a = a(bArr, i);
        long a2 = a(bArr, i + 8);
        long a3 = a(bArr, i + 16);
        long a4 = a(bArr, i + 24);
        a += j;
        a2 = (a2 + a) + a3;
        a3 = Long.rotateRight(a2, 23) + Long.rotateRight((j2 + a) + a4, 51);
        jArr[0] = a2 + a4;
        jArr[1] = a + a3;
    }

    private static long b(byte[] bArr) {
        int length = bArr.length;
        long a = a(bArr, 24);
        long a2 = a(bArr, 0) + ((((long) length) + a(bArr, length - 16)) * -6505348102511208375L);
        long rotateRight = Long.rotateRight(a2 + a, 52);
        long rotateRight2 = Long.rotateRight(a2, 37);
        a2 += a(bArr, 8);
        rotateRight2 += Long.rotateRight(a2, 7);
        a2 += a(bArr, 16);
        a += a2;
        a2 = (Long.rotateRight(a2, 31) + rotateRight) + rotateRight2;
        rotateRight = a(bArr, 16) + a(bArr, length - 32);
        rotateRight2 = a(bArr, length - 8);
        long rotateRight3 = Long.rotateRight(rotateRight + rotateRight2, 52);
        long rotateRight4 = Long.rotateRight(rotateRight, 37);
        rotateRight += a(bArr, length - 24);
        long a3 = a(bArr, length - 16) + rotateRight;
        return a((a(((((Long.rotateRight(a3, 31) + rotateRight3) + (rotateRight4 + Long.rotateRight(rotateRight, 7))) + a) * -4288712594273399085L) + (((a3 + rotateRight2) + a2) * -6505348102511208375L)) * -6505348102511208375L) + a2) * -4288712594273399085L;
    }

    private static long c(byte[] bArr) {
        int length = bArr.length;
        long a = a(bArr, 0);
        long a2 = a(bArr, length - 16) ^ -8261664234251669945L;
        long a3 = a(bArr, length - 56) ^ -6505348102511208375L;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        a(bArr, length - 64, (long) length, a2, jArr);
        a(bArr, length - 32, ((long) length) * -8261664234251669945L, -6505348102511208375L, jArr2);
        long a4 = a3 + (a(jArr[1]) * -8261664234251669945L);
        long rotateRight = Long.rotateRight(a2, 33) * -8261664234251669945L;
        int i = (length - 1) & -64;
        int i2 = 0;
        a2 = -8261664234251669945L * Long.rotateRight(a4 + a, 39);
        while (true) {
            length = i;
            a2 = Long.rotateRight(((a2 + rotateRight) + jArr[0]) + a(bArr, i2 + 16), 37) * -8261664234251669945L;
            a = a2 ^ jArr2[1];
            rotateRight = (Long.rotateRight((jArr[1] + rotateRight) + a(bArr, i2 + 48), 42) * -8261664234251669945L) ^ jArr[0];
            a3 = Long.rotateRight(a4 ^ jArr2[0], 33);
            a(bArr, i2, jArr[1] * -8261664234251669945L, jArr2[0] + a, jArr);
            a(bArr, i2 + 32, a3 + jArr2[1], rotateRight, jArr2);
            i2 += 64;
            i = length - 64;
            if (i == 0) {
                return a((a(jArr[0], jArr2[0]) + (a(rotateRight) * -8261664234251669945L)) + a, a(jArr[1], jArr2[1]) + a3);
            }
            a4 = a;
            a2 = a3;
        }
    }
}
