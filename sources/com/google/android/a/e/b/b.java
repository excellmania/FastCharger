package com.google.android.a.e.b;

import android.support.v4.media.TransportMediator;
import android.util.Pair;
import com.google.android.a.e.f;
import com.google.android.a.e.i;
import com.google.android.a.h.o;
import com.google.android.a.h.x;
import java.nio.charset.Charset;
import org.apache.http.protocol.HTTP;

final class b {
    private static final int a = x.e("ID3");
    private static final Charset[] b = new Charset[]{Charset.forName("ISO-8859-1"), Charset.forName("UTF-16LE"), Charset.forName("UTF-16BE"), Charset.forName(HTTP.UTF_8)};

    private static Pair<String, String> a(int i, o oVar) {
        int j;
        int g;
        while (true) {
            if (i == 2) {
                if (oVar.b() < 6) {
                    return null;
                }
                String a = oVar.a(3, Charset.forName("US-ASCII"));
                if (a.equals("\u0000\u0000\u0000")) {
                    return null;
                }
                j = oVar.j();
                if (j == 0 || j > oVar.b()) {
                    return null;
                }
                if (a.equals("COM")) {
                    break;
                }
                oVar.c(j);
            } else if (oVar.b() < 10) {
                return null;
            } else {
                String a2 = oVar.a(4, Charset.forName("US-ASCII"));
                if (a2.equals("\u0000\u0000\u0000\u0000")) {
                    return null;
                }
                j = i == 4 ? oVar.r() : oVar.s();
                if (j == 0 || j > oVar.b() - 2) {
                    return null;
                }
                g = oVar.g();
                g = ((i != 4 || (g & 12) == 0) && (i != 3 || (g & 192) == 0)) ? 0 : 1;
                if (g == 0 && a2.equals("COMM")) {
                    break;
                }
                oVar.c(j);
            }
        }
        g = oVar.f();
        if (g < 0 || g >= b.length) {
            return null;
        }
        String[] split = oVar.a(j - 1, b[g]).split("\u0000");
        return split.length == 2 ? Pair.create(split[0], split[1]) : null;
    }

    public static i a(f fVar) {
        o oVar = new o(10);
        i iVar = null;
        int i = 0;
        while (true) {
            fVar.c(oVar.a, 0, 10);
            oVar.b(0);
            if (oVar.j() != a) {
                fVar.a();
                fVar.c(i);
                return iVar;
            }
            int f = oVar.f();
            int f2 = oVar.f();
            int f3 = oVar.f();
            int r = oVar.r();
            if (iVar == null && a(f, f2, f3, r)) {
                byte[] bArr = new byte[r];
                fVar.c(bArr, 0, r);
                iVar = a(new o(bArr), f, f3);
            } else {
                fVar.c(r);
            }
            i += r + 10;
        }
    }

    private static i a(o oVar, int i, int i2) {
        b(oVar, i, i2);
        oVar.b(0);
        int r;
        if (i != 3 || (i2 & 64) == 0) {
            if (i == 4 && (i2 & 64) != 0) {
                if (oVar.b() < 4) {
                    return null;
                }
                r = oVar.r();
                if (r < 6 || r > oVar.b() + 4) {
                    return null;
                }
                oVar.b(r);
            }
        } else if (oVar.b() < 4) {
            return null;
        } else {
            r = oVar.s();
            if (r > oVar.b()) {
                return null;
            }
            if (r >= 6) {
                oVar.c(2);
                int s = oVar.s();
                oVar.b(4);
                oVar.a(oVar.c() - s);
                if (oVar.b() < r) {
                    return null;
                }
            }
            oVar.c(r);
        }
        while (true) {
            Pair a = a(i, oVar);
            if (a == null) {
                return null;
            }
            if (((String) a.first).length() > 3) {
                i a2 = i.a(((String) a.first).substring(3), (String) a.second);
                if (a2 != null) {
                    return a2;
                }
            }
        }
    }

    private static void a(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) ((i2 >> 21) & TransportMediator.KEYCODE_MEDIA_PAUSE);
        bArr[i + 1] = (byte) ((i2 >> 14) & TransportMediator.KEYCODE_MEDIA_PAUSE);
        bArr[i + 2] = (byte) ((i2 >> 7) & TransportMediator.KEYCODE_MEDIA_PAUSE);
        bArr[i + 3] = (byte) (i2 & TransportMediator.KEYCODE_MEDIA_PAUSE);
    }

    private static boolean a(int i, int i2, int i3, int i4) {
        return i2 != 255 && i >= 2 && i <= 4 && i4 <= 3145728 && ((i != 2 || ((i3 & 63) == 0 && (i3 & 64) == 0)) && ((i != 3 || (i3 & 31) == 0) && (i != 4 || (i3 & 15) == 0)));
    }

    private static boolean a(o oVar, boolean z) {
        oVar.b(0);
        while (oVar.b() >= 10) {
            if (oVar.m() == 0) {
                return true;
            }
            long k = oVar.k();
            if (!z) {
                if ((8421504 & k) != 0) {
                    return false;
                }
                k = (((k >> 24) & 127) << 21) | (((k & 127) | (((k >> 8) & 127) << 7)) | (((k >> 16) & 127) << 14));
            }
            if (k > ((long) (oVar.b() - 2))) {
                return false;
            }
            if ((oVar.g() & 1) != 0 && oVar.b() < 4) {
                return false;
            }
            oVar.c((int) k);
        }
        return true;
    }

    private static void b(o oVar, boolean z) {
        oVar.b(0);
        byte[] bArr = oVar.a;
        while (oVar.b() >= 10 && oVar.m() != 0) {
            int d;
            int i;
            int s = z ? oVar.s() : oVar.r();
            int g = oVar.g();
            if ((g & 1) != 0) {
                d = oVar.d();
                System.arraycopy(bArr, d + 4, bArr, d, oVar.b() - 4);
                d = s - 4;
                i = g & -2;
                oVar.a(oVar.c() - 4);
            } else {
                i = g;
                d = s;
            }
            if ((i & 2) != 0) {
                s = oVar.d() + 1;
                int i2 = 0;
                int i3 = s;
                while (i2 + 1 < d) {
                    if ((bArr[s - 1] & 255) == 255 && bArr[s] == (byte) 0) {
                        s++;
                        d--;
                    }
                    int i4 = i3 + 1;
                    int i5 = s + 1;
                    bArr[i3] = bArr[s];
                    i2++;
                    i3 = i4;
                    s = i5;
                }
                oVar.a(oVar.c() - (s - i3));
                System.arraycopy(bArr, s, bArr, i3, oVar.b() - s);
                s = i & -3;
            } else {
                s = i;
            }
            if (s != g || z) {
                i = oVar.d() - 6;
                a(bArr, i, d);
                bArr[i + 4] = (byte) (s >> 8);
                bArr[i + 5] = (byte) (s & 255);
            }
            oVar.c(d);
        }
    }

    private static boolean b(o oVar, int i, int i2) {
        if (i != 4) {
            if ((i2 & 128) != 0) {
                byte[] bArr = oVar.a;
                int length = bArr.length;
                int i3 = false;
                while (i3 + 1 < length) {
                    if ((bArr[i3] & 255) == 255 && bArr[i3 + 1] == (byte) 0) {
                        System.arraycopy(bArr, i3 + 2, bArr, i3 + 1, (length - i3) - 2);
                        length--;
                    }
                    i3++;
                }
                oVar.a(length);
            }
        } else if (a(oVar, false)) {
            b(oVar, false);
        } else if (!a(oVar, true)) {
            return false;
        } else {
            b(oVar, true);
        }
        return true;
    }
}
