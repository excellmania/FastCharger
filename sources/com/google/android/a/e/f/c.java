package com.google.android.a.e.f;

import android.util.Log;
import com.google.android.a.e.f;
import com.google.android.a.h.b;
import com.google.android.a.h.o;
import com.google.android.a.h.x;
import com.google.android.a.t;

final class c {

    private static final class a {
        public final int a;
        public final long b;

        private a(int i, long j) {
            this.a = i;
            this.b = j;
        }

        public static a a(f fVar, o oVar) {
            fVar.c(oVar.a, 0, 8);
            oVar.b(0);
            return new a(oVar.m(), oVar.l());
        }
    }

    public static b a(f fVar) {
        b.a((Object) fVar);
        o oVar = new o(16);
        if (a.a(fVar, oVar).a != x.e("RIFF")) {
            return null;
        }
        fVar.c(oVar.a, 0, 4);
        oVar.b(0);
        int m = oVar.m();
        if (m != x.e("WAVE")) {
            Log.e("WavHeaderReader", "Unsupported RIFF format: " + m);
            return null;
        }
        a a = a.a(fVar, oVar);
        while (a.a != x.e("fmt ")) {
            fVar.c((int) a.b);
            a = a.a(fVar, oVar);
        }
        b.b(a.b >= 16);
        fVar.c(oVar.a, 0, 16);
        oVar.b(0);
        int h = oVar.h();
        int h2 = oVar.h();
        int t = oVar.t();
        int t2 = oVar.t();
        int h3 = oVar.h();
        int h4 = oVar.h();
        int i = (h2 * h4) / 8;
        if (h3 != i) {
            throw new t("Expected block alignment: " + i + "; got: " + h3);
        }
        i = x.b(h4);
        if (i == 0) {
            Log.e("WavHeaderReader", "Unsupported WAV bit depth: " + h4);
            return null;
        } else if (h == 1 || h == 65534) {
            fVar.c(((int) a.b) - 16);
            return new b(h2, t, t2, h3, h4, i);
        } else {
            Log.e("WavHeaderReader", "Unsupported WAV format type: " + h);
            return null;
        }
    }

    public static void a(f fVar, b bVar) {
        b.a((Object) fVar);
        b.a((Object) bVar);
        fVar.a();
        o oVar = new o(8);
        a a = a.a(fVar, oVar);
        while (a.a != x.e("data")) {
            Log.w("WavHeaderReader", "Ignoring unknown WAV chunk: " + a.a);
            long j = 8 + a.b;
            if (a.a == x.e("RIFF")) {
                j = 12;
            }
            if (j > 2147483647L) {
                throw new t("Chunk is too large (~2GB+) to skip; id: " + a.a);
            }
            fVar.b((int) j);
            a = a.a(fVar, oVar);
        }
        fVar.b(8);
        bVar.a(fVar.c(), a.b);
    }
}
