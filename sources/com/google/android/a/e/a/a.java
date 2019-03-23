package com.google.android.a.e.a;

import android.util.Pair;
import com.google.android.a.e.m;
import com.google.android.a.h.d;
import com.google.android.a.h.o;
import com.google.android.a.r;
import java.util.Collections;

final class a extends d {
    private static final int[] b = new int[]{5500, 11000, 22000, 44000};
    private boolean c;
    private boolean d;

    public a(m mVar) {
        super(mVar);
    }

    /* Access modifiers changed, original: protected */
    public void a(o oVar, long j) {
        int f = oVar.f();
        if (f == 0 && !this.d) {
            byte[] bArr = new byte[oVar.b()];
            oVar.a(bArr, 0, bArr.length);
            Pair a = d.a(bArr);
            this.a.a(r.a(null, "audio/mp4a-latm", -1, -1, a(), ((Integer) a.second).intValue(), ((Integer) a.first).intValue(), Collections.singletonList(bArr), null));
            this.d = true;
        } else if (f == 1) {
            int b = oVar.b();
            this.a.a(oVar, b);
            this.a.a(j, 1, b, 0, null);
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean a(o oVar) {
        if (this.c) {
            oVar.c(1);
        } else {
            int f = oVar.f();
            int i = (f >> 4) & 15;
            f = (f >> 2) & 3;
            if (f < 0 || f >= b.length) {
                throw new com.google.android.a.e.a.d.a("Invalid sample rate index: " + f);
            } else if (i != 10) {
                throw new com.google.android.a.e.a.d.a("Audio format not supported: " + i);
            } else {
                this.c = true;
            }
        }
        return true;
    }
}
