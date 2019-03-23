package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import com.google.android.gms.c.gv;
import com.google.android.gms.c.ha;
import com.google.android.gms.c.jb;
import com.google.android.gms.c.jf;
import com.google.android.gms.c.jl;
import com.google.android.gms.c.jm;
import com.google.android.gms.c.jn;
import com.google.android.gms.c.jo;
import com.google.android.gms.c.jp;
import com.google.android.gms.c.jq;
import com.google.android.gms.c.js;
import com.google.android.gms.c.kf;
import com.google.android.gms.c.kg;
import com.google.android.gms.c.kh;
import com.google.android.gms.c.ki;
import com.google.android.gms.c.mo;
import com.google.android.gms.c.ms;
import com.google.android.gms.c.mt;
import com.google.android.gms.c.nw;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.rv;
import com.google.android.gms.c.rv.a;
import com.google.android.gms.c.sj;
import com.google.android.gms.c.sz;
import com.google.android.gms.c.tc;
import com.google.android.gms.c.tr;
import com.google.android.gms.common.internal.c;
import java.util.List;

@pa
public class r extends b {
    private tr l;

    public r(Context context, d dVar, ha haVar, String str, mo moVar, tc tcVar) {
        super(context, haVar, str, moVar, tcVar, dVar);
    }

    private static jl a(ms msVar) {
        return new jl(msVar.a(), msVar.b(), msVar.c(), msVar.d() != null ? msVar.d() : null, msVar.e(), msVar.f(), msVar.g(), msVar.h(), null, msVar.l(), msVar.m(), null);
    }

    private static jm a(mt mtVar) {
        return new jm(mtVar.a(), mtVar.b(), mtVar.c(), mtVar.d() != null ? mtVar.d() : null, mtVar.e(), mtVar.f(), null, mtVar.j());
    }

    private void a(final jl jlVar) {
        sj.a.post(new Runnable() {
            public void run() {
                try {
                    if (r.this.f.s != null) {
                        r.this.f.s.a(jlVar);
                    }
                } catch (RemoteException e) {
                    sz.c("Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded().", e);
                }
            }
        });
    }

    private void a(final jm jmVar) {
        sj.a.post(new Runnable() {
            public void run() {
                try {
                    if (r.this.f.t != null) {
                        r.this.f.t.a(jmVar);
                    }
                } catch (RemoteException e) {
                    sz.c("Could not call OnContentAdLoadedListener.onContentAdLoaded().", e);
                }
            }
        });
    }

    private void a(final rv rvVar, final String str) {
        sj.a.post(new Runnable() {
            public void run() {
                try {
                    ((ki) r.this.f.v.get(str)).a((jn) rvVar.E);
                } catch (RemoteException e) {
                    sz.c("Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded().", e);
                }
            }
        });
    }

    public void G() {
        throw new IllegalStateException("Interstitial is NOT supported by NativeAdManager.");
    }

    public void J() {
        if (this.f.j == null || this.l == null) {
            sz.e("Request to enable ActiveView before adState is available.");
        } else {
            v.i().r().a(this.f.i, this.f.j, this.l.b(), this.l);
        }
    }

    public SimpleArrayMap<String, ki> K() {
        c.b("getOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        return this.f.v;
    }

    public void L() {
        if (this.l != null) {
            this.l.destroy();
            this.l = null;
        }
    }

    public void M() {
        if (this.l != null && this.l.z() != null && this.f.w != null && this.f.w.f != null) {
            this.l.z().b(this.f.w.f.b);
        }
    }

    public void a(SimpleArrayMap<String, ki> simpleArrayMap) {
        c.b("setOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        this.f.v = simpleArrayMap;
    }

    public void a(jf jfVar) {
        throw new IllegalStateException("CustomRendering is NOT supported by NativeAdManager.");
    }

    public void a(jo joVar) {
        if (this.l != null) {
            this.l.a(joVar);
        }
    }

    public void a(jq jqVar) {
        if (this.f.j.j != null) {
            v.i().r().a(this.f.i, this.f.j, jqVar);
        }
    }

    public void a(js jsVar) {
        c.b("setNativeAdOptions must be called on the main UI thread.");
        this.f.w = jsVar;
    }

    public void a(kf kfVar) {
        c.b("setOnAppInstallAdLoadedListener must be called on the main UI thread.");
        this.f.s = kfVar;
    }

    public void a(kg kgVar) {
        c.b("setOnContentAdLoadedListener must be called on the main UI thread.");
        this.f.t = kgVar;
    }

    public void a(nw nwVar) {
        throw new IllegalStateException("In App Purchase is NOT supported by NativeAdManager.");
    }

    public void a(final a aVar, jb jbVar) {
        if (aVar.d != null) {
            this.f.i = aVar.d;
        }
        if (aVar.e != -2) {
            sj.a.post(new Runnable() {
                public void run() {
                    r.this.b(new rv(aVar, null, null, null, null, null, null, null));
                }
            });
            return;
        }
        this.f.E = 0;
        this.f.h = v.d().a(this.f.c, this, aVar, this.f.d, null, this.j, this, jbVar);
        String str = "AdRenderer: ";
        String valueOf = String.valueOf(this.f.h.getClass().getName());
        sz.b(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
    }

    public void a(tr trVar) {
        this.l = trVar;
    }

    public void a(@Nullable List<String> list) {
        c.b("setNativeTemplates must be called on the main UI thread.");
        this.f.A = list;
    }

    /* Access modifiers changed, original: protected */
    public boolean a(gv gvVar, rv rvVar, boolean z) {
        return this.e.d();
    }

    /* Access modifiers changed, original: protected */
    public boolean a(rv rvVar, rv rvVar2) {
        a(null);
        if (this.f.e()) {
            if (rvVar2.n) {
                try {
                    ms h = rvVar2.p != null ? rvVar2.p.h() : null;
                    mt i = rvVar2.p != null ? rvVar2.p.i() : null;
                    if (h == null || this.f.s == null) {
                        if (i != null) {
                            if (this.f.t != null) {
                                jm a = a(i);
                                a.a(new jp(this.f.c, this, this.f.d, i, (jq.a) a));
                                a(a);
                            }
                        }
                        sz.e("No matching mapper/listener for retrieved native ad template.");
                        a(0);
                        return false;
                    }
                    jl a2 = a(h);
                    a2.a(new jp(this.f.c, this, this.f.d, h, (jq.a) a2));
                    a(a2);
                } catch (RemoteException e) {
                    sz.c("Failed to get native ad mapper", e);
                }
            } else {
                jq.a aVar = rvVar2.E;
                if ((aVar instanceof jm) && this.f.t != null) {
                    a((jm) rvVar2.E);
                } else if ((aVar instanceof jl) && this.f.s != null) {
                    a((jl) rvVar2.E);
                } else if (!(aVar instanceof jn) || this.f.v == null || this.f.v.get(((jn) aVar).l()) == null) {
                    sz.e("No matching listener for retrieved native ad template.");
                    a(0);
                    return false;
                } else {
                    a(rvVar2, ((jn) aVar).l());
                }
            }
            return super.a(rvVar, rvVar2);
        }
        throw new IllegalStateException("Native ad DOES NOT have custom rendering mode.");
    }

    public void b(SimpleArrayMap<String, kh> simpleArrayMap) {
        c.b("setOnCustomClickListener must be called on the main UI thread.");
        this.f.u = simpleArrayMap;
    }

    @Nullable
    public kh c(String str) {
        c.b("getOnCustomClickListener must be called on the main UI thread.");
        return (kh) this.f.u.get(str);
    }

    public void n() {
        throw new IllegalStateException("Native Ad DOES NOT support pause().");
    }

    public void o() {
        throw new IllegalStateException("Native Ad DOES NOT support resume().");
    }
}
