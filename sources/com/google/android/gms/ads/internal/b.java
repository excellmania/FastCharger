package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.overlay.j;
import com.google.android.gms.ads.internal.purchase.GInAppPurchaseManagerInfoParcel;
import com.google.android.gms.ads.internal.purchase.d;
import com.google.android.gms.ads.internal.purchase.f;
import com.google.android.gms.ads.internal.purchase.g;
import com.google.android.gms.ads.internal.purchase.k;
import com.google.android.gms.c.gv;
import com.google.android.gms.c.ha;
import com.google.android.gms.c.hf;
import com.google.android.gms.c.is;
import com.google.android.gms.c.jb;
import com.google.android.gms.c.kt;
import com.google.android.gms.c.mg;
import com.google.android.gms.c.mo;
import com.google.android.gms.c.nt;
import com.google.android.gms.c.nw;
import com.google.android.gms.c.ob;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.pg.a;
import com.google.android.gms.c.pn;
import com.google.android.gms.c.rv;
import com.google.android.gms.c.rw;
import com.google.android.gms.c.rx;
import com.google.android.gms.c.sj;
import com.google.android.gms.c.sz;
import com.google.android.gms.c.tc;
import com.google.android.gms.c.tr;
import com.google.android.gms.common.internal.c;
import java.util.ArrayList;
import java.util.UUID;

@pa
public abstract class b extends a implements j, com.google.android.gms.ads.internal.purchase.j, t, kt, mg {
    protected final mo j;
    protected transient boolean k;
    private final Messenger l;

    public b(Context context, ha haVar, String str, mo moVar, tc tcVar, d dVar) {
        this(new w(context, haVar, str, tcVar), moVar, null, dVar);
    }

    protected b(w wVar, mo moVar, @Nullable s sVar, d dVar) {
        super(wVar, sVar, dVar);
        this.j = moVar;
        this.l = new Messenger(new nt(this.f.c));
        this.k = false;
    }

    private a a(gv gvVar, Bundle bundle, rx rxVar) {
        PackageInfo packageInfo;
        int i;
        int i2;
        ApplicationInfo applicationInfo = this.f.c.getApplicationInfo();
        try {
            packageInfo = this.f.c.getPackageManager().getPackageInfo(applicationInfo.packageName, 0);
        } catch (NameNotFoundException e) {
            packageInfo = null;
        }
        DisplayMetrics displayMetrics = this.f.c.getResources().getDisplayMetrics();
        Bundle bundle2 = null;
        if (!(this.f.f == null || this.f.f.getParent() == null)) {
            int[] iArr = new int[2];
            this.f.f.getLocationOnScreen(iArr);
            i = iArr[0];
            int i3 = iArr[1];
            int width = this.f.f.getWidth();
            int height = this.f.f.getHeight();
            i2 = 0;
            if (this.f.f.isShown() && i + width > 0 && i3 + height > 0 && i <= displayMetrics.widthPixels && i3 <= displayMetrics.heightPixels) {
                i2 = 1;
            }
            bundle2 = new Bundle(5);
            bundle2.putInt("x", i);
            bundle2.putInt("y", i3);
            bundle2.putInt("width", width);
            bundle2.putInt("height", height);
            bundle2.putInt("visible", i2);
        }
        String d = v.i().d();
        this.f.l = new rw(d, this.f.b);
        this.f.l.a(gvVar);
        String a = v.e().a(this.f.c, this.f.f, this.f.i);
        long j = 0;
        if (this.f.p != null) {
            try {
                j = this.f.p.a();
            } catch (RemoteException e2) {
                sz.e("Cannot get correlation id, default to 0.");
            }
        }
        String uuid = UUID.randomUUID().toString();
        Bundle a2 = v.i().a(this.f.c, this, d);
        ArrayList arrayList = new ArrayList();
        i2 = 0;
        while (true) {
            i = i2;
            if (i >= this.f.v.size()) {
                break;
            }
            arrayList.add((String) this.f.v.keyAt(i));
            i2 = i + 1;
        }
        boolean z = this.f.q != null;
        boolean z2 = this.f.r != null && v.i().u();
        String str = "";
        if (((Boolean) is.cR.c()).booleanValue()) {
            sz.b("Getting webview cookie from CookieManager.");
            CookieManager b = v.g().b(this.f.c);
            if (b != null) {
                str = b.getCookie("googleads.g.doubleclick.net");
            }
        }
        String str2 = null;
        if (rxVar != null) {
            str2 = rxVar.c();
        }
        return new a(bundle2, gvVar, this.f.i, this.f.b, applicationInfo, packageInfo, d, v.i().a(), this.f.e, a2, this.f.A, arrayList, bundle, v.i().h(), this.l, displayMetrics.widthPixels, displayMetrics.heightPixels, displayMetrics.density, a, j, uuid, is.a(), this.f.a, this.f.w, new pn(z, z2, false), this.f.h(), v.e().g(), v.e().h(), v.e().k(this.f.c), v.e().b(this.f.f), this.f.c instanceof Activity, v.i().m(), str, str2, v.i().p(), v.B().a(), v.e().i(), v.m().a());
    }

    public void A() {
        f();
    }

    public void B() {
        d();
    }

    public void C() {
        if (this.f.j != null) {
            String str = this.f.j.q;
            sz.e(new StringBuilder(String.valueOf(str).length() + 74).append("Mediation adapter ").append(str).append(" refreshed, but mediation adapters should never refresh.").toString());
        }
        a(this.f.j, true);
        v();
    }

    public void D() {
        E();
    }

    public void E() {
        a(this.f.j, false);
    }

    public String F() {
        return this.f.j == null ? null : this.f.j.q;
    }

    public void G() {
        throw new IllegalStateException("showInterstitial is not supported for current ad type");
    }

    public void H() {
        v.e().a(new Runnable() {
            public void run() {
                b.this.e.b();
            }
        });
    }

    public void I() {
        v.e().a(new Runnable() {
            public void run() {
                b.this.e.c();
            }
        });
    }

    public void a() {
        this.h.b(this.f.j);
        this.k = false;
        s();
        this.f.l.c();
    }

    public void a(nw nwVar) {
        c.b("setInAppPurchaseListener must be called on the main UI thread.");
        this.f.q = nwVar;
    }

    public void a(ob obVar, @Nullable String str) {
        c.b("setPlayStorePurchaseParams must be called on the main UI thread.");
        this.f.B = new k(str);
        this.f.r = obVar;
        if (!v.i().g() && obVar != null) {
            new com.google.android.gms.ads.internal.purchase.c(this.f.c, this.f.r, this.f.B).e();
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(@Nullable rv rvVar, boolean z) {
        if (rvVar == null) {
            sz.e("Ad state was null when trying to ping impression URLs.");
            return;
        }
        super.c(rvVar);
        if (!(rvVar.r == null || rvVar.r.d == null)) {
            v.x().a(this.f.c, this.f.e.b, rvVar, this.f.b, z, rvVar.r.d);
        }
        if (rvVar.o != null && rvVar.o.g != null) {
            v.x().a(this.f.c, this.f.e.b, rvVar, this.f.b, z, rvVar.o.g);
        }
    }

    public void a(String str, ArrayList<String> arrayList) {
        d dVar = new d(str, arrayList, this.f.c, this.f.e.b);
        if (this.f.q == null) {
            sz.e("InAppPurchaseListener is not set. Try to launch default purchase flow.");
            if (!hf.a().b(this.f.c)) {
                sz.e("Google Play Service unavailable, cannot launch default purchase flow.");
                return;
            } else if (this.f.r == null) {
                sz.e("PlayStorePurchaseListener is not set.");
                return;
            } else if (this.f.B == null) {
                sz.e("PlayStorePurchaseVerifier is not initialized.");
                return;
            } else if (this.f.F) {
                sz.e("An in-app purchase request is already in progress, abort");
                return;
            } else {
                this.f.F = true;
                try {
                    if (this.f.r.a(str)) {
                        v.s().a(this.f.c, this.f.e.e, new GInAppPurchaseManagerInfoParcel(this.f.c, this.f.B, dVar, this));
                        return;
                    } else {
                        this.f.F = false;
                        return;
                    }
                } catch (RemoteException e) {
                    sz.e("Could not start In-App purchase.");
                    this.f.F = false;
                    return;
                }
            }
        }
        try {
            this.f.q.a(dVar);
        } catch (RemoteException e2) {
            sz.e("Could not start In-App purchase.");
        }
    }

    public void a(String str, boolean z, int i, final Intent intent, f fVar) {
        try {
            if (this.f.r != null) {
                this.f.r.a(new g(this.f.c, str, z, i, intent, fVar));
            }
        } catch (RemoteException e) {
            sz.e("Fail to invoke PlayStorePurchaseListener.");
        }
        sj.a.postDelayed(new Runnable() {
            public void run() {
                int a = v.s().a(intent);
                v.s();
                if (!(a != 0 || b.this.f.j == null || b.this.f.j.b == null || b.this.f.j.b.i() == null)) {
                    b.this.f.j.b.i().a();
                }
                b.this.f.F = false;
            }
        }, 500);
    }

    public boolean a(gv gvVar, jb jbVar) {
        if (!x()) {
            return false;
        }
        Bundle m = v.e().m(this.f.c);
        this.e.a();
        this.f.E = 0;
        rx rxVar = null;
        if (((Boolean) is.cz.c()).booleanValue()) {
            rxVar = v.i().q();
            v.A().a(this.f.c, this.f.e, false, rxVar, rxVar.d(), this.f.b);
        }
        a a = a(gvVar, m, rxVar);
        jbVar.a("seq_num", a.g);
        jbVar.a("request_id", a.v);
        jbVar.a("session_id", a.h);
        if (a.f != null) {
            jbVar.a("app_version", String.valueOf(a.f.versionCode));
        }
        this.f.g = v.a().a(this.f.c, a, this.f.d, this);
        return true;
    }

    /* Access modifiers changed, original: protected */
    public boolean a(gv gvVar, rv rvVar, boolean z) {
        if (!z && this.f.e()) {
            if (rvVar.h > 0) {
                this.e.a(gvVar, rvVar.h);
            } else if (rvVar.r != null && rvVar.r.i > 0) {
                this.e.a(gvVar, rvVar.r.i);
            } else if (!rvVar.n && rvVar.d == 2) {
                this.e.b(gvVar);
            }
        }
        return this.e.d();
    }

    /* Access modifiers changed, original: 0000 */
    public boolean a(rv rvVar) {
        gv gvVar;
        boolean z = false;
        if (this.g != null) {
            gvVar = this.g;
            this.g = null;
        } else {
            gvVar = rvVar.a;
            if (gvVar.c != null) {
                z = gvVar.c.getBoolean("_noRefresh", false);
            }
        }
        return a(gvVar, rvVar, z);
    }

    /* Access modifiers changed, original: protected */
    public boolean a(@Nullable rv rvVar, rv rvVar2) {
        int i;
        int i2 = 0;
        if (!(rvVar == null || rvVar.s == null)) {
            rvVar.s.a(null);
        }
        if (rvVar2.s != null) {
            rvVar2.s.a((mg) this);
        }
        if (rvVar2.r != null) {
            i = rvVar2.r.o;
            i2 = rvVar2.r.p;
        } else {
            i = 0;
        }
        this.f.C.a(i, i2);
        return true;
    }

    public void b() {
        this.h.d(this.f.j);
    }

    public void b(rv rvVar) {
        super.b(rvVar);
        if (rvVar.o != null) {
            sz.b("Disable the debug gesture detector on the mediation ad frame.");
            if (this.f.f != null) {
                this.f.f.d();
            }
            sz.b("Pinging network fill URLs.");
            v.x().a(this.f.c, this.f.e.b, rvVar, this.f.b, false, rvVar.o.h);
            if (!(rvVar.r == null || rvVar.r.f == null || rvVar.r.f.size() <= 0)) {
                sz.b("Pinging urls remotely");
                v.e().a(this.f.c, rvVar.r.f);
            }
        } else {
            sz.b("Enable the debug gesture detector on the admob ad frame.");
            if (this.f.f != null) {
                this.f.f.c();
            }
        }
        if (rvVar.d == 3 && rvVar.r != null && rvVar.r.e != null) {
            sz.b("Pinging no fill URLs.");
            v.x().a(this.f.c, this.f.e.b, rvVar, this.f.b, false, rvVar.r.e);
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean b(gv gvVar) {
        return super.b(gvVar) && !this.k;
    }

    public void c() {
        this.h.e(this.f.j);
    }

    public void d() {
        this.k = true;
        u();
    }

    public void e() {
        if (this.f.j == null) {
            sz.e("Ad state was null when trying to ping click URLs.");
            return;
        }
        if (!(this.f.j.r == null || this.f.j.r.c == null)) {
            v.x().a(this.f.c, this.f.e.b, this.f.j, this.f.b, false, this.f.j.r.c);
        }
        if (!(this.f.j.o == null || this.f.j.o.f == null)) {
            v.x().a(this.f.c, this.f.e.b, this.f.j, this.f.b, false, this.f.j.o.f);
        }
        super.e();
    }

    public void n() {
        c.b("pause must be called on the main UI thread.");
        if (!(this.f.j == null || this.f.j.b == null || !this.f.e())) {
            v.g().a(this.f.j.b);
        }
        if (!(this.f.j == null || this.f.j.p == null)) {
            try {
                this.f.j.p.d();
            } catch (RemoteException e) {
                sz.e("Could not pause mediation adapter.");
            }
        }
        this.h.d(this.f.j);
        this.e.b();
    }

    public void o() {
        c.b("resume must be called on the main UI thread.");
        tr trVar = null;
        if (!(this.f.j == null || this.f.j.b == null)) {
            trVar = this.f.j.b;
        }
        if (trVar != null && this.f.e()) {
            v.g().b(this.f.j.b);
        }
        if (!(this.f.j == null || this.f.j.p == null)) {
            try {
                this.f.j.p.e();
            } catch (RemoteException e) {
                sz.e("Could not resume mediation adapter.");
            }
        }
        if (trVar == null || !trVar.u()) {
            this.e.c();
        }
        this.h.e(this.f.j);
    }

    /* Access modifiers changed, original: protected */
    public boolean x() {
        return v.e().a(this.f.c.getPackageManager(), this.f.c.getPackageName(), "android.permission.INTERNET") && v.e().a(this.f.c);
    }

    public void y() {
        e();
    }

    public void z() {
        a();
    }
}
