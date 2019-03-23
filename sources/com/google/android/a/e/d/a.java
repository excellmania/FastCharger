package com.google.android.a.e.d;

import android.support.v4.media.TransportMediator;
import com.google.android.a.e.j;
import com.google.android.a.e.l;
import com.google.android.a.h.f;
import com.google.android.a.h.g;
import com.google.android.a.h.h;
import com.google.android.a.h.o;
import com.google.android.a.r;
import java.util.Arrays;
import java.util.Collections;

final class a extends f {
    private g e;
    private f f;
    private boolean g;

    a() {
    }

    static boolean a(o oVar) {
        return oVar.f() == TransportMediator.KEYCODE_MEDIA_PAUSE && oVar.k() == 1179402563;
    }

    public int a(com.google.android.a.e.f fVar, j jVar) {
        long c = fVar.c();
        if (!this.b.a(fVar, this.a)) {
            return -1;
        }
        byte[] bArr = this.a.a;
        if (this.e == null) {
            this.e = new g(bArr, 17);
            bArr = Arrays.copyOfRange(bArr, 9, this.a.c());
            bArr[4] = Byte.MIN_VALUE;
            this.c.a(r.a(null, "audio/x-flac", this.e.a(), -1, this.e.b(), this.e.f, this.e.e, Collections.singletonList(bArr), null));
        } else if (bArr[0] == (byte) -1) {
            if (!this.g) {
                if (this.f != null) {
                    this.d.a(this.f.a(c, (long) this.e.e));
                    this.f = null;
                } else {
                    this.d.a(l.f);
                }
                this.g = true;
            }
            this.c.a(this.a, this.a.c());
            this.a.b(0);
            this.c.a(h.a(this.e, this.a), 1, this.a.c(), 0, null);
        } else if ((bArr[0] & TransportMediator.KEYCODE_MEDIA_PAUSE) == 3 && this.f == null) {
            this.f = f.a(this.a);
        }
        this.a.a();
        return 0;
    }
}
