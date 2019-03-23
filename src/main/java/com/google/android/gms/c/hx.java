package com.google.android.gms.c;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.a;
import com.google.android.gms.ads.a.c;
import com.google.android.gms.ads.d;
import com.google.android.gms.ads.f;
import com.google.android.gms.ads.h;
import com.google.android.gms.ads.i;
import com.google.android.gms.ads.purchase.b;
import java.util.concurrent.atomic.AtomicBoolean;

@pa
public class hx {
    final hh a;
    private final mn b;
    private final gz c;
    private final AtomicBoolean d;
    private final h e;
    private gq f;
    private a g;
    private d[] h;
    private com.google.android.gms.ads.a.a i;
    private f j;
    private hn k;
    private b l;
    private c m;
    private com.google.android.gms.ads.purchase.d n;
    private i o;
    private String p;
    private String q;
    private ViewGroup r;
    private int s;
    private boolean t;

    public hx(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, gz.a(), i);
    }

    public hx(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, z, gz.a(), i);
    }

    hx(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, gz gzVar, int i) {
        this(viewGroup, attributeSet, z, gzVar, null, i);
    }

    hx(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, gz gzVar, hn hnVar, int i) {
        this.b = new mn();
        this.e = new h();
        this.a = new hh() {
            public void a(int i) {
                hx.this.e.a(hx.this.l());
                super.a(i);
            }

            public void b() {
                hx.this.e.a(hx.this.l());
                super.b();
            }
        };
        this.r = viewGroup;
        this.c = gzVar;
        this.k = hnVar;
        this.d = new AtomicBoolean(false);
        this.s = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                hd hdVar = new hd(context, attributeSet);
                this.h = hdVar.a(z);
                this.p = hdVar.a();
                if (viewGroup.isInEditMode()) {
                    hf.a().a(viewGroup, a(context, this.h[0], this.s), "Ads by Google");
                }
            } catch (IllegalArgumentException e) {
                hf.a().a(viewGroup, new ha(context, d.a), e.getMessage(), e.getMessage());
            }
        }
    }

    private static ha a(Context context, d dVar, int i) {
        ha haVar = new ha(context, dVar);
        haVar.a(a(i));
        return haVar;
    }

    private static ha a(Context context, d[] dVarArr, int i) {
        ha haVar = new ha(context, dVarArr);
        haVar.a(a(i));
        return haVar;
    }

    private static boolean a(int i) {
        return i == 1;
    }

    private void o() {
        try {
            com.google.android.gms.a.a j = this.k.j();
            if (j != null) {
                this.r.addView((View) com.google.android.gms.a.b.a(j));
            }
        } catch (RemoteException e) {
            sz.c("Failed to get an ad frame.", e);
        }
    }

    public void a() {
        try {
            if (this.k != null) {
                this.k.i();
            }
        } catch (RemoteException e) {
            sz.c("Failed to destroy AdView.", e);
        }
    }

    public void a(com.google.android.gms.ads.a.a aVar) {
        try {
            this.i = aVar;
            if (this.k != null) {
                this.k.a(aVar != null ? new hc(aVar) : null);
            }
        } catch (RemoteException e) {
            sz.c("Failed to set the AppEventListener.", e);
        }
    }

    public void a(c cVar) {
        this.m = cVar;
        try {
            if (this.k != null) {
                this.k.a(cVar != null ? new jg(cVar) : null);
            }
        } catch (RemoteException e) {
            sz.c("Failed to set the onCustomRenderedAdLoadedListener.", e);
        }
    }

    public void a(a aVar) {
        this.g = aVar;
        this.a.a(aVar);
    }

    public void a(f fVar) {
        this.j = fVar;
        try {
            if (this.k != null) {
                this.k.a(this.j == null ? null : this.j.a());
            }
        } catch (RemoteException e) {
            sz.c("Failed to set correlator.", e);
        }
    }

    public void a(b bVar) {
        if (this.n != null) {
            throw new IllegalStateException("Play store purchase parameter has already been set.");
        }
        try {
            this.l = bVar;
            if (this.k != null) {
                this.k.a(bVar != null ? new oc(bVar) : null);
            }
        } catch (RemoteException e) {
            sz.c("Failed to set the InAppPurchaseListener.", e);
        }
    }

    public void a(gq gqVar) {
        try {
            this.f = gqVar;
            if (this.k != null) {
                this.k.a(gqVar != null ? new gr(gqVar) : null);
            }
        } catch (RemoteException e) {
            sz.c("Failed to set the AdClickListener.", e);
        }
    }

    public void a(hw hwVar) {
        try {
            if (this.k == null) {
                m();
            }
            if (this.k.a(this.c.a(this.r.getContext(), hwVar))) {
                this.b.a(hwVar.j());
            }
        } catch (RemoteException e) {
            sz.c("Failed to load ad.", e);
        }
    }

    public void a(String str) {
        if (this.p != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
        }
        this.p = str;
    }

    public void a(boolean z) {
        this.t = z;
        try {
            if (this.k != null) {
                this.k.a(this.t);
            }
        } catch (RemoteException e) {
            sz.c("Failed to set manual impressions.", e);
        }
    }

    public void a(d... dVarArr) {
        if (this.h != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        b(dVarArr);
    }

    public boolean a(ha haVar) {
        return "search_v2".equals(haVar.b);
    }

    public a b() {
        return this.g;
    }

    public void b(d... dVarArr) {
        this.h = dVarArr;
        try {
            if (this.k != null) {
                this.k.a(a(this.r.getContext(), this.h, this.s));
            }
        } catch (RemoteException e) {
            sz.c("Failed to set the ad size.", e);
        }
        this.r.requestLayout();
    }

    public d c() {
        try {
            if (this.k != null) {
                ha k = this.k.k();
                if (k != null) {
                    return k.b();
                }
            }
        } catch (RemoteException e) {
            sz.c("Failed to get the current AdSize.", e);
        }
        return this.h != null ? this.h[0] : null;
    }

    public d[] d() {
        return this.h;
    }

    public String e() {
        return this.p;
    }

    public com.google.android.gms.ads.a.a f() {
        return this.i;
    }

    public b g() {
        return this.l;
    }

    public c h() {
        return this.m;
    }

    public void i() {
        try {
            if (this.k != null) {
                this.k.n();
            }
        } catch (RemoteException e) {
            sz.c("Failed to call pause.", e);
        }
    }

    public void j() {
        try {
            if (this.k != null) {
                this.k.o();
            }
        } catch (RemoteException e) {
            sz.c("Failed to call resume.", e);
        }
    }

    public String k() {
        try {
            if (this.k != null) {
                return this.k.F();
            }
        } catch (RemoteException e) {
            sz.c("Failed to get the mediation adapter class name.", e);
        }
        return null;
    }

    public hu l() {
        hu huVar = null;
        if (this.k == null) {
            return huVar;
        }
        try {
            return this.k.r();
        } catch (RemoteException e) {
            sz.c("Failed to retrieve VideoController.", e);
            return huVar;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void m() {
        if ((this.h == null || this.p == null) && this.k == null) {
            throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
        }
        this.k = n();
        this.k.a(new gs(this.a));
        if (this.f != null) {
            this.k.a(new gr(this.f));
        }
        if (this.i != null) {
            this.k.a(new hc(this.i));
        }
        if (this.l != null) {
            this.k.a(new oc(this.l));
        }
        if (this.n != null) {
            this.k.a(new og(this.n), this.q);
        }
        if (this.m != null) {
            this.k.a(new jg(this.m));
        }
        if (this.j != null) {
            this.k.a(this.j.a());
        }
        if (this.o != null) {
            this.k.a(new ii(this.o));
        }
        this.k.a(this.t);
        o();
    }

    /* Access modifiers changed, original: protected */
    public hn n() {
        Context context = this.r.getContext();
        ha a = a(context, this.h, this.s);
        return a(a) ? hf.b().a(context, a, this.p) : hf.b().a(context, a, this.p, this.b);
    }
}
