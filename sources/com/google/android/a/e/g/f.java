package com.google.android.a.e.g;

import android.util.Pair;
import android.util.SparseArray;
import com.google.android.a.d.a.c;
import com.google.android.a.e.e;
import com.google.android.a.e.g;
import com.google.android.a.e.j;
import com.google.android.a.e.l;
import com.google.android.a.e.m;
import com.google.android.a.h.i;
import com.google.android.a.h.o;
import com.google.android.a.h.x;
import com.google.android.a.t;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

public final class f implements e {
    private static final byte[] a = new byte[]{(byte) 49, (byte) 10, (byte) 48, (byte) 48, (byte) 58, (byte) 48, (byte) 48, (byte) 58, (byte) 48, (byte) 48, (byte) 44, (byte) 48, (byte) 48, (byte) 48, (byte) 32, (byte) 45, (byte) 45, (byte) 62, (byte) 32, (byte) 48, (byte) 48, (byte) 58, (byte) 48, (byte) 48, (byte) 58, (byte) 48, (byte) 48, (byte) 44, (byte) 48, (byte) 48, (byte) 48, (byte) 10};
    private static final byte[] b = new byte[]{(byte) 32, (byte) 32, (byte) 32, (byte) 32, (byte) 32, (byte) 32, (byte) 32, (byte) 32, (byte) 32, (byte) 32, (byte) 32, (byte) 32};
    private static final UUID c = new UUID(72057594037932032L, -9223371306706625679L);
    private long A;
    private i B;
    private i C;
    private boolean D;
    private int E;
    private long F;
    private long G;
    private int H;
    private int I;
    private int[] J;
    private int K;
    private int L;
    private int M;
    private int N;
    private boolean O;
    private int P;
    private int Q;
    private boolean R;
    private boolean S;
    private g T;
    private final b d;
    private final e e;
    private final SparseArray<b> f;
    private final o g;
    private final o h;
    private final o i;
    private final o j;
    private final o k;
    private final o l;
    private final o m;
    private long n;
    private long o;
    private long p;
    private long q;
    private long r;
    private b s;
    private boolean t;
    private boolean u;
    private int v;
    private long w;
    private boolean x;
    private long y;
    private long z;

    private final class a implements c {
        private a() {
        }

        public int a(int i) {
            return f.this.a(i);
        }

        public void a(int i, double d) {
            f.this.a(i, d);
        }

        public void a(int i, int i2, com.google.android.a.e.f fVar) {
            f.this.a(i, i2, fVar);
        }

        public void a(int i, long j) {
            f.this.a(i, j);
        }

        public void a(int i, long j, long j2) {
            f.this.a(i, j, j2);
        }

        public void a(int i, String str) {
            f.this.a(i, str);
        }

        public boolean b(int i) {
            return f.this.b(i);
        }

        public void c(int i) {
            f.this.c(i);
        }
    }

    private static final class b {
        public String a;
        public int b;
        public int c;
        public int d;
        public boolean e;
        public byte[] f;
        public byte[] g;
        public byte[] h;
        public int i;
        public int j;
        public int k;
        public int l;
        public int m;
        public int n;
        public int o;
        public int p;
        public long q;
        public long r;
        public m s;
        public int t;
        private String u;

        private b() {
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = 0;
            this.n = 1;
            this.o = -1;
            this.p = 8000;
            this.q = 0;
            this.r = 0;
            this.u = "eng";
        }

        private static List<byte[]> a(o oVar) {
            try {
                oVar.c(16);
                long l = oVar.l();
                if (l != 826496599) {
                    throw new t("Unsupported FourCC compression type: " + l);
                }
                int d = oVar.d() + 20;
                byte[] bArr = oVar.a;
                while (d < bArr.length - 4) {
                    if (bArr[d] == (byte) 0 && bArr[d + 1] == (byte) 0 && bArr[d + 2] == (byte) 1 && bArr[d + 3] == (byte) 15) {
                        return Collections.singletonList(Arrays.copyOfRange(bArr, d, bArr.length));
                    }
                    d++;
                }
                throw new t("Failed to find FourCC VC1 initialization data");
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new t("Error parsing FourCC VC1 codec private");
            }
        }

        private static List<byte[]> a(byte[] bArr) {
            int i = 0;
            try {
                if (bArr[0] != (byte) 2) {
                    throw new t("Error parsing vorbis codec private");
                }
                int i2 = 0;
                int i3 = 1;
                while (bArr[i3] == (byte) -1) {
                    i3++;
                    i2 += 255;
                }
                int i4 = i3 + 1;
                i2 += bArr[i3];
                while (bArr[i4] == (byte) -1) {
                    i += 255;
                    i4++;
                }
                i3 = i4 + 1;
                i += bArr[i4];
                if (bArr[i3] != (byte) 1) {
                    throw new t("Error parsing vorbis codec private");
                }
                byte[] bArr2 = new byte[i2];
                System.arraycopy(bArr, i3, bArr2, 0, i2);
                i2 += i3;
                if (bArr[i2] != (byte) 3) {
                    throw new t("Error parsing vorbis codec private");
                }
                i += i2;
                if (bArr[i] != (byte) 5) {
                    throw new t("Error parsing vorbis codec private");
                }
                byte[] bArr3 = new byte[(bArr.length - i)];
                System.arraycopy(bArr, i, bArr3, 0, bArr.length - i);
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(bArr2);
                arrayList.add(bArr3);
                return arrayList;
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new t("Error parsing vorbis codec private");
            }
        }

        private static Pair<List<byte[]>, Integer> b(o oVar) {
            int i = 0;
            try {
                oVar.b(4);
                int f = (oVar.f() & 3) + 1;
                if (f == 3) {
                    throw new t();
                }
                int i2;
                ArrayList arrayList = new ArrayList();
                int f2 = oVar.f() & 31;
                for (i2 = 0; i2 < f2; i2++) {
                    arrayList.add(com.google.android.a.h.m.a(oVar));
                }
                i2 = oVar.f();
                while (i < i2) {
                    arrayList.add(com.google.android.a.h.m.a(oVar));
                    i++;
                }
                return Pair.create(arrayList, Integer.valueOf(f));
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new t("Error parsing AVC codec private");
            }
        }

        private static Pair<List<byte[]>, Integer> c(o oVar) {
            try {
                int g;
                int i;
                int i2;
                oVar.b(21);
                int f = oVar.f() & 3;
                int f2 = oVar.f();
                int d = oVar.d();
                int i3 = 0;
                int i4 = 0;
                while (i3 < f2) {
                    oVar.c(1);
                    g = oVar.g();
                    i = i4;
                    for (i2 = 0; i2 < g; i2++) {
                        i4 = oVar.g();
                        i += i4 + 4;
                        oVar.c(i4);
                    }
                    i3++;
                    i4 = i;
                }
                oVar.b(d);
                byte[] bArr = new byte[i4];
                i3 = 0;
                i2 = 0;
                while (i3 < f2) {
                    oVar.c(1);
                    g = oVar.g();
                    i = i2;
                    for (i2 = 0; i2 < g; i2++) {
                        int g2 = oVar.g();
                        System.arraycopy(com.google.android.a.h.m.a, 0, bArr, i, com.google.android.a.h.m.a.length);
                        i += com.google.android.a.h.m.a.length;
                        System.arraycopy(oVar.a, oVar.d(), bArr, i, g2);
                        i += g2;
                        oVar.c(g2);
                    }
                    i3++;
                    i2 = i;
                }
                return Pair.create(i4 == 0 ? null : Collections.singletonList(bArr), Integer.valueOf(f + 1));
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new t("Error parsing HEVC codec private");
            }
        }

        private static boolean d(o oVar) {
            try {
                int h = oVar.h();
                if (h == 1) {
                    return true;
                }
                if (h != 65534) {
                    return false;
                }
                oVar.b(24);
                return oVar.o() == f.c.getMostSignificantBits() && oVar.o() == f.c.getLeastSignificantBits();
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new t("Error parsing MS/ACM codec private");
            }
        }

        public void a(com.google.android.a.e.g r12, int r13, long r14) {
            /*
            r11 = this;
            r0 = 0;
            r4 = 3;
            r5 = 8;
            r2 = -1;
            r1 = r11.a;
            r3 = r1.hashCode();
            switch(r3) {
                case -2095576542: goto L_0x004c;
                case -2095575984: goto L_0x0038;
                case -1985379776: goto L_0x00f6;
                case -1784763192: goto L_0x00ba;
                case -1730367663: goto L_0x0074;
                case -1482641357: goto L_0x0096;
                case -1373388978: goto L_0x006a;
                case -538363189: goto L_0x0042;
                case -538363109: goto L_0x0056;
                case -425012669: goto L_0x011a;
                case -356037306: goto L_0x00de;
                case 62923557: goto L_0x008a;
                case 62923603: goto L_0x00a2;
                case 62927045: goto L_0x00c6;
                case 82338133: goto L_0x001a;
                case 82338134: goto L_0x0024;
                case 99146302: goto L_0x0126;
                case 542569478: goto L_0x00d2;
                case 725957860: goto L_0x0102;
                case 855502857: goto L_0x0060;
                case 1422270023: goto L_0x010e;
                case 1809237540: goto L_0x002e;
                case 1950749482: goto L_0x00ae;
                case 1950789798: goto L_0x00ea;
                case 1951062397: goto L_0x007f;
                default: goto L_0x000e;
            };
        L_0x000e:
            r1 = r2;
        L_0x000f:
            switch(r1) {
                case 0: goto L_0x0132;
                case 1: goto L_0x015a;
                case 2: goto L_0x0160;
                case 3: goto L_0x0166;
                case 4: goto L_0x0166;
                case 5: goto L_0x0166;
                case 6: goto L_0x0177;
                case 7: goto L_0x0197;
                case 8: goto L_0x01b7;
                case 9: goto L_0x01c9;
                case 10: goto L_0x01d7;
                case 11: goto L_0x021b;
                case 12: goto L_0x0228;
                case 13: goto L_0x0230;
                case 14: goto L_0x0237;
                case 15: goto L_0x023e;
                case 16: goto L_0x0245;
                case 17: goto L_0x0245;
                case 18: goto L_0x024c;
                case 19: goto L_0x0253;
                case 20: goto L_0x0260;
                case 21: goto L_0x029a;
                case 22: goto L_0x02bf;
                case 23: goto L_0x02c6;
                case 24: goto L_0x02d3;
                default: goto L_0x0012;
            };
        L_0x0012:
            r0 = new com.google.android.a.t;
            r1 = "Unrecognized codec identifier.";
            r0.<init>(r1);
            throw r0;
        L_0x001a:
            r3 = "V_VP8";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x0022:
            r1 = 0;
            goto L_0x000f;
        L_0x0024:
            r3 = "V_VP9";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x002c:
            r1 = 1;
            goto L_0x000f;
        L_0x002e:
            r3 = "V_MPEG2";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x0036:
            r1 = 2;
            goto L_0x000f;
        L_0x0038:
            r3 = "V_MPEG4/ISO/SP";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x0040:
            r1 = r4;
            goto L_0x000f;
        L_0x0042:
            r3 = "V_MPEG4/ISO/ASP";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x004a:
            r1 = 4;
            goto L_0x000f;
        L_0x004c:
            r3 = "V_MPEG4/ISO/AP";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x0054:
            r1 = 5;
            goto L_0x000f;
        L_0x0056:
            r3 = "V_MPEG4/ISO/AVC";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x005e:
            r1 = 6;
            goto L_0x000f;
        L_0x0060:
            r3 = "V_MPEGH/ISO/HEVC";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x0068:
            r1 = 7;
            goto L_0x000f;
        L_0x006a:
            r3 = "V_MS/VFW/FOURCC";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x0072:
            r1 = r5;
            goto L_0x000f;
        L_0x0074:
            r3 = "A_VORBIS";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x007c:
            r1 = 9;
            goto L_0x000f;
        L_0x007f:
            r3 = "A_OPUS";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x0087:
            r1 = 10;
            goto L_0x000f;
        L_0x008a:
            r3 = "A_AAC";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x0092:
            r1 = 11;
            goto L_0x000f;
        L_0x0096:
            r3 = "A_MPEG/L3";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x009e:
            r1 = 12;
            goto L_0x000f;
        L_0x00a2:
            r3 = "A_AC3";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x00aa:
            r1 = 13;
            goto L_0x000f;
        L_0x00ae:
            r3 = "A_EAC3";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x00b6:
            r1 = 14;
            goto L_0x000f;
        L_0x00ba:
            r3 = "A_TRUEHD";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x00c2:
            r1 = 15;
            goto L_0x000f;
        L_0x00c6:
            r3 = "A_DTS";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x00ce:
            r1 = 16;
            goto L_0x000f;
        L_0x00d2:
            r3 = "A_DTS/EXPRESS";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x00da:
            r1 = 17;
            goto L_0x000f;
        L_0x00de:
            r3 = "A_DTS/LOSSLESS";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x00e6:
            r1 = 18;
            goto L_0x000f;
        L_0x00ea:
            r3 = "A_FLAC";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x00f2:
            r1 = 19;
            goto L_0x000f;
        L_0x00f6:
            r3 = "A_MS/ACM";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x00fe:
            r1 = 20;
            goto L_0x000f;
        L_0x0102:
            r3 = "A_PCM/INT/LIT";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x010a:
            r1 = 21;
            goto L_0x000f;
        L_0x010e:
            r3 = "S_TEXT/UTF8";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x0116:
            r1 = 22;
            goto L_0x000f;
        L_0x011a:
            r3 = "S_VOBSUB";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x0122:
            r1 = 23;
            goto L_0x000f;
        L_0x0126:
            r3 = "S_HDMV/PGS";
            r1 = r1.equals(r3);
            if (r1 == 0) goto L_0x000e;
        L_0x012e:
            r1 = 24;
            goto L_0x000f;
        L_0x0132:
            r1 = "video/x-vnd.on2.vp8";
            r8 = r0;
            r10 = r2;
            r3 = r2;
        L_0x0137:
            r0 = com.google.android.a.h.k.a(r1);
            if (r0 == 0) goto L_0x02da;
        L_0x013d:
            r0 = java.lang.Integer.toString(r13);
            r6 = r11.n;
            r7 = r11.p;
            r9 = r11.u;
            r4 = r14;
            r0 = com.google.android.a.r.a(r0, r1, r2, r3, r4, r6, r7, r8, r9, r10);
        L_0x014c:
            r1 = r11.b;
            r1 = r12.a_(r1);
            r11.s = r1;
            r1 = r11.s;
            r1.a(r0);
            return;
        L_0x015a:
            r1 = "video/x-vnd.on2.vp9";
            r8 = r0;
            r10 = r2;
            r3 = r2;
            goto L_0x0137;
        L_0x0160:
            r1 = "video/mpeg2";
            r8 = r0;
            r10 = r2;
            r3 = r2;
            goto L_0x0137;
        L_0x0166:
            r1 = "video/mp4v-es";
            r3 = r11.h;
            if (r3 != 0) goto L_0x0170;
        L_0x016c:
            r8 = r0;
            r10 = r2;
            r3 = r2;
            goto L_0x0137;
        L_0x0170:
            r0 = r11.h;
            r0 = java.util.Collections.singletonList(r0);
            goto L_0x016c;
        L_0x0177:
            r3 = "video/avc";
            r0 = new com.google.android.a.h.o;
            r1 = r11.h;
            r0.<init>(r1);
            r1 = b(r0);
            r0 = r1.first;
            r0 = (java.util.List) r0;
            r1 = r1.second;
            r1 = (java.lang.Integer) r1;
            r1 = r1.intValue();
            r11.t = r1;
            r8 = r0;
            r10 = r2;
            r1 = r3;
            r3 = r2;
            goto L_0x0137;
        L_0x0197:
            r3 = "video/hevc";
            r0 = new com.google.android.a.h.o;
            r1 = r11.h;
            r0.<init>(r1);
            r1 = c(r0);
            r0 = r1.first;
            r0 = (java.util.List) r0;
            r1 = r1.second;
            r1 = (java.lang.Integer) r1;
            r1 = r1.intValue();
            r11.t = r1;
            r8 = r0;
            r10 = r2;
            r1 = r3;
            r3 = r2;
            goto L_0x0137;
        L_0x01b7:
            r1 = "video/wvc1";
            r0 = new com.google.android.a.h.o;
            r3 = r11.h;
            r0.<init>(r3);
            r0 = a(r0);
            r8 = r0;
            r10 = r2;
            r3 = r2;
            goto L_0x0137;
        L_0x01c9:
            r1 = "audio/vorbis";
            r3 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
            r0 = r11.h;
            r0 = a(r0);
            r8 = r0;
            r10 = r2;
            goto L_0x0137;
        L_0x01d7:
            r1 = "audio/opus";
            r3 = 5760; // 0x1680 float:8.071E-42 double:2.846E-320;
            r0 = new java.util.ArrayList;
            r0.<init>(r4);
            r4 = r11.h;
            r0.add(r4);
            r4 = java.nio.ByteBuffer.allocate(r5);
            r6 = java.nio.ByteOrder.nativeOrder();
            r4 = r4.order(r6);
            r6 = r11.q;
            r4 = r4.putLong(r6);
            r4 = r4.array();
            r0.add(r4);
            r4 = java.nio.ByteBuffer.allocate(r5);
            r5 = java.nio.ByteOrder.nativeOrder();
            r4 = r4.order(r5);
            r6 = r11.r;
            r4 = r4.putLong(r6);
            r4 = r4.array();
            r0.add(r4);
            r8 = r0;
            r10 = r2;
            goto L_0x0137;
        L_0x021b:
            r1 = "audio/mp4a-latm";
            r0 = r11.h;
            r0 = java.util.Collections.singletonList(r0);
            r8 = r0;
            r10 = r2;
            r3 = r2;
            goto L_0x0137;
        L_0x0228:
            r1 = "audio/mpeg";
            r3 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
            r8 = r0;
            r10 = r2;
            goto L_0x0137;
        L_0x0230:
            r1 = "audio/ac3";
            r8 = r0;
            r10 = r2;
            r3 = r2;
            goto L_0x0137;
        L_0x0237:
            r1 = "audio/eac3";
            r8 = r0;
            r10 = r2;
            r3 = r2;
            goto L_0x0137;
        L_0x023e:
            r1 = "audio/true-hd";
            r8 = r0;
            r10 = r2;
            r3 = r2;
            goto L_0x0137;
        L_0x0245:
            r1 = "audio/vnd.dts";
            r8 = r0;
            r10 = r2;
            r3 = r2;
            goto L_0x0137;
        L_0x024c:
            r1 = "audio/vnd.dts.hd";
            r8 = r0;
            r10 = r2;
            r3 = r2;
            goto L_0x0137;
        L_0x0253:
            r1 = "audio/x-flac";
            r0 = r11.h;
            r0 = java.util.Collections.singletonList(r0);
            r8 = r0;
            r10 = r2;
            r3 = r2;
            goto L_0x0137;
        L_0x0260:
            r1 = "audio/raw";
            r3 = new com.google.android.a.h.o;
            r4 = r11.h;
            r3.<init>(r4);
            r3 = d(r3);
            if (r3 != 0) goto L_0x0277;
        L_0x026f:
            r0 = new com.google.android.a.t;
            r1 = "Non-PCM MS/ACM is unsupported";
            r0.<init>(r1);
            throw r0;
        L_0x0277:
            r3 = r11.o;
            r10 = com.google.android.a.h.x.b(r3);
            if (r10 != 0) goto L_0x035d;
        L_0x027f:
            r0 = new com.google.android.a.t;
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r2 = "Unsupported PCM bit depth: ";
            r1 = r1.append(r2);
            r2 = r11.o;
            r1 = r1.append(r2);
            r1 = r1.toString();
            r0.<init>(r1);
            throw r0;
        L_0x029a:
            r1 = "audio/raw";
            r3 = r11.o;
            r10 = com.google.android.a.h.x.b(r3);
            if (r10 != 0) goto L_0x035d;
        L_0x02a4:
            r0 = new com.google.android.a.t;
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r2 = "Unsupported PCM bit depth: ";
            r1 = r1.append(r2);
            r2 = r11.o;
            r1 = r1.append(r2);
            r1 = r1.toString();
            r0.<init>(r1);
            throw r0;
        L_0x02bf:
            r1 = "application/x-subrip";
            r8 = r0;
            r10 = r2;
            r3 = r2;
            goto L_0x0137;
        L_0x02c6:
            r1 = "application/vobsub";
            r0 = r11.h;
            r0 = java.util.Collections.singletonList(r0);
            r8 = r0;
            r10 = r2;
            r3 = r2;
            goto L_0x0137;
        L_0x02d3:
            r1 = "application/pgs";
            r8 = r0;
            r10 = r2;
            r3 = r2;
            goto L_0x0137;
        L_0x02da:
            r0 = com.google.android.a.h.k.b(r1);
            if (r0 == 0) goto L_0x0322;
        L_0x02e0:
            r0 = r11.m;
            if (r0 != 0) goto L_0x02f4;
        L_0x02e4:
            r0 = r11.k;
            if (r0 != r2) goto L_0x031c;
        L_0x02e8:
            r0 = r11.i;
        L_0x02ea:
            r11.k = r0;
            r0 = r11.l;
            if (r0 != r2) goto L_0x031f;
        L_0x02f0:
            r0 = r11.j;
        L_0x02f2:
            r11.l = r0;
        L_0x02f4:
            r10 = -1082130432; // 0xffffffffbf800000 float:-1.0 double:NaN;
            r0 = r11.k;
            if (r0 == r2) goto L_0x030c;
        L_0x02fa:
            r0 = r11.l;
            if (r0 == r2) goto L_0x030c;
        L_0x02fe:
            r0 = r11.j;
            r4 = r11.k;
            r0 = r0 * r4;
            r0 = (float) r0;
            r4 = r11.i;
            r5 = r11.l;
            r4 = r4 * r5;
            r4 = (float) r4;
            r10 = r0 / r4;
        L_0x030c:
            r0 = java.lang.Integer.toString(r13);
            r6 = r11.i;
            r7 = r11.j;
            r4 = r14;
            r9 = r2;
            r0 = com.google.android.a.r.a(r0, r1, r2, r3, r4, r6, r7, r8, r9, r10);
            goto L_0x014c;
        L_0x031c:
            r0 = r11.k;
            goto L_0x02ea;
        L_0x031f:
            r0 = r11.l;
            goto L_0x02f2;
        L_0x0322:
            r0 = "application/x-subrip";
            r0 = r0.equals(r1);
            if (r0 == 0) goto L_0x0337;
        L_0x032a:
            r0 = java.lang.Integer.toString(r13);
            r5 = r11.u;
            r3 = r14;
            r0 = com.google.android.a.r.a(r0, r1, r2, r3, r5);
            goto L_0x014c;
        L_0x0337:
            r0 = "application/vobsub";
            r0 = r0.equals(r1);
            if (r0 != 0) goto L_0x0347;
        L_0x033f:
            r0 = "application/pgs";
            r0 = r0.equals(r1);
            if (r0 == 0) goto L_0x0355;
        L_0x0347:
            r0 = java.lang.Integer.toString(r13);
            r6 = r11.u;
            r3 = r14;
            r5 = r8;
            r0 = com.google.android.a.r.a(r0, r1, r2, r3, r5, r6);
            goto L_0x014c;
        L_0x0355:
            r0 = new com.google.android.a.t;
            r1 = "Unexpected MIME type.";
            r0.<init>(r1);
            throw r0;
        L_0x035d:
            r8 = r0;
            r3 = r2;
            goto L_0x0137;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.a.e.g.f$b.a(com.google.android.a.e.g, int, long):void");
        }
    }

    public f() {
        this(new a());
    }

    f(b bVar) {
        this.n = -1;
        this.o = -1;
        this.p = -1;
        this.q = -1;
        this.r = -1;
        this.y = -1;
        this.z = -1;
        this.A = -1;
        this.d = bVar;
        this.d.a(new a());
        this.e = new e();
        this.f = new SparseArray();
        this.i = new o(4);
        this.j = new o(ByteBuffer.allocate(4).putInt(-1).array());
        this.k = new o(4);
        this.g = new o(com.google.android.a.h.m.a);
        this.h = new o(4);
        this.l = new o();
        this.m = new o();
    }

    private int a(com.google.android.a.e.f fVar, m mVar, int i) {
        int b = this.l.b();
        if (b > 0) {
            b = Math.min(i, b);
            mVar.a(this.l, b);
        } else {
            b = mVar.a(fVar, i, false);
        }
        this.N += b;
        this.Q += b;
        return b;
    }

    private long a(long j) {
        if (this.p == -1) {
            throw new t("Can't scale timecode prior to timecodeScale being set.");
        }
        return x.a(j, this.p, 1000);
    }

    private void a(com.google.android.a.e.f fVar, int i) {
        if (this.i.c() < i) {
            if (this.i.e() < i) {
                this.i.a(Arrays.copyOf(this.i.a, Math.max(this.i.a.length * 2, i)), this.i.c());
            }
            fVar.b(this.i.a, this.i.c(), i - this.i.c());
            this.i.a(i);
        }
    }

    private void a(com.google.android.a.e.f fVar, b bVar, int i) {
        if ("S_TEXT/UTF8".equals(bVar.a)) {
            int length = a.length + i;
            if (this.m.e() < length) {
                this.m.a = Arrays.copyOf(a, length + i);
            }
            fVar.b(this.m.a, a.length, i);
            this.m.b(0);
            this.m.a(length);
            return;
        }
        m mVar = bVar.s;
        if (!this.O) {
            if (bVar.e) {
                this.M &= -3;
                fVar.b(this.i.a, 0, 1);
                this.N++;
                if ((this.i.a[0] & 128) == 128) {
                    throw new t("Extension bit is set in signal byte");
                } else if ((this.i.a[0] & 1) == 1) {
                    this.i.a[0] = (byte) 8;
                    this.i.b(0);
                    mVar.a(this.i, 1);
                    this.Q++;
                    this.M |= 2;
                }
            } else if (bVar.f != null) {
                this.l.a(bVar.f, bVar.f.length);
            }
            this.O = true;
        }
        int c = this.l.c() + i;
        if ("V_MPEG4/ISO/AVC".equals(bVar.a) || "V_MPEGH/ISO/HEVC".equals(bVar.a)) {
            byte[] bArr = this.h.a;
            bArr[0] = (byte) 0;
            bArr[1] = (byte) 0;
            bArr[2] = (byte) 0;
            int i2 = bVar.t;
            int i3 = 4 - bVar.t;
            while (this.N < c) {
                if (this.P == 0) {
                    a(fVar, bArr, i3, i2);
                    this.h.b(0);
                    this.P = this.h.s();
                    this.g.b(0);
                    mVar.a(this.g, 4);
                    this.Q += 4;
                } else {
                    this.P -= a(fVar, mVar, this.P);
                }
            }
        } else {
            while (this.N < c) {
                a(fVar, mVar, c - this.N);
            }
        }
        if ("A_VORBIS".equals(bVar.a)) {
            this.j.b(0);
            mVar.a(this.j, 4);
            this.Q += 4;
        }
    }

    private void a(com.google.android.a.e.f fVar, byte[] bArr, int i, int i2) {
        int min = Math.min(i2, this.l.b());
        fVar.b(bArr, i + min, i2 - min);
        if (min > 0) {
            this.l.a(bArr, i, min);
        }
        this.N += i2;
    }

    private void a(b bVar) {
        a(this.m.a, this.G);
        bVar.s.a(this.m, this.m.c());
        this.Q += this.m.c();
    }

    private void a(b bVar, long j) {
        if ("S_TEXT/UTF8".equals(bVar.a)) {
            a(bVar);
        }
        bVar.s.a(j, this.M, this.Q, 0, bVar.g);
        this.R = true;
        d();
    }

    private static void a(byte[] bArr, long j) {
        Object obj;
        if (j == -1) {
            obj = b;
        } else {
            long j2 = j - (((long) ((int) (j / 3600000000L))) * 3600000000L);
            j2 -= (long) (60000000 * ((int) (j2 / 60000000)));
            int i = (int) ((j2 - ((long) (1000000 * ((int) (j2 / 1000000))))) / 1000);
            obj = String.format(Locale.US, "%02d:%02d:%02d,%03d", new Object[]{Integer.valueOf((int) (j / 3600000000L)), Integer.valueOf(r1), Integer.valueOf(r4), Integer.valueOf(i)}).getBytes();
        }
        System.arraycopy(obj, 0, bArr, 19, 12);
    }

    private boolean a(j jVar, long j) {
        if (this.x) {
            this.z = j;
            jVar.a = this.y;
            this.x = false;
            return true;
        } else if (!this.u || this.z == -1) {
            return false;
        } else {
            jVar.a = this.z;
            this.z = -1;
            return true;
        }
    }

    private static boolean a(String str) {
        return "V_VP8".equals(str) || "V_VP9".equals(str) || "V_MPEG2".equals(str) || "V_MPEG4/ISO/SP".equals(str) || "V_MPEG4/ISO/ASP".equals(str) || "V_MPEG4/ISO/AP".equals(str) || "V_MPEG4/ISO/AVC".equals(str) || "V_MPEGH/ISO/HEVC".equals(str) || "V_MS/VFW/FOURCC".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str) || "A_AAC".equals(str) || "A_MPEG/L3".equals(str) || "A_AC3".equals(str) || "A_EAC3".equals(str) || "A_TRUEHD".equals(str) || "A_DTS".equals(str) || "A_DTS/EXPRESS".equals(str) || "A_DTS/LOSSLESS".equals(str) || "A_FLAC".equals(str) || "A_MS/ACM".equals(str) || "A_PCM/INT/LIT".equals(str) || "S_TEXT/UTF8".equals(str) || "S_VOBSUB".equals(str) || "S_HDMV/PGS".equals(str);
    }

    private static int[] a(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length < i ? new int[Math.max(iArr.length * 2, i)] : iArr;
    }

    private void d() {
        this.N = 0;
        this.Q = 0;
        this.P = 0;
        this.O = false;
        this.l.a();
    }

    private l e() {
        int i = 0;
        if (this.n == -1 || this.r == -1 || this.B == null || this.B.a() == 0 || this.C == null || this.C.a() != this.B.a()) {
            this.B = null;
            this.C = null;
            return l.f;
        }
        int a = this.B.a();
        int[] iArr = new int[a];
        long[] jArr = new long[a];
        long[] jArr2 = new long[a];
        long[] jArr3 = new long[a];
        for (int i2 = 0; i2 < a; i2++) {
            jArr3[i2] = this.B.a(i2);
            jArr[i2] = this.n + this.C.a(i2);
        }
        while (i < a - 1) {
            iArr[i] = (int) (jArr[i + 1] - jArr[i]);
            jArr2[i] = jArr3[i + 1] - jArr3[i];
            i++;
        }
        iArr[a - 1] = (int) ((this.n + this.o) - jArr[a - 1]);
        jArr2[a - 1] = this.r - jArr3[a - 1];
        this.B = null;
        this.C = null;
        return new com.google.android.a.e.a(iArr, jArr, jArr2, jArr3);
    }

    /* Access modifiers changed, original: 0000 */
    public int a(int i) {
        switch (i) {
            case 131:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 241:
            case 251:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21680:
            case 21682:
            case 21690:
            case 22186:
            case 22203:
            case 25188:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 2274716:
                return 3;
            case 160:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 25152:
            case 28032:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
                return 4;
            case 181:
            case 17545:
                return 5;
            default:
                return 0;
        }
    }

    public int a(com.google.android.a.e.f fVar, j jVar) {
        this.R = false;
        boolean z = true;
        while (z && !this.R) {
            z = this.d.a(fVar);
            if (z && a(jVar, fVar.c())) {
                return 1;
            }
        }
        return !z ? -1 : 0;
    }

    /* Access modifiers changed, original: 0000 */
    public void a(int i, double d) {
        switch (i) {
            case 181:
                this.s.p = (int) d;
                return;
            case 17545:
                this.q = (long) d;
                return;
            default:
                return;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(int i, int i2, com.google.android.a.e.f fVar) {
        switch (i) {
            case 161:
            case 163:
                if (this.E == 0) {
                    this.K = (int) this.e.a(fVar, false, true, 8);
                    this.L = this.e.b();
                    this.G = -1;
                    this.E = 1;
                    this.i.a();
                }
                b bVar = (b) this.f.get(this.K);
                if (bVar == null) {
                    fVar.b(i2 - this.L);
                    this.E = 0;
                    return;
                }
                if (this.E == 1) {
                    a(fVar, 3);
                    int i3 = (this.i.a[2] & 6) >> 1;
                    if (i3 == 0) {
                        this.I = 1;
                        this.J = a(this.J, 1);
                        this.J[0] = (i2 - this.L) - 3;
                    } else if (i != 163) {
                        throw new t("Lacing only supported in SimpleBlocks.");
                    } else {
                        a(fVar, 4);
                        this.I = (this.i.a[3] & 255) + 1;
                        this.J = a(this.J, this.I);
                        int i4;
                        int i5;
                        int i6;
                        int[] iArr;
                        if (i3 == 2) {
                            Arrays.fill(this.J, 0, this.I, ((i2 - this.L) - 4) / this.I);
                        } else if (i3 == 1) {
                            i4 = 0;
                            i5 = 4;
                            for (i3 = 0; i3 < this.I - 1; i3++) {
                                this.J[i3] = 0;
                                do {
                                    i5++;
                                    a(fVar, i5);
                                    i6 = this.i.a[i5 - 1] & 255;
                                    iArr = this.J;
                                    iArr[i3] = iArr[i3] + i6;
                                } while (i6 == 255);
                                i4 += this.J[i3];
                            }
                            this.J[this.I - 1] = ((i2 - this.L) - i5) - i4;
                        } else if (i3 == 3) {
                            i4 = 0;
                            i5 = 4;
                            for (i3 = 0; i3 < this.I - 1; i3++) {
                                this.J[i3] = 0;
                                i5++;
                                a(fVar, i5);
                                if (this.i.a[i5 - 1] == (byte) 0) {
                                    throw new t("No valid varint length mask found");
                                }
                                long j = 0;
                                int i7 = 0;
                                while (true) {
                                    int i8 = i7;
                                    if (i8 < 8) {
                                        i7 = 1 << (7 - i8);
                                        if ((this.i.a[i5 - 1] & i7) != 0) {
                                            int i9 = i5 - 1;
                                            i5 += i8;
                                            a(fVar, i5);
                                            j = (long) ((this.i.a[i9] & 255) & (i7 ^ -1));
                                            for (i7 = i9 + 1; i7 < i5; i7++) {
                                                j = ((long) (this.i.a[i7] & 255)) | (j << 8);
                                            }
                                            if (i3 > 0) {
                                                j -= (1 << ((i8 * 7) + 6)) - 1;
                                            }
                                        } else {
                                            i7 = i8 + 1;
                                        }
                                    }
                                }
                                if (j < -2147483648L || j > 2147483647L) {
                                    throw new t("EBML lacing sample size out of range.");
                                }
                                i6 = (int) j;
                                iArr = this.J;
                                if (i3 != 0) {
                                    i6 += this.J[i3 - 1];
                                }
                                iArr[i3] = i6;
                                i4 += this.J[i3];
                            }
                            this.J[this.I - 1] = ((i2 - this.L) - i5) - i4;
                        } else {
                            throw new t("Unexpected lacing value: " + i3);
                        }
                    }
                    this.F = this.A + a((long) ((this.i.a[0] << 8) | (this.i.a[1] & 255)));
                    Object obj = (this.i.a[2] & 8) == 8 ? 1 : null;
                    Object obj2 = (bVar.c == 2 || (i == 163 && (this.i.a[2] & 128) == 128)) ? 1 : null;
                    this.M = (obj != null ? 134217728 : 0) | (obj2 != null ? 1 : 0);
                    this.E = 2;
                    this.H = 0;
                }
                if (i == 163) {
                    while (this.H < this.I) {
                        a(fVar, bVar, this.J[this.H]);
                        a(bVar, this.F + ((long) ((this.H * bVar.d) / 1000)));
                        this.H++;
                    }
                    this.E = 0;
                    return;
                }
                a(fVar, bVar, this.J[0]);
                return;
            case 16981:
                this.s.f = new byte[i2];
                fVar.b(this.s.f, 0, i2);
                return;
            case 18402:
                this.s.g = new byte[i2];
                fVar.b(this.s.g, 0, i2);
                return;
            case 21419:
                Arrays.fill(this.k.a, (byte) 0);
                fVar.b(this.k.a, 4 - i2, i2);
                this.k.b(0);
                this.v = (int) this.k.k();
                return;
            case 25506:
                this.s.h = new byte[i2];
                fVar.b(this.s.h, 0, i2);
                return;
            default:
                throw new t("Unexpected id: " + i);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(int i, long j) {
        switch (i) {
            case 131:
                this.s.c = (int) j;
                return;
            case 155:
                this.G = a(j);
                return;
            case 159:
                this.s.n = (int) j;
                return;
            case 176:
                this.s.i = (int) j;
                return;
            case 179:
                this.B.a(a(j));
                return;
            case 186:
                this.s.j = (int) j;
                return;
            case 215:
                this.s.b = (int) j;
                return;
            case 231:
                this.A = a(j);
                return;
            case 241:
                if (!this.D) {
                    this.C.a(j);
                    this.D = true;
                    return;
                }
                return;
            case 251:
                this.S = true;
                return;
            case 16980:
                if (j != 3) {
                    throw new t("ContentCompAlgo " + j + " not supported");
                }
                return;
            case 17029:
                if (j < 1 || j > 2) {
                    throw new t("DocTypeReadVersion " + j + " not supported");
                }
                return;
            case 17143:
                if (j != 1) {
                    throw new t("EBMLReadVersion " + j + " not supported");
                }
                return;
            case 18401:
                if (j != 5) {
                    throw new t("ContentEncAlgo " + j + " not supported");
                }
                return;
            case 18408:
                if (j != 1) {
                    throw new t("AESSettingsCipherMode " + j + " not supported");
                }
                return;
            case 20529:
                if (j != 0) {
                    throw new t("ContentEncodingOrder " + j + " not supported");
                }
                return;
            case 20530:
                if (j != 1) {
                    throw new t("ContentEncodingScope " + j + " not supported");
                }
                return;
            case 21420:
                this.w = this.n + j;
                return;
            case 21680:
                this.s.k = (int) j;
                return;
            case 21682:
                this.s.m = (int) j;
                return;
            case 21690:
                this.s.l = (int) j;
                return;
            case 22186:
                this.s.q = j;
                return;
            case 22203:
                this.s.r = j;
                return;
            case 25188:
                this.s.o = (int) j;
                return;
            case 2352003:
                this.s.d = (int) j;
                return;
            case 2807729:
                this.p = j;
                return;
            default:
                return;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(int i, long j, long j2) {
        switch (i) {
            case 160:
                this.S = false;
                return;
            case 174:
                this.s = new b();
                return;
            case 187:
                this.D = false;
                return;
            case 19899:
                this.v = -1;
                this.w = -1;
                return;
            case 20533:
                this.s.e = true;
                return;
            case 408125543:
                if (this.n == -1 || this.n == j) {
                    this.n = j;
                    this.o = j2;
                    return;
                }
                throw new t("Multiple Segment elements not supported");
            case 475249515:
                this.B = new i();
                this.C = new i();
                return;
            case 524531317:
                if (!this.u) {
                    if (this.y != -1) {
                        this.x = true;
                        return;
                    }
                    this.T.a(l.f);
                    this.u = true;
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(int i, String str) {
        switch (i) {
            case 134:
                this.s.a = str;
                return;
            case 17026:
                if (!"webm".equals(str) && !"matroska".equals(str)) {
                    throw new t("DocType " + str + " not supported");
                }
                return;
            case 2274716:
                this.s.u = str;
                return;
            default:
                return;
        }
    }

    public void a(g gVar) {
        this.T = gVar;
    }

    public boolean a(com.google.android.a.e.f fVar) {
        return new d().a(fVar);
    }

    public void b() {
        this.A = -1;
        this.E = 0;
        this.d.a();
        this.e.a();
        d();
    }

    /* Access modifiers changed, original: 0000 */
    public boolean b(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    public void c() {
    }

    /* Access modifiers changed, original: 0000 */
    public void c(int i) {
        switch (i) {
            case 160:
                if (this.E == 2) {
                    if (!this.S) {
                        this.M |= 1;
                    }
                    a((b) this.f.get(this.K), this.F);
                    this.E = 0;
                    return;
                }
                return;
            case 174:
                if (this.f.get(this.s.b) == null && a(this.s.a)) {
                    this.s.a(this.T, this.s.b, this.r);
                    this.f.put(this.s.b, this.s);
                }
                this.s = null;
                return;
            case 19899:
                if (this.v == -1 || this.w == -1) {
                    throw new t("Mandatory element SeekID or SeekPosition not found");
                } else if (this.v == 475249515) {
                    this.y = this.w;
                    return;
                } else {
                    return;
                }
            case 25152:
                if (!this.s.e) {
                    return;
                }
                if (this.s.g == null) {
                    throw new t("Encrypted Track found but ContentEncKeyID was not found");
                } else if (!this.t) {
                    this.T.a(new c(new com.google.android.a.d.a.b("video/webm", this.s.g)));
                    this.t = true;
                    return;
                } else {
                    return;
                }
            case 28032:
                if (this.s.e && this.s.f != null) {
                    throw new t("Combining encryption and compression is not supported");
                }
                return;
            case 357149030:
                if (this.p == -1) {
                    this.p = 1000000;
                }
                if (this.q != -1) {
                    this.r = a(this.q);
                    return;
                }
                return;
            case 374648427:
                if (this.f.size() == 0) {
                    throw new t("No valid tracks were found");
                }
                this.T.a();
                return;
            case 475249515:
                if (!this.u) {
                    this.T.a(e());
                    this.u = true;
                    return;
                }
                return;
            default:
                return;
        }
    }
}
