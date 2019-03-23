package com.google.android.gms.c;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.ads.mediation.c;
import com.google.ads.mediation.h;
import com.google.ads.mediation.i;
import com.google.android.gms.ads.mediation.b;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.customevent.d;
import com.google.android.gms.c.mo.a;
import java.util.Map;

@pa
public final class mn extends a {
    private Map<Class<? extends Object>, Object> a;

    private <NETWORK_EXTRAS extends i, SERVER_PARAMETERS extends h> mp c(String str) {
        try {
            Class cls = Class.forName(str, false, mn.class.getClassLoader());
            if (c.class.isAssignableFrom(cls)) {
                c cVar = (c) cls.newInstance();
                return new nb(cVar, (i) this.a.get(cVar.b()));
            } else if (b.class.isAssignableFrom(cls)) {
                return new mv((b) cls.newInstance());
            } else {
                sz.e(new StringBuilder(String.valueOf(str).length() + 64).append("Could not instantiate mediation adapter: ").append(str).append(" (not a valid adapter).").toString());
                throw new RemoteException();
            }
        } catch (Throwable th) {
            return d(str);
        }
    }

    private mp d(String str) {
        try {
            sz.b("Reflection failed, retrying using direct instantiation");
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                return new mv(new AdMobAdapter());
            }
            if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
                return new mv(new AdUrlAdapter());
            }
            if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                return new mv(new CustomEventAdapter());
            }
            if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                com.google.ads.mediation.customevent.CustomEventAdapter customEventAdapter = new com.google.ads.mediation.customevent.CustomEventAdapter();
                return new nb(customEventAdapter, (d) this.a.get(customEventAdapter.b()));
            }
            throw new RemoteException();
        } catch (Throwable th) {
            sz.c(new StringBuilder(String.valueOf(str).length() + 43).append("Could not instantiate mediation adapter: ").append(str).append(". ").toString(), th);
        }
    }

    public mp a(String str) {
        return c(str);
    }

    public void a(Map<Class<? extends Object>, Object> map) {
        this.a = map;
    }

    public boolean b(String str) {
        boolean z = false;
        try {
            return com.google.android.gms.ads.mediation.customevent.a.class.isAssignableFrom(Class.forName(str, false, mn.class.getClassLoader()));
        } catch (Throwable th) {
            sz.e(new StringBuilder(String.valueOf(str).length() + 80).append("Could not load custom event implementation class: ").append(str).append(", assuming old implementation.").toString());
            return z;
        }
    }
}
