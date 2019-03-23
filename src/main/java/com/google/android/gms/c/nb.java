package com.google.android.gms.c;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.c;
import com.google.ads.mediation.d;
import com.google.ads.mediation.f;
import com.google.ads.mediation.h;
import com.google.ads.mediation.i;
import com.google.android.gms.a.b;
import com.google.android.gms.c.mp.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

@pa
public final class nb<NETWORK_EXTRAS extends i, SERVER_PARAMETERS extends h> extends a {
    private final c<NETWORK_EXTRAS, SERVER_PARAMETERS> a;
    private final NETWORK_EXTRAS b;

    public nb(c<NETWORK_EXTRAS, SERVER_PARAMETERS> cVar, NETWORK_EXTRAS network_extras) {
        this.a = cVar;
        this.b = network_extras;
    }

    private SERVER_PARAMETERS a(String str, int i, String str2) {
        Map hashMap;
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                hashMap = new HashMap(jSONObject.length());
                Iterator keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String str3 = (String) keys.next();
                    hashMap.put(str3, jSONObject.getString(str3));
                }
            } catch (Throwable th) {
                sz.c("Could not get MediationServerParameters.", th);
                RemoteException remoteException = new RemoteException();
            }
        } else {
            hashMap = new HashMap(0);
        }
        Class c = this.a.c();
        if (c == null) {
            return null;
        }
        h hVar = (h) c.newInstance();
        hVar.a(hashMap);
        return hVar;
    }

    public com.google.android.gms.a.a a() {
        if (this.a instanceof d) {
            try {
                return b.a(((d) this.a).d());
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
    }

    public void a(com.google.android.gms.a.a aVar, gv gvVar, String str, mq mqVar) {
        a(aVar, gvVar, str, null, mqVar);
    }

    public void a(com.google.android.gms.a.a aVar, gv gvVar, String str, ri riVar, String str2) {
    }

    public void a(com.google.android.gms.a.a aVar, gv gvVar, String str, String str2, mq mqVar) {
        if (this.a instanceof f) {
            sz.b("Requesting interstitial ad from adapter.");
            try {
                ((f) this.a).a(new nc(mqVar), (Activity) b.a(aVar), a(str, gvVar.g, str2), nd.a(gvVar), this.b);
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
    }

    public void a(com.google.android.gms.a.a aVar, ha haVar, gv gvVar, String str, mq mqVar) {
        a(aVar, haVar, gvVar, str, null, mqVar);
    }

    public void a(com.google.android.gms.a.a aVar, ha haVar, gv gvVar, String str, String str2, mq mqVar) {
        if (this.a instanceof d) {
            sz.b("Requesting banner ad from adapter.");
            try {
                ((d) this.a).a(new nc(mqVar), (Activity) b.a(aVar), a(str, gvVar.g, str2), nd.a(haVar), nd.a(gvVar), this.b);
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
    }

    public void a(gv gvVar, String str, String str2) {
    }

    public void b() {
        if (this.a instanceof f) {
            sz.b("Showing interstitial from adapter.");
            try {
                ((f) this.a).e();
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
            this.a.a();
        } catch (Throwable th) {
            sz.c("Could not destroy adapter.", th);
            RemoteException remoteException = new RemoteException();
        }
    }

    public void d() {
        throw new RemoteException();
    }

    public void e() {
        throw new RemoteException();
    }

    public void f() {
    }

    public boolean g() {
        return true;
    }

    public ms h() {
        return null;
    }

    public mt i() {
        return null;
    }

    public Bundle j() {
        return new Bundle();
    }

    public Bundle k() {
        return new Bundle();
    }

    public Bundle l() {
        return new Bundle();
    }
}
