package com.google.android.a.h;

import android.support.v4.media.TransportMediator;
import android.util.Log;
import java.nio.ByteBuffer;
import java.util.Arrays;

public final class m {
    public static final byte[] a = new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 1};
    public static final float[] b = new float[]{1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object c = new Object();
    private static int[] d = new int[10];

    public static final class a {
        public final int a;
        public final int b;
        public final boolean c;

        public a(int i, int i2, boolean z) {
            this.a = i;
            this.b = i2;
            this.c = z;
        }
    }

    public static final class b {
        public final int a;
        public final int b;
        public final int c;
        public final float d;
        public final boolean e;
        public final boolean f;
        public final int g;
        public final int h;
        public final int i;
        public final boolean j;

        public b(int i, int i2, int i3, float f, boolean z, boolean z2, int i4, int i5, int i6, boolean z3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = f;
            this.e = z;
            this.f = z2;
            this.g = i4;
            this.h = i5;
            this.i = i6;
            this.j = z3;
        }
    }

    public static int a(byte[] bArr, int i) {
        int i2;
        int i3 = 0;
        synchronized (c) {
            int a;
            int i4 = 0;
            int i5 = 0;
            while (i5 < i) {
                a = a(bArr, i5, i);
                if (a < i) {
                    if (d.length <= i4) {
                        d = Arrays.copyOf(d, d.length * 2);
                    }
                    i5 = i4 + 1;
                    d[i4] = a;
                    i4 = i5;
                    i5 = a + 3;
                } else {
                    i5 = a;
                }
            }
            i2 = i - i4;
            i5 = 0;
            a = 0;
            while (i3 < i4) {
                int i6 = d[i3] - a;
                System.arraycopy(bArr, a, bArr, i5, i6);
                i5 += i6;
                int i7 = i5 + 1;
                bArr[i5] = (byte) 0;
                i5 = i7 + 1;
                bArr[i7] = (byte) 0;
                a += i6 + 3;
                i3++;
            }
            System.arraycopy(bArr, a, bArr, i5, i2 - i5);
        }
        return i2;
    }

    private static int a(byte[] bArr, int i, int i2) {
        int i3 = i;
        while (i3 < i2 - 2) {
            if (bArr[i3] == (byte) 0 && bArr[i3 + 1] == (byte) 0 && bArr[i3 + 2] == (byte) 3) {
                return i3;
            }
            i3++;
        }
        return i2;
    }

    public static int a(byte[] bArr, int i, int i2, boolean[] zArr) {
        boolean z = true;
        int i3 = i2 - i;
        b.b(i3 >= 0);
        if (i3 == 0) {
            return i2;
        }
        if (zArr != null) {
            if (zArr[0]) {
                a(zArr);
                return i - 3;
            } else if (i3 > 1 && zArr[1] && bArr[i] == (byte) 1) {
                a(zArr);
                return i - 2;
            } else if (i3 > 2 && zArr[2] && bArr[i] == (byte) 0 && bArr[i + 1] == (byte) 1) {
                a(zArr);
                return i - 1;
            }
        }
        int i4 = i2 - 1;
        int i5 = i + 2;
        while (i5 < i4) {
            if ((bArr[i5] & 254) == 0) {
                if (bArr[i5 - 2] == (byte) 0 && bArr[i5 - 1] == (byte) 0 && bArr[i5] == (byte) 1) {
                    if (zArr != null) {
                        a(zArr);
                    }
                    return i5 - 2;
                }
                i5 -= 2;
            }
            i5 += 3;
        }
        if (zArr == null) {
            return i2;
        }
        boolean z2 = i3 > 2 ? bArr[i2 + -3] == (byte) 0 && bArr[i2 - 2] == (byte) 0 && bArr[i2 - 1] == (byte) 1 : i3 == 2 ? zArr[2] && bArr[i2 - 2] == (byte) 0 && bArr[i2 - 1] == (byte) 1 : zArr[1] && bArr[i2 - 1] == (byte) 1;
        zArr[0] = z2;
        z2 = i3 > 1 ? bArr[i2 + -2] == (byte) 0 && bArr[i2 - 1] == (byte) 0 : zArr[2] && bArr[i2 - 1] == (byte) 0;
        zArr[1] = z2;
        if (bArr[i2 - 1] != (byte) 0) {
            z = false;
        }
        zArr[2] = z;
        return i2;
    }

    public static b a(n nVar) {
        int d;
        int i;
        boolean z;
        int i2;
        float f;
        int c = nVar.c(8);
        nVar.b(16);
        int d2 = nVar.d();
        boolean z2 = false;
        if (c == 100 || c == 110 || c == 122 || c == 244 || c == 44 || c == 83 || c == 86 || c == 118 || c == 128 || c == 138) {
            d = nVar.d();
            if (d == 3) {
                z2 = nVar.b();
            }
            nVar.d();
            nVar.d();
            nVar.b(1);
            if (nVar.b()) {
                i = d != 3 ? 8 : 12;
                int i3 = 0;
                while (i3 < i) {
                    if (nVar.b()) {
                        a(nVar, i3 < 6 ? 16 : 64);
                    }
                    i3++;
                }
            }
            z = z2;
            i2 = d;
        } else {
            z = false;
            i2 = 1;
        }
        int d3 = nVar.d() + 4;
        int d4 = nVar.d();
        int i4 = 0;
        boolean z3 = false;
        if (d4 == 0) {
            i4 = nVar.d() + 4;
        } else if (d4 == 1) {
            z3 = nVar.b();
            nVar.e();
            nVar.e();
            long d5 = (long) nVar.d();
            for (i = 0; ((long) i) < d5; i++) {
                nVar.d();
            }
        }
        nVar.d();
        nVar.b(1);
        c = nVar.d() + 1;
        d = nVar.d() + 1;
        boolean b = nVar.b();
        i = (2 - (b ? 1 : 0)) * d;
        if (!b) {
            nVar.b(1);
        }
        nVar.b(1);
        d = c * 16;
        c = i * 16;
        if (nVar.b()) {
            int d6 = nVar.d();
            int d7 = nVar.d();
            int d8 = nVar.d();
            int d9 = nVar.d();
            if (i2 == 0) {
                i = 1;
                i2 = 2 - (b ? 1 : 0);
            } else {
                i = i2 == 3 ? 1 : 2;
                i2 = (2 - (b ? 1 : 0)) * (i2 == 1 ? 2 : 1);
            }
            i = d - (i * (d6 + d7));
            c -= i2 * (d8 + d9);
        } else {
            i = d;
        }
        float f2 = 1.0f;
        if (nVar.b() && nVar.b()) {
            d = nVar.c(8);
            if (d == 255) {
                d = nVar.c(16);
                int c2 = nVar.c(16);
                if (!(d == 0 || c2 == 0)) {
                    f2 = ((float) d) / ((float) c2);
                }
                f = f2;
            } else if (d < b.length) {
                f = b[d];
            } else {
                Log.w("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + d);
            }
            return new b(d2, i, c, f, z, b, d3, d4, i4, z3);
        }
        f = 1.0f;
        return new b(d2, i, c, f, z, b, d3, d4, i4, z3);
    }

    private static void a(n nVar, int i) {
        int i2 = 8;
        int i3 = 8;
        for (int i4 = 0; i4 < i; i4++) {
            if (i2 != 0) {
                i2 = ((nVar.e() + i3) + 256) % 256;
            }
            if (i2 != 0) {
                i3 = i2;
            }
        }
    }

    public static void a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int i = 0;
        int i2 = 0;
        while (i + 1 < position) {
            int i3 = byteBuffer.get(i) & 255;
            if (i2 == 3) {
                if (i3 == 1 && (byteBuffer.get(i + 1) & 31) == 7) {
                    ByteBuffer duplicate = byteBuffer.duplicate();
                    duplicate.position(i - 3);
                    duplicate.limit(position);
                    byteBuffer.position(0);
                    byteBuffer.put(duplicate);
                    return;
                }
            } else if (i3 == 0) {
                i2++;
            }
            if (i3 != 0) {
                i2 = 0;
            }
            i++;
        }
        byteBuffer.clear();
    }

    public static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static byte[] a(o oVar) {
        int g = oVar.g();
        int d = oVar.d();
        oVar.c(g);
        return d.a(oVar.a, d, g);
    }

    public static int b(byte[] bArr, int i) {
        return bArr[i + 3] & 31;
    }

    public static a b(n nVar) {
        int d = nVar.d();
        int d2 = nVar.d();
        nVar.b(1);
        return new a(d, d2, nVar.b());
    }

    public static int c(byte[] bArr, int i) {
        return (bArr[i + 3] & TransportMediator.KEYCODE_MEDIA_PLAY) >> 1;
    }
}
