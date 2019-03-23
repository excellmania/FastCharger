package com.google.android.gms.ads.internal;

import android.os.Debug;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewParent;
import com.google.android.gms.a.b;
import com.google.android.gms.ads.internal.overlay.s;
import com.google.android.gms.c.fl;
import com.google.android.gms.c.gq;
import com.google.android.gms.c.gv;
import com.google.android.gms.c.gw;
import com.google.android.gms.c.ha;
import com.google.android.gms.c.hf;
import com.google.android.gms.c.hi;
import com.google.android.gms.c.hj;
import com.google.android.gms.c.hp;
import com.google.android.gms.c.hr;
import com.google.android.gms.c.hu;
import com.google.android.gms.c.ig;
import com.google.android.gms.c.ii;
import com.google.android.gms.c.is;
import com.google.android.gms.c.iz;
import com.google.android.gms.c.jb;
import com.google.android.gms.c.jf;
import com.google.android.gms.c.kn;
import com.google.android.gms.c.nw;
import com.google.android.gms.c.ob;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.qn;
import com.google.android.gms.c.qt;
import com.google.android.gms.c.rk;
import com.google.android.gms.c.rv;
import com.google.android.gms.c.rw;
import com.google.android.gms.c.sb;
import com.google.android.gms.c.sc;
import com.google.android.gms.c.sz;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.util.f;
import java.util.HashSet;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CountDownLatch;

@pa
public abstract class a extends com.google.android.gms.c.hn.a implements s, gq, kn, com.google.android.gms.c.ol.a, com.google.android.gms.c.pb.a, sb {
    protected jb a;
    protected iz b;
    protected iz c;
    protected boolean d = false;
    protected final s e;
    protected final w f;
    @Nullable
    protected transient gv g;
    protected final fl h;
    protected final d i;

    a(w wVar, @Nullable s sVar, d dVar) {
        this.f = wVar;
        if (sVar == null) {
            sVar = new s(this);
        }
        this.e = sVar;
        this.i = dVar;
        v.e().b(this.f.c);
        v.i().a(this.f.c, this.f.e);
        v.j().a(this.f.c);
        this.h = v.i().r();
        v.h().a(this.f.c);
        x();
    }

    private TimerTask a(final Timer timer, final CountDownLatch countDownLatch) {
        return new TimerTask() {
            public void run() {
                if (((long) ((Integer) is.cr.c()).intValue()) != countDownLatch.getCount()) {
                    sz.b("Stopping method tracing");
                    Debug.stopMethodTracing();
                    if (countDownLatch.getCount() == 0) {
                        timer.cancel();
                        return;
                    }
                }
                String concat = String.valueOf(a.this.f.c.getPackageName()).concat("_adsTrace_");
                try {
                    sz.b("Starting method tracing");
                    countDownLatch.countDown();
                    Debug.startMethodTracing(new StringBuilder(String.valueOf(concat).length() + 20).append(concat).append(v.k().a()).toString(), ((Integer) is.cs.c()).intValue());
                } catch (Exception e) {
                    sz.c("Exception occurred while starting method tracing.", e);
                }
            }
        };
    }

    private gv d(gv gvVar) {
        return (!f.c(this.f.c) || gvVar.k == null) ? gvVar : new gw(gvVar).a(null).a();
    }

    private void d(rv rvVar) {
        if (v.m().b() && !rvVar.H && !TextUtils.isEmpty(rvVar.D)) {
            sz.b("Sending troubleshooting signals to the server.");
            v.m().a(this.f.c, this.f.e.b, rvVar.D, this.f.b);
            rvVar.H = true;
        }
    }

    private void x() {
        if (((Boolean) is.cp.c()).booleanValue()) {
            Timer timer = new Timer();
            timer.schedule(a(timer, new CountDownLatch(((Integer) is.cr.c()).intValue())), 0, ((Long) is.cq.c()).longValue());
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(int i) {
        sz.e("Failed to load ad: " + i);
        this.d = false;
        if (this.f.n != null) {
            try {
                this.f.n.a(i);
            } catch (RemoteException e) {
                sz.c("Could not call AdListener.onAdFailedToLoad().", e);
            }
        }
        if (this.f.z != null) {
            try {
                this.f.z.a(i);
            } catch (RemoteException e2) {
                sz.c("Could not call RewardedVideoAdListener.onRewardedVideoAdFailedToLoad().", e2);
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(View view) {
        com.google.android.gms.ads.internal.w.a aVar = this.f.f;
        if (aVar != null) {
            aVar.addView(view, v.g().d());
        }
    }

    public void a(ha haVar) {
        c.b("setAdSize must be called on the main UI thread.");
        this.f.i = haVar;
        if (!(this.f.j == null || this.f.j.b == null || this.f.E != 0)) {
            this.f.j.b.a(haVar);
        }
        if (this.f.f != null) {
            if (this.f.f.getChildCount() > 1) {
                this.f.f.removeView(this.f.f.getNextView());
            }
            this.f.f.setMinimumWidth(haVar.g);
            this.f.f.setMinimumHeight(haVar.d);
            this.f.f.requestLayout();
        }
    }

    public void a(hi hiVar) {
        c.b("setAdListener must be called on the main UI thread.");
        this.f.m = hiVar;
    }

    public void a(hj hjVar) {
        c.b("setAdListener must be called on the main UI thread.");
        this.f.n = hjVar;
    }

    public void a(hp hpVar) {
        c.b("setAppEventListener must be called on the main UI thread.");
        this.f.o = hpVar;
    }

    public void a(hr hrVar) {
        c.b("setCorrelationIdProvider must be called on the main UI thread");
        this.f.p = hrVar;
    }

    public void a(@Nullable ii iiVar) {
        c.b("setVideoOptions must be called on the main UI thread.");
        this.f.x = iiVar;
    }

    public void a(jf jfVar) {
        throw new IllegalStateException("setOnCustomRenderedAdLoadedListener is not supported for current ad type");
    }

    public void a(nw nwVar) {
        throw new IllegalStateException("setInAppPurchaseListener is not supported for current ad type");
    }

    public void a(ob obVar, String str) {
        throw new IllegalStateException("setPlayStorePurchaseParams is not supported for current ad type");
    }

    public void a(qt qtVar) {
        c.b("setRewardedVideoAdListener can only be called from the UI thread.");
        this.f.z = qtVar;
    }

    /* Access modifiers changed, original: protected */
    public void a(@Nullable rk rkVar) {
        if (this.f.z != null) {
            try {
                String str = "";
                int i = 0;
                if (rkVar != null) {
                    str = rkVar.b;
                    i = rkVar.c;
                }
                this.f.z.a(new qn(str, i));
            } catch (RemoteException e) {
                sz.c("Could not call RewardedVideoAdListener.onRewarded().", e);
            }
        }
    }

    public void a(com.google.android.gms.c.rv.a aVar) {
        if (!(aVar.b.n == -1 || TextUtils.isEmpty(aVar.b.y))) {
            long b = b(aVar.b.y);
            if (b != -1) {
                iz a = this.a.a(b + aVar.b.n);
                this.a.a(a, "stc");
            }
        }
        this.a.a(aVar.b.y);
        this.a.a(this.b, "arf");
        this.c = this.a.a();
        this.a.a("gqi", aVar.b.z);
        this.f.g = null;
        this.f.k = aVar;
        a(aVar, this.a);
    }

    public abstract void a(com.google.android.gms.c.rv.a aVar, jb jbVar);

    public void a(String str) {
        sz.e("RewardedVideoAd.setUserId() is deprecated. Please do not call this method.");
    }

    public void a(String str, @Nullable String str2) {
        if (this.f.o != null) {
            try {
                this.f.o.a(str, str2);
            } catch (RemoteException e) {
                sz.c("Could not call the AppEventListener.", e);
            }
        }
    }

    public void a(HashSet<rw> hashSet) {
        this.f.a((HashSet) hashSet);
    }

    public void a(boolean z) {
        throw new UnsupportedOperationException("Attempt to call setManualImpressionsEnabled for an unsupported ad type.");
    }

    public boolean a(gv gvVar) {
        c.b("loadAd must be called on the main UI thread.");
        v.j().a();
        if (((Boolean) is.aI.c()).booleanValue()) {
            gv.a(gvVar);
        }
        gv d = d(gvVar);
        if (this.f.g == null && this.f.h == null) {
            sz.d("Starting ad request.");
            h();
            this.b = this.a.a();
            if (!d.f) {
                String valueOf = String.valueOf(hf.a().a(this.f.c));
                sz.d(new StringBuilder(String.valueOf(valueOf).length() + 71).append("Use AdRequest.Builder.addTestDevice(\"").append(valueOf).append("\") to get test ads on this device.").toString());
            }
            this.e.a(d);
            this.d = a(d, this.a);
            return this.d;
        }
        if (this.g != null) {
            sz.e("Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes.");
        } else {
            sz.e("Loading already in progress, saving this object for future refreshes.");
        }
        this.g = d;
        return false;
    }

    public abstract boolean a(gv gvVar, jb jbVar);

    /* Access modifiers changed, original: 0000 */
    public boolean a(rv rvVar) {
        return false;
    }

    public abstract boolean a(@Nullable rv rvVar, rv rvVar2);

    /* Access modifiers changed, original: 0000 */
    public long b(String str) {
        int indexOf = str.indexOf("ufe");
        int indexOf2 = str.indexOf(44, indexOf);
        if (indexOf2 == -1) {
            indexOf2 = str.length();
        }
        try {
            return Long.parseLong(str.substring(indexOf + 4, indexOf2));
        } catch (IndexOutOfBoundsException e) {
            sz.e("Invalid index for Url fetch time in CSI latency info.");
        } catch (NumberFormatException e2) {
            sz.e("Cannot find valid format of Url fetch time in CSI latency info.");
        }
        return -1;
    }

    public void b(rv rvVar) {
        this.a.a(this.c, "awr");
        this.f.h = null;
        if (!(rvVar.d == -2 || rvVar.d == 3)) {
            v.i().a(this.f.a());
        }
        if (rvVar.d == -1) {
            this.d = false;
            return;
        }
        if (a(rvVar)) {
            sz.b("Ad refresh scheduled.");
        }
        if (rvVar.d != -2) {
            a(rvVar.d);
            return;
        }
        if (this.f.C == null) {
            this.f.C = new sc(this.f.b);
        }
        this.h.b(this.f.j);
        if (a(this.f.j, rvVar)) {
            this.f.j = rvVar;
            this.f.i();
            this.a.a("is_mraid", this.f.j.a() ? "1" : "0");
            this.a.a("is_mediation", this.f.j.n ? "1" : "0");
            if (!(this.f.j.b == null || this.f.j.b.l() == null)) {
                this.a.a("is_delay_pl", this.f.j.b.l().f() ? "1" : "0");
            }
            this.a.a(this.b, "ttc");
            if (v.i().f() != null) {
                v.i().f().a(this.a);
            }
            if (this.f.e()) {
                v();
            }
        }
        if (rvVar.I != null) {
            v.e().a(this.f.c, rvVar.I);
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean b(gv gvVar) {
        if (this.f.f == null) {
            return false;
        }
        ViewParent parent = this.f.f.getParent();
        if (!(parent instanceof View)) {
            return false;
        }
        View view = (View) parent;
        return v.e().a(view, view.getContext());
    }

    public void c(gv gvVar) {
        if (b(gvVar)) {
            a(gvVar);
            return;
        }
        sz.d("Ad is not visible. Not refreshing ad.");
        this.e.b(gvVar);
    }

    /* Access modifiers changed, original: protected */
    public void c(@Nullable rv rvVar) {
        if (rvVar == null) {
            sz.e("Ad state was null when trying to ping impression URLs.");
            return;
        }
        sz.b("Pinging Impression URLs.");
        if (this.f.l != null) {
            this.f.l.a();
        }
        if (rvVar.e != null && !rvVar.F) {
            v.e().a(this.f.c, this.f.e.b, rvVar.e);
            rvVar.F = true;
            d(rvVar);
        }
    }

    public void e() {
        if (this.f.j == null) {
            sz.e("Ad state was null when trying to ping click URLs.");
            return;
        }
        sz.b("Pinging click URLs.");
        if (this.f.l != null) {
            this.f.l.b();
        }
        if (this.f.j.c != null) {
            v.e().a(this.f.c, this.f.e.b, this.f.j.c);
        }
        if (this.f.m != null) {
            try {
                this.f.m.a();
            } catch (RemoteException e) {
                sz.c("Could not notify onAdClicked event.", e);
            }
        }
    }

    public void f() {
        t();
    }

    public d g() {
        return this.i;
    }

    public void h() {
        this.a = new jb(((Boolean) is.U.c()).booleanValue(), "load_ad", this.f.i.b);
        this.b = new iz(-1, null, null);
        this.c = new iz(-1, null, null);
    }

    public void i() {
        c.b("destroy must be called on the main UI thread.");
        this.e.a();
        this.h.c(this.f.j);
        this.f.j();
    }

    public com.google.android.gms.a.a j() {
        c.b("getAdFrame must be called on the main UI thread.");
        return b.a(this.f.f);
    }

    @Nullable
    public ha k() {
        c.b("getAdSize must be called on the main UI thread.");
        return this.f.i == null ? null : new ig(this.f.i);
    }

    public boolean l() {
        c.b("isLoaded must be called on the main UI thread.");
        return this.f.g == null && this.f.h == null && this.f.j != null;
    }

    public void m() {
        c.b("recordManualImpression must be called on the main UI thread.");
        if (this.f.j == null) {
            sz.e("Ad state was null when trying to ping manual tracking URLs.");
            return;
        }
        sz.b("Pinging manual tracking URLs.");
        if (this.f.j.f != null && !this.f.j.G) {
            v.e().a(this.f.c, this.f.e.b, this.f.j.f);
            this.f.j.G = true;
            d(this.f.j);
        }
    }

    public void n() {
        c.b("pause must be called on the main UI thread.");
    }

    public void o() {
        c.b("resume must be called on the main UI thread.");
    }

    public void p() {
        c.b("stopLoading must be called on the main UI thread.");
        this.d = false;
        this.f.a(true);
    }

    public boolean q() {
        return this.d;
    }

    public hu r() {
        return null;
    }

    /* Access modifiers changed, original: protected */
    public void s() {
        sz.d("Ad closing.");
        if (this.f.n != null) {
            try {
                this.f.n.a();
            } catch (RemoteException e) {
                sz.c("Could not call AdListener.onAdClosed().", e);
            }
        }
        if (this.f.z != null) {
            try {
                this.f.z.d();
            } catch (RemoteException e2) {
                sz.c("Could not call RewardedVideoAdListener.onRewardedVideoAdClosed().", e2);
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void t() {
        sz.d("Ad leaving application.");
        if (this.f.n != null) {
            try {
                this.f.n.b();
            } catch (RemoteException e) {
                sz.c("Could not call AdListener.onAdLeftApplication().", e);
            }
        }
        if (this.f.z != null) {
            try {
                this.f.z.e();
            } catch (RemoteException e2) {
                sz.c("Could not call  RewardedVideoAdListener.onRewardedVideoAdLeftApplication().", e2);
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void u() {
        sz.d("Ad opening.");
        if (this.f.n != null) {
            try {
                this.f.n.d();
            } catch (RemoteException e) {
                sz.c("Could not call AdListener.onAdOpened().", e);
            }
        }
        if (this.f.z != null) {
            try {
                this.f.z.b();
            } catch (RemoteException e2) {
                sz.c("Could not call RewardedVideoAdListener.onRewardedVideoAdOpened().", e2);
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void v() {
        sz.d("Ad finished loading.");
        this.d = false;
        if (this.f.n != null) {
            try {
                this.f.n.c();
            } catch (RemoteException e) {
                sz.c("Could not call AdListener.onAdLoaded().", e);
            }
        }
        if (this.f.z != null) {
            try {
                this.f.z.a();
            } catch (RemoteException e2) {
                sz.c("Could not call RewardedVideoAdListener.onRewardedVideoAdLoaded().", e2);
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void w() {
        if (this.f.z != null) {
            try {
                this.f.z.c();
            } catch (RemoteException e) {
                sz.c("Could not call RewardedVideoAdListener.onVideoStarted().", e);
            }
        }
    }
}
