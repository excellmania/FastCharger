package com.google.android.a.e.d;

import com.google.android.a.e.f;
import com.google.android.a.h.o;
import com.google.android.a.h.x;
import com.google.android.a.t;
import java.io.EOFException;

final class e {
    private static final int a = x.e("OggS");

    public static class a {
        public int a;
        public int b;
    }

    public static final class b {
        public int a;
        public int b;
        public long c;
        public long d;
        public long e;
        public long f;
        public int g;
        public int h;
        public int i;
        public final int[] j = new int[255];

        public void a() {
            this.a = 0;
            this.b = 0;
            this.c = 0;
            this.d = 0;
            this.e = 0;
            this.f = 0;
            this.g = 0;
            this.h = 0;
            this.i = 0;
        }
    }

    public static int a(byte b, int i, int i2) {
        return (b >> i2) & (255 >>> (8 - i));
    }

    public static void a(b bVar, int i, a aVar) {
        aVar.b = 0;
        aVar.a = 0;
        while (aVar.b + i < bVar.g) {
            int[] iArr = bVar.j;
            int i2 = aVar.b;
            aVar.b = i2 + 1;
            int i3 = iArr[i2 + i];
            aVar.a += i3;
            if (i3 != 255) {
                return;
            }
        }
    }

    public static void a(f fVar) {
        byte[] bArr = new byte[2048];
        int length = bArr.length;
        while (true) {
            if (fVar.d() != -1 && fVar.c() + ((long) length) > fVar.d()) {
                length = (int) (fVar.d() - fVar.c());
                if (length < 4) {
                    throw new EOFException();
                }
            }
            fVar.b(bArr, 0, length, false);
            int i = 0;
            while (i < length - 3) {
                if (bArr[i] == (byte) 79 && bArr[i + 1] == (byte) 103 && bArr[i + 2] == (byte) 103 && bArr[i + 3] == (byte) 83) {
                    fVar.b(i);
                    return;
                }
                i++;
            }
            fVar.b(length - 3);
        }
    }

    public static boolean a(f fVar, b bVar, o oVar, boolean z) {
        int i = 0;
        oVar.a();
        bVar.a();
        int i2 = (fVar.d() == -1 || fVar.d() - fVar.b() >= 27) ? true : 0;
        if (i2 == 0 || !fVar.b(oVar.a, 0, 27, true)) {
            if (z) {
                return false;
            }
            throw new EOFException();
        } else if (oVar.k() == ((long) a)) {
            bVar.a = oVar.f();
            if (bVar.a == 0) {
                bVar.b = oVar.f();
                bVar.c = oVar.p();
                bVar.d = oVar.l();
                bVar.e = oVar.l();
                bVar.f = oVar.l();
                bVar.g = oVar.f();
                oVar.a();
                bVar.h = bVar.g + 27;
                fVar.c(oVar.a, 0, bVar.g);
                while (i < bVar.g) {
                    bVar.j[i] = oVar.f();
                    bVar.i += bVar.j[i];
                    i++;
                }
                return true;
            } else if (z) {
                return false;
            } else {
                throw new t("unsupported bit stream revision");
            }
        } else if (z) {
            return false;
        } else {
            throw new t("expected OggS capture pattern at begin of page");
        }
    }
}
