package com.google.android.a.h;

import com.google.android.a.r;
import java.nio.ByteBuffer;

public final class e {
    private static final int[] a = new int[]{1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    private static final int[] b = new int[]{-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};
    private static final int[] c = new int[]{64, 112, 128, 192, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};
    private static final n d = new n();

    public static int a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        return ((((byteBuffer.get(position + 5) & 252) >> 2) | ((byteBuffer.get(position + 4) & 1) << 6)) + 1) * 32;
    }

    public static int a(byte[] bArr) {
        return ((((bArr[4] & 1) << 6) | ((bArr[5] & 252) >> 2)) + 1) * 32;
    }

    public static r a(byte[] bArr, String str, long j, String str2) {
        n nVar = d;
        nVar.a(bArr);
        nVar.b(60);
        int i = a[nVar.c(6)];
        int i2 = b[nVar.c(4)];
        int c = nVar.c(5);
        c = c >= c.length ? -1 : (c[c] * 1000) / 2;
        nVar.b(10);
        return r.a(str, "audio/vnd.dts", c, -1, j, i + (nVar.c(2) > 0 ? 1 : 0), i2, null, str2);
    }

    public static int b(byte[] bArr) {
        return ((((bArr[5] & 2) << 12) | ((bArr[6] & 255) << 4)) | ((bArr[7] & 240) >> 4)) + 1;
    }
}
