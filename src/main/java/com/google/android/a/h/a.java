package com.google.android.a.h;

import com.google.android.a.r;
import java.nio.ByteBuffer;
import org.apache.http.HttpStatus;

public final class a {
    private static final int[] a = new int[]{1, 2, 3, 6};
    private static final int[] b = new int[]{48000, 44100, 32000};
    private static final int[] c = new int[]{24000, 22050, 16000};
    private static final int[] d = new int[]{2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] e = new int[]{32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640};
    private static final int[] f = new int[]{69, 87, 104, 121, 139, 174, 208, 243, 278, 348, HttpStatus.SC_EXPECTATION_FAILED, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static int a() {
        return 1536;
    }

    private static int a(int i, int i2) {
        int i3 = b[i];
        if (i3 == 44100) {
            return (f[i2 / 2] + (i2 % 2)) * 2;
        }
        int i4 = e[i2 / 2];
        return i3 == 32000 ? i4 * 6 : i4 * 4;
    }

    public static int a(ByteBuffer byteBuffer) {
        return (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) == 3 ? 6 : a[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4]) * 256;
    }

    public static int a(byte[] bArr) {
        return a((bArr[4] & 192) >> 6, bArr[4] & 63);
    }

    public static r a(n nVar, String str, long j, String str2) {
        int i = 1;
        nVar.b(32);
        int c = nVar.c(2);
        nVar.b(14);
        int c2 = nVar.c(3);
        if (!((c2 & 1) == 0 || c2 == 1)) {
            nVar.b(2);
        }
        if ((c2 & 4) != 0) {
            nVar.b(2);
        }
        if (c2 == 2) {
            nVar.b(2);
        }
        boolean b = nVar.b();
        String str3 = "audio/ac3";
        c2 = d[c2];
        if (!b) {
            i = 0;
        }
        return r.a(str, str3, -1, -1, j, c2 + i, b[c], null, str2);
    }

    public static r a(o oVar, String str, long j, String str2) {
        int i = b[(oVar.f() & 192) >> 6];
        int f = oVar.f();
        int i2 = d[(f & 56) >> 3];
        if ((f & 4) != 0) {
            i2++;
        }
        return r.a(str, "audio/ac3", -1, -1, j, i2, i, null, str2);
    }

    public static int b(byte[] bArr) {
        return ((((bArr[2] & 7) << 8) + (bArr[3] & 255)) + 1) * 2;
    }

    public static r b(n nVar, String str, long j, String str2) {
        int i;
        nVar.b(32);
        int c = nVar.c(2);
        if (c == 3) {
            i = c[nVar.c(2)];
        } else {
            nVar.b(2);
            i = b[c];
        }
        return r.a(str, "audio/eac3", -1, -1, j, d[nVar.c(3)] + (nVar.b() ? 1 : 0), i, null, str2);
    }

    public static r b(o oVar, String str, long j, String str2) {
        oVar.c(2);
        int i = b[(oVar.f() & 192) >> 6];
        int f = oVar.f();
        int i2 = d[(f & 14) >> 1];
        if ((f & 1) != 0) {
            i2++;
        }
        return r.a(str, "audio/eac3", -1, -1, j, i2, i, null, str2);
    }

    public static int c(byte[] bArr) {
        return (((bArr[4] & 192) >> 6) == 3 ? 6 : a[(bArr[4] & 48) >> 4]) * 256;
    }
}
