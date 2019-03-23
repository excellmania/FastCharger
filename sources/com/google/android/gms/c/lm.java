package com.google.android.gms.c;

import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.l;
import com.google.android.gms.ads.internal.v;

@pa
class lm {
    @Nullable
    hj a;
    @Nullable
    hp b;
    @Nullable
    nw c;
    @Nullable
    jf d;
    @Nullable
    hi e;
    @Nullable
    qt f;

    private static class a extends com.google.android.gms.c.hj.a {
        private final hj a;

        a(hj hjVar) {
            this.a = hjVar;
        }

        public void a() {
            this.a.a();
            v.t().a();
        }

        public void a(int i) {
            this.a.a(i);
        }

        public void b() {
            this.a.b();
        }

        public void c() {
            this.a.c();
        }

        public void d() {
            this.a.d();
        }
    }

    lm() {
    }

    /* Access modifiers changed, original: 0000 */
    public void a(l lVar) {
        if (this.a != null) {
            lVar.a((hj) new a(this.a));
        }
        if (this.b != null) {
            lVar.a(this.b);
        }
        if (this.c != null) {
            lVar.a(this.c);
        }
        if (this.d != null) {
            lVar.a(this.d);
        }
        if (this.e != null) {
            lVar.a(this.e);
        }
        if (this.f != null) {
            lVar.a(this.f);
        }
    }
}
