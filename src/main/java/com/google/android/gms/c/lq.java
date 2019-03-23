package com.google.android.gms.c;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.d;
import com.google.android.gms.ads.internal.l;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.c.hn.a;

@pa
public class lq extends a {
    private final String a;
    private final lk b;
    @Nullable
    private l c;
    private final lm d;
    @Nullable
    private ob e;
    private String f;

    public lq(Context context, String str, mo moVar, tc tcVar, d dVar) {
        this(str, new lk(context, moVar, tcVar, dVar));
    }

    lq(String str, lk lkVar) {
        this.a = str;
        this.b = lkVar;
        this.d = new lm();
        v.t().a(lkVar);
    }

    private void b() {
        if (this.c != null && this.e != null) {
            this.c.a(this.e, this.f);
        }
    }

    static boolean b(gv gvVar) {
        Bundle a = ln.a(gvVar);
        return a != null && a.containsKey("gw");
    }

    static boolean c(gv gvVar) {
        Bundle a = ln.a(gvVar);
        return a != null && a.containsKey("_ad");
    }

    @Nullable
    public String F() {
        return this.c != null ? this.c.F() : null;
    }

    public void G() {
        if (this.c != null) {
            this.c.G();
        } else {
            sz.e("Interstitial ad must be loaded before showInterstitial().");
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a() {
        if (this.c == null) {
            this.c = this.b.a(this.a);
            this.d.a(this.c);
            b();
        }
    }

    public void a(ha haVar) {
        if (this.c != null) {
            this.c.a(haVar);
        }
    }

    public void a(hi hiVar) {
        this.d.e = hiVar;
        if (this.c != null) {
            this.d.a(this.c);
        }
    }

    public void a(hj hjVar) {
        this.d.a = hjVar;
        if (this.c != null) {
            this.d.a(this.c);
        }
    }

    public void a(hp hpVar) {
        this.d.b = hpVar;
        if (this.c != null) {
            this.d.a(this.c);
        }
    }

    public void a(hr hrVar) {
        a();
        if (this.c != null) {
            this.c.a(hrVar);
        }
    }

    public void a(ii iiVar) {
        throw new IllegalStateException("getVideoController not implemented for interstitials");
    }

    public void a(jf jfVar) {
        this.d.d = jfVar;
        if (this.c != null) {
            this.d.a(this.c);
        }
    }

    public void a(nw nwVar) {
        this.d.c = nwVar;
        if (this.c != null) {
            this.d.a(this.c);
        }
    }

    public void a(ob obVar, String str) {
        this.e = obVar;
        this.f = str;
        b();
    }

    public void a(qt qtVar) {
        this.d.f = qtVar;
        if (this.c != null) {
            this.d.a(this.c);
        }
    }

    public void a(String str) {
    }

    public void a(boolean z) {
        a();
        if (this.c != null) {
            this.c.a(z);
        }
    }

    public boolean a(gv gvVar) {
        if (((Boolean) is.aI.c()).booleanValue()) {
            gv.a(gvVar);
        }
        if (!b(gvVar)) {
            a();
        }
        if (ln.c(gvVar)) {
            a();
        }
        if (gvVar.j != null) {
            a();
        }
        if (this.c != null) {
            return this.c.a(gvVar);
        }
        ln t = v.t();
        if (c(gvVar)) {
            t.b(gvVar, this.a);
        }
        a a = t.a(gvVar, this.a);
        if (a != null) {
            if (!a.e) {
                a.a();
            }
            this.c = a.a;
            a.c.a(this.d);
            this.d.a(this.c);
            b();
            return a.f;
        }
        a();
        return this.c.a(gvVar);
    }

    public void i() {
        if (this.c != null) {
            this.c.i();
        }
    }

    @Nullable
    public com.google.android.gms.a.a j() {
        return this.c != null ? this.c.j() : null;
    }

    @Nullable
    public ha k() {
        return this.c != null ? this.c.k() : null;
    }

    public boolean l() {
        return this.c != null && this.c.l();
    }

    public void m() {
        if (this.c != null) {
            this.c.m();
        } else {
            sz.e("Interstitial ad must be loaded before pingManualTrackingUrl().");
        }
    }

    public void n() {
        if (this.c != null) {
            this.c.n();
        }
    }

    public void o() {
        if (this.c != null) {
            this.c.o();
        }
    }

    public void p() {
        if (this.c != null) {
            this.c.p();
        }
    }

    public boolean q() {
        return this.c != null && this.c.q();
    }

    public hu r() {
        throw new IllegalStateException("getVideoController not implemented for interstitials");
    }
}
