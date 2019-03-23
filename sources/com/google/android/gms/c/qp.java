package com.google.android.gms.c;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.b;
import com.google.android.gms.ads.internal.d;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.c.rv.a;
import com.google.android.gms.common.internal.c;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@pa
public class qp extends b implements rd {
    private static final mn l = new mn();
    private final Map<String, rh> m = new HashMap();
    private boolean n;

    public qp(Context context, d dVar, ha haVar, mo moVar, tc tcVar) {
        super(context, haVar, null, moVar, tcVar, dVar);
    }

    private a b(a aVar) {
        sf.a("Creating mediation ad response for non-mediated rewarded ad.");
        try {
            String jSONObject = qa.a(aVar.b).toString();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(com.google.ads.mediation.a.AD_UNIT_ID_PARAMETER, aVar.a.e);
            me meVar = new me(jSONObject, null, Arrays.asList(new String[]{"com.google.ads.mediation.admob.AdMobAdapter"}), null, null, Collections.emptyList(), Collections.emptyList(), jSONObject2.toString(), null, Collections.emptyList(), Collections.emptyList(), null, null, null, null, null, Collections.emptyList());
            return new a(aVar.a, aVar.b, new mf(Arrays.asList(new me[]{meVar}), -1, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), false, "", -1, 0, 1, null, 0, -1, -1, false), aVar.d, aVar.e, aVar.f, aVar.g, aVar.h);
        } catch (JSONException e) {
            sz.b("Unable to generate ad state for non-mediated rewarded video.", e);
            return c(aVar);
        }
    }

    private a c(a aVar) {
        return new a(aVar.a, aVar.b, null, aVar.d, 0, aVar.f, aVar.g, aVar.h);
    }

    public void J() {
        c.b("showAd must be called on the main UI thread.");
        if (K()) {
            this.n = true;
            rh c = c(this.f.j.q);
            if (c != null && c.a() != null) {
                try {
                    c.a().f();
                    return;
                } catch (RemoteException e) {
                    sz.c("Could not call showVideo.", e);
                    return;
                }
            }
            return;
        }
        sz.e("The reward video has not loaded.");
    }

    public boolean K() {
        c.b("isLoaded must be called on the main UI thread.");
        return this.f.g == null && this.f.h == null && this.f.j != null && !this.n;
    }

    public void L() {
        a(this.f.j, false);
        u();
    }

    public void M() {
        if (!(this.f.j == null || this.f.j.o == null)) {
            v.x().a(this.f.c, this.f.e.b, this.f.j, this.f.b, false, this.f.j.o.j);
        }
        w();
    }

    public void N() {
        s();
    }

    public void O() {
        e();
    }

    public void P() {
        t();
    }

    public void a(@NonNull Context context) {
        for (rh a : this.m.values()) {
            try {
                a.a().a(com.google.android.gms.a.b.a((Object) context));
            } catch (RemoteException e) {
                sz.b("Unable to call Adapter.onContextChanged.", e);
            }
        }
    }

    public void a(qx qxVar) {
        c.b("loadAd must be called on the main UI thread.");
        if (TextUtils.isEmpty(qxVar.c)) {
            sz.e("Invalid ad unit id. Aborting.");
            sj.a.post(new Runnable() {
                public void run() {
                    qp.this.a(1);
                }
            });
            return;
        }
        this.n = false;
        this.f.b = qxVar.c;
        super.a(qxVar.b);
    }

    public void a(final a aVar, jb jbVar) {
        if (aVar.e != -2) {
            sj.a.post(new Runnable() {
                public void run() {
                    qp.this.b(new rv(aVar, null, null, null, null, null, null, null));
                }
            });
            return;
        }
        this.f.k = aVar;
        if (aVar.c == null) {
            this.f.k = b(aVar);
        }
        this.f.E = 0;
        this.f.h = v.d().a(this.f.c, this.f.k, this);
    }

    /* Access modifiers changed, original: protected */
    public boolean a(gv gvVar, rv rvVar, boolean z) {
        return false;
    }

    public boolean a(rv rvVar, rv rvVar2) {
        return true;
    }

    public void b(@Nullable rk rkVar) {
        if (!(this.f.j == null || this.f.j.o == null)) {
            v.x().a(this.f.c, this.f.e.b, this.f.j, this.f.b, false, this.f.j.o.k);
        }
        if (!(this.f.j == null || this.f.j.r == null || TextUtils.isEmpty(this.f.j.r.j))) {
            rkVar = new rk(this.f.j.r.j, this.f.j.r.k);
        }
        a(rkVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x003f  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0036  */
    @android.support.annotation.Nullable
    public com.google.android.gms.c.rh c(java.lang.String r6) {
        /*
        r5 = this;
        r0 = r5.m;
        r0 = r0.get(r6);
        r0 = (com.google.android.gms.c.rh) r0;
        if (r0 != 0) goto L_0x0026;
    L_0x000a:
        r1 = r5.j;	 Catch:{ Exception -> 0x0027 }
        r2 = "com.google.ads.mediation.admob.AdMobAdapter";
        r2 = r2.equals(r6);	 Catch:{ Exception -> 0x0027 }
        if (r2 == 0) goto L_0x0048;
    L_0x0014:
        r1 = l;	 Catch:{ Exception -> 0x0027 }
        r2 = r1;
    L_0x0017:
        r1 = new com.google.android.gms.c.rh;	 Catch:{ Exception -> 0x0027 }
        r2 = r2.a(r6);	 Catch:{ Exception -> 0x0027 }
        r1.<init>(r2, r5);	 Catch:{ Exception -> 0x0027 }
        r0 = r5.m;	 Catch:{ Exception -> 0x0045 }
        r0.put(r6, r1);	 Catch:{ Exception -> 0x0045 }
        r0 = r1;
    L_0x0026:
        return r0;
    L_0x0027:
        r1 = move-exception;
        r2 = r1;
        r1 = r0;
    L_0x002a:
        r3 = "Fail to instantiate adapter ";
        r0 = java.lang.String.valueOf(r6);
        r4 = r0.length();
        if (r4 == 0) goto L_0x003f;
    L_0x0036:
        r0 = r3.concat(r0);
    L_0x003a:
        com.google.android.gms.c.sz.c(r0, r2);
        r0 = r1;
        goto L_0x0026;
    L_0x003f:
        r0 = new java.lang.String;
        r0.<init>(r3);
        goto L_0x003a;
    L_0x0045:
        r0 = move-exception;
        r2 = r0;
        goto L_0x002a;
    L_0x0048:
        r2 = r1;
        goto L_0x0017;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.qp.c(java.lang.String):com.google.android.gms.c.rh");
    }

    public void i() {
        c.b("destroy must be called on the main UI thread.");
        for (String str : this.m.keySet()) {
            String str2;
            try {
                rh rhVar = (rh) this.m.get(str2);
                if (!(rhVar == null || rhVar.a() == null)) {
                    rhVar.a().c();
                }
            } catch (RemoteException e) {
                String str3 = "Fail to destroy adapter: ";
                str2 = String.valueOf(str2);
                sz.e(str2.length() != 0 ? str3.concat(str2) : new String(str3));
            }
        }
    }

    public void n() {
        c.b("pause must be called on the main UI thread.");
        for (String str : this.m.keySet()) {
            String str2;
            try {
                rh rhVar = (rh) this.m.get(str2);
                if (!(rhVar == null || rhVar.a() == null)) {
                    rhVar.a().d();
                }
            } catch (RemoteException e) {
                String str3 = "Fail to pause adapter: ";
                str2 = String.valueOf(str2);
                sz.e(str2.length() != 0 ? str3.concat(str2) : new String(str3));
            }
        }
    }

    public void o() {
        c.b("resume must be called on the main UI thread.");
        for (String str : this.m.keySet()) {
            String str2;
            try {
                rh rhVar = (rh) this.m.get(str2);
                if (!(rhVar == null || rhVar.a() == null)) {
                    rhVar.a().e();
                }
            } catch (RemoteException e) {
                String str3 = "Fail to resume adapter: ";
                str2 = String.valueOf(str2);
                sz.e(str2.length() != 0 ? str3.concat(str2) : new String(str3));
            }
        }
    }
}
