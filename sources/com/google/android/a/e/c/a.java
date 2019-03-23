package com.google.android.a.e.c;

import android.support.v4.view.ViewCompat;
import com.google.android.a.h.o;
import com.google.android.a.h.x;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

abstract class a {
    public static final int A = x.e("moov");
    public static final int B = x.e("mvhd");
    public static final int C = x.e("trak");
    public static final int D = x.e("mdia");
    public static final int E = x.e("minf");
    public static final int F = x.e("stbl");
    public static final int G = x.e("avcC");
    public static final int H = x.e("hvcC");
    public static final int I = x.e("esds");
    public static final int J = x.e("moof");
    public static final int K = x.e("traf");
    public static final int L = x.e("mvex");
    public static final int M = x.e("tkhd");
    public static final int N = x.e("edts");
    public static final int O = x.e("elst");
    public static final int P = x.e("mdhd");
    public static final int Q = x.e("hdlr");
    public static final int R = x.e("stsd");
    public static final int S = x.e("pssh");
    public static final int T = x.e("sinf");
    public static final int U = x.e("schm");
    public static final int V = x.e("schi");
    public static final int W = x.e("tenc");
    public static final int X = x.e("encv");
    public static final int Y = x.e("enca");
    public static final int Z = x.e("frma");
    public static final int a = x.e("ftyp");
    public static final int aA = x.e("----");
    public static final int aa = x.e("saiz");
    public static final int ab = x.e("saio");
    public static final int ac = x.e("uuid");
    public static final int ad = x.e("senc");
    public static final int ae = x.e("pasp");
    public static final int af = x.e("TTML");
    public static final int ag = x.e("vmhd");
    public static final int ah = x.e("mp4v");
    public static final int ai = x.e("stts");
    public static final int aj = x.e("stss");
    public static final int ak = x.e("ctts");
    public static final int al = x.e("stsc");
    public static final int am = x.e("stsz");
    public static final int an = x.e("stco");
    public static final int ao = x.e("co64");
    public static final int ap = x.e("tx3g");
    public static final int aq = x.e("wvtt");
    public static final int ar = x.e("stpp");
    public static final int as = x.e("samr");
    public static final int at = x.e("sawb");
    public static final int au = x.e("udta");
    public static final int av = x.e("meta");
    public static final int aw = x.e("ilst");
    public static final int ax = x.e("mean");
    public static final int ay = x.e("name");
    public static final int az = x.e("data");
    public static final int b = x.e("avc1");
    public static final int c = x.e("avc3");
    public static final int d = x.e("hvc1");
    public static final int e = x.e("hev1");
    public static final int f = x.e("s263");
    public static final int g = x.e("d263");
    public static final int h = x.e("mdat");
    public static final int i = x.e("mp4a");
    public static final int j = x.e("wave");
    public static final int k = x.e("lpcm");
    public static final int l = x.e("sowt");
    public static final int m = x.e("ac-3");
    public static final int n = x.e("dac3");
    public static final int o = x.e("ec-3");
    public static final int p = x.e("dec3");
    public static final int q = x.e("dtsc");
    public static final int r = x.e("dtsh");
    public static final int s = x.e("dtsl");
    public static final int t = x.e("dtse");
    public static final int u = x.e("ddts");
    public static final int v = x.e("tfdt");
    public static final int w = x.e("tfhd");
    public static final int x = x.e("trex");
    public static final int y = x.e("trun");
    public static final int z = x.e("sidx");
    public final int aB;

    static final class a extends a {
        public final long aC;
        public final List<b> aD = new ArrayList();
        public final List<a> aE = new ArrayList();

        public a(int i, long j) {
            super(i);
            this.aC = j;
        }

        public void a(a aVar) {
            this.aE.add(aVar);
        }

        public void a(b bVar) {
            this.aD.add(bVar);
        }

        public b d(int i) {
            int size = this.aD.size();
            for (int i2 = 0; i2 < size; i2++) {
                b bVar = (b) this.aD.get(i2);
                if (bVar.aB == i) {
                    return bVar;
                }
            }
            return null;
        }

        public a e(int i) {
            int size = this.aE.size();
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = (a) this.aE.get(i2);
                if (aVar.aB == i) {
                    return aVar;
                }
            }
            return null;
        }

        public int f(int i) {
            int i2;
            int i3 = 0;
            int size = this.aD.size();
            int i4 = 0;
            int i5 = 0;
            while (i4 < size) {
                i2 = ((b) this.aD.get(i4)).aB == i ? i5 + 1 : i5;
                i4++;
                i5 = i2;
            }
            i4 = this.aE.size();
            while (i3 < i4) {
                i2 = ((a) this.aE.get(i3)).aB == i ? i5 + 1 : i5;
                i3++;
                i5 = i2;
            }
            return i5;
        }

        public String toString() {
            return a.c(this.aB) + " leaves: " + Arrays.toString(this.aD.toArray(new b[0])) + " containers: " + Arrays.toString(this.aE.toArray(new a[0]));
        }
    }

    static final class b extends a {
        public final o aC;

        public b(int i, o oVar) {
            super(i);
            this.aC = oVar;
        }
    }

    public a(int i) {
        this.aB = i;
    }

    public static int a(int i) {
        return (i >> 24) & 255;
    }

    public static int b(int i) {
        return ViewCompat.MEASURED_SIZE_MASK & i;
    }

    public static String c(int i) {
        return "" + ((char) (i >> 24)) + ((char) ((i >> 16) & 255)) + ((char) ((i >> 8) & 255)) + ((char) (i & 255));
    }

    public String toString() {
        return c(this.aB);
    }
}
