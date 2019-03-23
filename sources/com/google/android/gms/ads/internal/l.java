package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.view.Window;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.c.fr;
import com.google.android.gms.c.gv;
import com.google.android.gms.c.ha;
import com.google.android.gms.c.is;
import com.google.android.gms.c.jb;
import com.google.android.gms.c.kw;
import com.google.android.gms.c.lb;
import com.google.android.gms.c.lx;
import com.google.android.gms.c.me;
import com.google.android.gms.c.mf;
import com.google.android.gms.c.mo;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.pj;
import com.google.android.gms.c.qa;
import com.google.android.gms.c.rk;
import com.google.android.gms.c.rp;
import com.google.android.gms.c.rv;
import com.google.android.gms.c.se;
import com.google.android.gms.c.sj;
import com.google.android.gms.c.sz;
import com.google.android.gms.c.tc;
import com.google.android.gms.c.tr;
import com.google.android.gms.c.ts;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.util.k;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;

@pa
public class l extends c implements kw, com.google.android.gms.c.lb.a {
    protected transient boolean l = false;
    private int m = -1;
    private boolean n;
    private float o;

    @pa
    private class a extends se {
        private final int b;

        public a(int i) {
            this.b = i;
        }

        public void a() {
            m mVar = new m(l.this.f.G, l.this.M(), l.this.n, l.this.o, l.this.f.G ? this.b : -1);
            int q = l.this.f.j.b.q();
            final AdOverlayInfoParcel adOverlayInfoParcel = new AdOverlayInfoParcel(l.this, l.this, l.this, l.this.f.j.b, q == -1 ? l.this.f.j.g : q, l.this.f.e, l.this.f.j.C, mVar);
            sj.a.post(new Runnable() {
                public void run() {
                    v.c().a(l.this.f.c, adOverlayInfoParcel);
                }
            });
        }

        public void b() {
        }
    }

    public l(Context context, ha haVar, String str, mo moVar, tc tcVar, d dVar) {
        super(context, haVar, str, moVar, tcVar, dVar);
    }

    private void a(Bundle bundle) {
        v.e().b(this.f.c, this.f.e.b, "gmob-apps", bundle, false);
    }

    static com.google.android.gms.c.rv.a b(com.google.android.gms.c.rv.a aVar) {
        try {
            String jSONObject = qa.a(aVar.b).toString();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(com.google.ads.mediation.a.AD_UNIT_ID_PARAMETER, aVar.a.e);
            me meVar = new me(jSONObject, null, Collections.singletonList("com.google.ads.mediation.admob.AdMobAdapter"), null, null, Collections.emptyList(), Collections.emptyList(), jSONObject2.toString(), null, Collections.emptyList(), Collections.emptyList(), null, null, null, null, null, Collections.emptyList());
            pj pjVar = aVar.b;
            mf mfVar = new mf(Collections.singletonList(meVar), -1, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), pjVar.J, pjVar.K, "", -1, 0, 1, null, 0, -1, -1, false);
            return new com.google.android.gms.c.rv.a(aVar.a, new pj(aVar.a, pjVar.b, pjVar.c, Collections.emptyList(), Collections.emptyList(), pjVar.g, true, pjVar.i, Collections.emptyList(), pjVar.k, pjVar.l, pjVar.m, pjVar.n, pjVar.o, pjVar.p, pjVar.q, null, pjVar.s, pjVar.t, pjVar.u, pjVar.v, pjVar.w, pjVar.z, pjVar.A, pjVar.B, null, Collections.emptyList(), Collections.emptyList(), pjVar.F, pjVar.G, pjVar.H, pjVar.I, pjVar.J, pjVar.K, pjVar.L, null, pjVar.N, pjVar.O), mfVar, aVar.d, aVar.e, aVar.f, aVar.g, null);
        } catch (JSONException e) {
            sz.b("Unable to generate ad state for an interstitial ad with pooling.", e);
            return aVar;
        }
    }

    public void G() {
        c.b("showInterstitial must be called on the main UI thread.");
        if (this.f.j == null) {
            sz.e("The interstitial has not loaded.");
            return;
        }
        if (((Boolean) is.bb.c()).booleanValue()) {
            Bundle bundle;
            String packageName = this.f.c.getApplicationContext() != null ? this.f.c.getApplicationContext().getPackageName() : this.f.c.getPackageName();
            if (!this.l) {
                sz.e("It is not recommended to show an interstitial before onAdLoaded completes.");
                bundle = new Bundle();
                bundle.putString("appid", packageName);
                bundle.putString("action", "show_interstitial_before_load_finish");
                a(bundle);
            }
            if (!v.e().g(this.f.c)) {
                sz.e("It is not recommended to show an interstitial when app is not in foreground.");
                bundle = new Bundle();
                bundle.putString("appid", packageName);
                bundle.putString("action", "show_interstitial_app_not_in_foreground");
                a(bundle);
            }
        }
        if (!this.f.f()) {
            if (this.f.j.n && this.f.j.p != null) {
                try {
                    this.f.j.p.b();
                } catch (RemoteException e) {
                    sz.c("Could not show interstitial.", e);
                    N();
                }
            } else if (this.f.j.b == null) {
                sz.e("The interstitial failed to load.");
            } else if (this.f.j.b.p()) {
                sz.e("The interstitial is already showing.");
            } else {
                this.f.j.b.a(true);
                if (this.f.j.j != null) {
                    this.h.a(this.f.i, this.f.j);
                }
                if (k.c()) {
                    final rv rvVar = this.f.j;
                    if (rvVar.a()) {
                        new fr(this.f.c, rvVar.b.b()).a(rvVar.b);
                    } else {
                        rvVar.b.l().a(new ts.c() {
                            public void a() {
                                new fr(l.this.f.c, rvVar.b.b()).a(rvVar.b);
                            }
                        });
                    }
                }
                Bitmap h = this.f.G ? v.e().h(this.f.c) : null;
                this.m = v.z().a(h);
                if (!((Boolean) is.bT.c()).booleanValue() || h == null) {
                    m mVar = new m(this.f.G, M(), false, 0.0f, -1);
                    int q = this.f.j.b.q();
                    if (q == -1) {
                        q = this.f.j.g;
                    }
                    v.c().a(this.f.c, new AdOverlayInfoParcel(this, this, this, this.f.j.b, q, this.f.e, this.f.j.C, mVar));
                    return;
                }
                new a(this.m).e();
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean M() {
        if (!(this.f.c instanceof Activity)) {
            return false;
        }
        Window window = ((Activity) this.f.c).getWindow();
        if (window == null || window.getDecorView() == null) {
            return false;
        }
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        window.getDecorView().getGlobalVisibleRect(rect, null);
        window.getDecorView().getWindowVisibleDisplayFrame(rect2);
        boolean z = (rect.bottom == 0 || rect2.bottom == 0 || rect.top != rect2.top) ? false : true;
        return z;
    }

    public void N() {
        v.z().b(Integer.valueOf(this.m));
        if (this.f.e()) {
            this.f.b();
            this.f.j = null;
            this.f.G = false;
            this.l = false;
        }
    }

    public void O() {
        if (!(this.f.j == null || this.f.j.y == null)) {
            v.e().a(this.f.c, this.f.e.b, this.f.j.y);
        }
        w();
    }

    /* Access modifiers changed, original: protected */
    public tr a(com.google.android.gms.c.rv.a aVar, @Nullable e eVar, @Nullable rp rpVar) {
        tr a = v.f().a(this.f.c, this.f.i, false, false, this.f.d, this.f.e, this.a, this, this.i);
        a.l().a(this, null, this, this, ((Boolean) is.ar.c()).booleanValue(), this, this, eVar, null, rpVar);
        a((lx) a);
        a.b(aVar.a.w);
        lb.a(a, (com.google.android.gms.c.lb.a) this);
        return a;
    }

    public void a(com.google.android.gms.c.rv.a aVar, jb jbVar) {
        Object obj = 1;
        if (!((Boolean) is.aK.c()).booleanValue()) {
            super.a(aVar, jbVar);
        } else if (aVar.e != -2) {
            super.a(aVar, jbVar);
        } else {
            Bundle bundle = aVar.a.c.m.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
            Object obj2 = (bundle == null || !bundle.containsKey("gw")) ? 1 : null;
            if (aVar.b.h) {
                obj = null;
            }
            if (!(obj2 == null || obj == null)) {
                this.f.k = b(aVar);
            }
            super.a(this.f.k, jbVar);
        }
    }

    public void a(boolean z, float f) {
        this.n = z;
        this.o = f;
    }

    public boolean a(gv gvVar, jb jbVar) {
        if (this.f.j == null) {
            return super.a(gvVar, jbVar);
        }
        sz.e("An interstitial is already loading. Aborting.");
        return false;
    }

    /* Access modifiers changed, original: protected */
    public boolean a(gv gvVar, rv rvVar, boolean z) {
        if (this.f.e() && rvVar.b != null) {
            v.g().a(rvVar.b);
        }
        return this.e.d();
    }

    public boolean a(@Nullable rv rvVar, rv rvVar2) {
        if (!super.a(rvVar, rvVar2)) {
            return false;
        }
        if (!(this.f.e() || this.f.D == null || rvVar2.j == null)) {
            this.h.a(this.f.i, rvVar2, this.f.D);
        }
        return true;
    }

    public void b(rk rkVar) {
        if (this.f.j != null) {
            if (this.f.j.z != null) {
                v.e().a(this.f.c, this.f.e.b, this.f.j.z);
            }
            if (this.f.j.x != null) {
                rkVar = this.f.j.x;
            }
        }
        a(rkVar);
    }

    public void b(boolean z) {
        this.f.G = z;
    }

    public void d() {
        E();
        super.d();
        if (this.f.j != null && this.f.j.b != null) {
            ts l = this.f.j.b.l();
            if (l != null) {
                l.h();
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void s() {
        N();
        super.s();
    }

    /* Access modifiers changed, original: protected */
    public void v() {
        super.v();
        this.l = true;
    }
}
