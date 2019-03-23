package com.google.android.gms.c;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.j;
import com.google.android.gms.ads.mediation.b;
import com.google.android.gms.ads.mediation.c;
import com.google.android.gms.ads.mediation.e;
import com.google.android.gms.ads.mediation.g;
import com.google.android.gms.ads.mediation.i;
import com.google.android.gms.ads.mediation.k;
import com.google.android.gms.ads.mediation.m;
import com.google.android.gms.c.mp.a;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

@pa
public final class mv extends a {
    private final b a;
    private mx b;

    public mv(b bVar) {
        this.a = bVar;
    }

    private Bundle a(String str, int i, String str2) {
        String str3 = "Server parameters: ";
        String valueOf = String.valueOf(str);
        sz.e(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator keys = jSONObject.keys();
                while (keys.hasNext()) {
                    valueOf = (String) keys.next();
                    bundle2.putString(valueOf, jSONObject.getString(valueOf));
                }
                bundle = bundle2;
            }
            if (this.a instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                bundle.putInt("tagForChildDirectedTreatment", i);
            }
            return bundle;
        } catch (Throwable th) {
            sz.c("Could not get Server Parameters Bundle.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public com.google.android.gms.a.a a() {
        if (this.a instanceof c) {
            try {
                return com.google.android.gms.a.b.a(((c) this.a).getBannerView());
            } catch (Throwable th) {
                sz.c("Could not get banner view from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str = "MediationAdapter is not a MediationBannerAdapter: ";
            String valueOf = String.valueOf(this.a.getClass().getCanonicalName());
            sz.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            throw new RemoteException();
        }
    }

    public void a(com.google.android.gms.a.a aVar) {
        try {
            ((m) this.a).a((Context) com.google.android.gms.a.b.a(aVar));
        } catch (Throwable th) {
            sz.a("Could not inform adapter of changed context", th);
        }
    }

    public void a(com.google.android.gms.a.a aVar, gv gvVar, String str, mq mqVar) {
        a(aVar, gvVar, str, null, mqVar);
    }

    public void a(com.google.android.gms.a.a aVar, gv gvVar, String str, ri riVar, String str2) {
        if (this.a instanceof com.google.android.gms.ads.d.a.a) {
            sz.b("Initialize rewarded video adapter.");
            try {
                com.google.android.gms.ads.d.a.a aVar2 = (com.google.android.gms.ads.d.a.a) this.a;
                aVar2.initialize((Context) com.google.android.gms.a.b.a(aVar), new mu(gvVar.b == -1 ? null : new Date(gvVar.b), gvVar.d, gvVar.e != null ? new HashSet(gvVar.e) : null, gvVar.k, gvVar.f, gvVar.g, gvVar.r), str, new rj(riVar), a(str2, gvVar.g, null), gvVar.m != null ? gvVar.m.getBundle(aVar2.getClass().getName()) : null);
            } catch (Throwable th) {
                sz.c("Could not initialize rewarded video adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str3 = "MediationAdapter is not a MediationRewardedVideoAdAdapter: ";
            String valueOf = String.valueOf(this.a.getClass().getCanonicalName());
            sz.e(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
            throw new RemoteException();
        }
    }

    public void a(com.google.android.gms.a.a aVar, gv gvVar, String str, String str2, mq mqVar) {
        if (this.a instanceof e) {
            sz.b("Requesting interstitial ad from adapter.");
            try {
                e eVar = (e) this.a;
                eVar.requestInterstitialAd((Context) com.google.android.gms.a.b.a(aVar), new mx(mqVar), a(str, gvVar.g, str2), new mu(gvVar.b == -1 ? null : new Date(gvVar.b), gvVar.d, gvVar.e != null ? new HashSet(gvVar.e) : null, gvVar.k, gvVar.f, gvVar.g, gvVar.r), gvVar.m != null ? gvVar.m.getBundle(eVar.getClass().getName()) : null);
            } catch (Throwable th) {
                sz.c("Could not request interstitial ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str3 = "MediationAdapter is not a MediationInterstitialAdapter: ";
            String valueOf = String.valueOf(this.a.getClass().getCanonicalName());
            sz.e(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
            throw new RemoteException();
        }
    }

    public void a(com.google.android.gms.a.a aVar, gv gvVar, String str, String str2, mq mqVar, js jsVar, List<String> list) {
        if (this.a instanceof g) {
            try {
                g gVar = (g) this.a;
                na naVar = new na(gvVar.b == -1 ? null : new Date(gvVar.b), gvVar.d, gvVar.e != null ? new HashSet(gvVar.e) : null, gvVar.k, gvVar.f, gvVar.g, jsVar, list, gvVar.r);
                Bundle bundle = gvVar.m != null ? gvVar.m.getBundle(gVar.getClass().getName()) : null;
                this.b = new mx(mqVar);
                gVar.requestNativeAd((Context) com.google.android.gms.a.b.a(aVar), this.b, a(str, gvVar.g, str2), naVar, bundle);
            } catch (Throwable th) {
                sz.c("Could not request native ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str3 = "MediationAdapter is not a MediationNativeAdapter: ";
            String valueOf = String.valueOf(this.a.getClass().getCanonicalName());
            sz.e(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
            throw new RemoteException();
        }
    }

    public void a(com.google.android.gms.a.a aVar, ha haVar, gv gvVar, String str, mq mqVar) {
        a(aVar, haVar, gvVar, str, null, mqVar);
    }

    public void a(com.google.android.gms.a.a aVar, ha haVar, gv gvVar, String str, String str2, mq mqVar) {
        if (this.a instanceof c) {
            sz.b("Requesting banner ad from adapter.");
            try {
                c cVar = (c) this.a;
                cVar.requestBannerAd((Context) com.google.android.gms.a.b.a(aVar), new mx(mqVar), a(str, gvVar.g, str2), j.a(haVar.f, haVar.c, haVar.b), new mu(gvVar.b == -1 ? null : new Date(gvVar.b), gvVar.d, gvVar.e != null ? new HashSet(gvVar.e) : null, gvVar.k, gvVar.f, gvVar.g, gvVar.r), gvVar.m != null ? gvVar.m.getBundle(cVar.getClass().getName()) : null);
            } catch (Throwable th) {
                sz.c("Could not request banner ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str3 = "MediationAdapter is not a MediationBannerAdapter: ";
            String valueOf = String.valueOf(this.a.getClass().getCanonicalName());
            sz.e(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
            throw new RemoteException();
        }
    }

    public void a(gv gvVar, String str) {
        a(gvVar, str, null);
    }

    public void a(gv gvVar, String str, String str2) {
        if (this.a instanceof com.google.android.gms.ads.d.a.a) {
            sz.b("Requesting rewarded video ad from adapter.");
            try {
                com.google.android.gms.ads.d.a.a aVar = (com.google.android.gms.ads.d.a.a) this.a;
                aVar.loadAd(new mu(gvVar.b == -1 ? null : new Date(gvVar.b), gvVar.d, gvVar.e != null ? new HashSet(gvVar.e) : null, gvVar.k, gvVar.f, gvVar.g, gvVar.r), a(str, gvVar.g, str2), gvVar.m != null ? gvVar.m.getBundle(aVar.getClass().getName()) : null);
            } catch (Throwable th) {
                sz.c("Could not load rewarded video ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str3 = "MediationAdapter is not a MediationRewardedVideoAdAdapter: ";
            String valueOf = String.valueOf(this.a.getClass().getCanonicalName());
            sz.e(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
            throw new RemoteException();
        }
    }

    public void b() {
        if (this.a instanceof e) {
            sz.b("Showing interstitial from adapter.");
            try {
                ((e) this.a).showInterstitial();
            } catch (Throwable th) {
                sz.c("Could not show interstitial from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str = "MediationAdapter is not a MediationInterstitialAdapter: ";
            String valueOf = String.valueOf(this.a.getClass().getCanonicalName());
            sz.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            throw new RemoteException();
        }
    }

    public void c() {
        try {
            this.a.onDestroy();
        } catch (Throwable th) {
            sz.c("Could not destroy adapter.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public void d() {
        try {
            this.a.onPause();
        } catch (Throwable th) {
            sz.c("Could not pause adapter.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public void e() {
        try {
            this.a.onResume();
        } catch (Throwable th) {
            sz.c("Could not resume adapter.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public void f() {
        if (this.a instanceof com.google.android.gms.ads.d.a.a) {
            sz.b("Show rewarded video ad from adapter.");
            try {
                ((com.google.android.gms.ads.d.a.a) this.a).showVideo();
            } catch (Throwable th) {
                sz.c("Could not show rewarded video ad from adapter.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str = "MediationAdapter is not a MediationRewardedVideoAdAdapter: ";
            String valueOf = String.valueOf(this.a.getClass().getCanonicalName());
            sz.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            throw new RemoteException();
        }
    }

    public boolean g() {
        if (this.a instanceof com.google.android.gms.ads.d.a.a) {
            sz.b("Check if adapter is initialized.");
            try {
                return ((com.google.android.gms.ads.d.a.a) this.a).isInitialized();
            } catch (Throwable th) {
                sz.c("Could not check if adapter is initialized.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            String str = "MediationAdapter is not a MediationRewardedVideoAdAdapter: ";
            String valueOf = String.valueOf(this.a.getClass().getCanonicalName());
            sz.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            throw new RemoteException();
        }
    }

    public ms h() {
        i a = this.b.a();
        return a instanceof com.google.android.gms.ads.mediation.j ? new my((com.google.android.gms.ads.mediation.j) a) : null;
    }

    public mt i() {
        i a = this.b.a();
        return a instanceof k ? new mz((k) a) : null;
    }

    public Bundle j() {
        if (this.a instanceof uf) {
            return ((uf) this.a).a();
        }
        String str = "MediationAdapter is not a v2 MediationBannerAdapter: ";
        String valueOf = String.valueOf(this.a.getClass().getCanonicalName());
        sz.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        return new Bundle();
    }

    public Bundle k() {
        if (this.a instanceof ug) {
            return ((ug) this.a).getInterstitialAdapterInfo();
        }
        String str = "MediationAdapter is not a v2 MediationInterstitialAdapter: ";
        String valueOf = String.valueOf(this.a.getClass().getCanonicalName());
        sz.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        return new Bundle();
    }

    public Bundle l() {
        return new Bundle();
    }
}
