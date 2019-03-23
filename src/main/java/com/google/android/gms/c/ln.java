package com.google.android.gms.c;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Parcel;
import android.support.annotation.Nullable;
import android.util.Base64;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.c.qf.a;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.regex.Pattern;
import org.apache.http.protocol.HTTP;

@pa
public class ln {
    private final Map<lo, lp> a = new HashMap();
    private final LinkedList<lo> b = new LinkedList();
    @Nullable
    private lk c;

    @Nullable
    static Bundle a(gv gvVar) {
        Bundle bundle = gvVar.m;
        return bundle == null ? null : bundle.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
    }

    private static void a(Bundle bundle, String str) {
        String[] split = str.split("/", 2);
        if (split.length != 0) {
            String str2 = split[0];
            if (split.length == 1) {
                bundle.remove(str2);
                return;
            }
            Bundle bundle2 = bundle.getBundle(str2);
            if (bundle2 != null) {
                a(bundle2, split[1]);
            }
        }
    }

    private static void a(String str, lo loVar) {
        if (sz.a(2)) {
            sf.a(String.format(str, new Object[]{loVar}));
        }
    }

    private String[] a(String str) {
        try {
            String[] split = str.split("\u0000");
            for (int i = 0; i < split.length; i++) {
                split[i] = new String(Base64.decode(split[i], 0), HTTP.UTF_8);
            }
            return split;
        } catch (UnsupportedEncodingException e) {
            return new String[0];
        }
    }

    static gv b(gv gvVar) {
        gv d = d(gvVar);
        Bundle a = a(d);
        if (a == null) {
            a = new Bundle();
            d.m.putBundle("com.google.ads.mediation.admob.AdMobAdapter", a);
        }
        a.putBoolean("_skipMediation", true);
        return d;
    }

    private boolean b(String str) {
        try {
            return Pattern.matches((String) is.aR.c(), str);
        } catch (RuntimeException e) {
            v.i().a(e, "InterstitialAdPool.isExcludedAdUnit");
            return false;
        }
    }

    static boolean c(gv gvVar) {
        Bundle bundle = gvVar.m;
        if (bundle == null) {
            return false;
        }
        bundle = bundle.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        return bundle != null && bundle.containsKey("_skipMediation");
    }

    static gv d(gv gvVar) {
        Parcel obtain = Parcel.obtain();
        gvVar.writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        gv gvVar2 = (gv) gv.CREATOR.createFromParcel(obtain);
        obtain.recycle();
        gv.a(gvVar2);
        return gvVar2;
    }

    private static gv e(gv gvVar) {
        gv d = d(gvVar);
        for (String a : ((String) is.aN.c()).split(",")) {
            a(d.m, a);
        }
        return d;
    }

    private String e() {
        try {
            StringBuilder stringBuilder = new StringBuilder();
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                stringBuilder.append(Base64.encodeToString(((lo) it.next()).toString().getBytes(HTTP.UTF_8), 0));
                if (it.hasNext()) {
                    stringBuilder.append("\u0000");
                }
            }
            return stringBuilder.toString();
        } catch (UnsupportedEncodingException e) {
            return "";
        }
    }

    /* Access modifiers changed, original: 0000 */
    @Nullable
    public a a(gv gvVar, String str) {
        if (b(str)) {
            return null;
        }
        lp lpVar;
        int i = new a(this.c.a()).a().m;
        gv e = e(gvVar);
        lo loVar = new lo(e, str, i);
        lp lpVar2 = (lp) this.a.get(loVar);
        if (lpVar2 == null) {
            a("Interstitial pool created at %s.", loVar);
            lpVar2 = new lp(e, str, i);
            this.a.put(loVar, lpVar2);
            lpVar = lpVar2;
        } else {
            lpVar = lpVar2;
        }
        this.b.remove(loVar);
        this.b.add(loVar);
        lpVar.g();
        while (this.b.size() > ((Integer) is.aO.c()).intValue()) {
            lo loVar2 = (lo) this.b.remove();
            lp lpVar3 = (lp) this.a.get(loVar2);
            a("Evicting interstitial queue for %s.", loVar2);
            while (lpVar3.d() > 0) {
                lpVar3.a(null).a.N();
            }
            this.a.remove(loVar2);
        }
        while (lpVar.d() > 0) {
            a a = lpVar.a(e);
            if (!a.e || v.k().a() - a.d <= 1000 * ((long) ((Integer) is.aQ.c()).intValue())) {
                Object obj = a.b != null ? " (inline) " : " ";
                a(new StringBuilder(String.valueOf(obj).length() + 34).append("Pooled interstitial").append(obj).append("returned at %s.").toString(), loVar);
                return a;
            }
            a("Expired interstitial at %s.", loVar);
        }
        return null;
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Missing block: B:7:0x002e, code skipped:
            r2 = r0.d();
     */
    public void a() {
        /*
        r9 = this;
        r8 = 2;
        r0 = r9.c;
        if (r0 != 0) goto L_0x0006;
    L_0x0005:
        return;
    L_0x0006:
        r0 = r9.a;
        r0 = r0.entrySet();
        r3 = r0.iterator();
    L_0x0010:
        r0 = r3.hasNext();
        if (r0 == 0) goto L_0x0076;
    L_0x0016:
        r0 = r3.next();
        r0 = (java.util.Map.Entry) r0;
        r1 = r0.getKey();
        r1 = (com.google.android.gms.c.lo) r1;
        r0 = r0.getValue();
        r0 = (com.google.android.gms.c.lp) r0;
        r2 = com.google.android.gms.c.sz.a(r8);
        if (r2 == 0) goto L_0x0056;
    L_0x002e:
        r2 = r0.d();
        r4 = r0.e();
        if (r4 >= r2) goto L_0x0056;
    L_0x0038:
        r5 = "Loading %s/%s pooled interstitials for %s.";
        r6 = 3;
        r6 = new java.lang.Object[r6];
        r7 = 0;
        r4 = r2 - r4;
        r4 = java.lang.Integer.valueOf(r4);
        r6[r7] = r4;
        r4 = 1;
        r2 = java.lang.Integer.valueOf(r2);
        r6[r4] = r2;
        r6[r8] = r1;
        r2 = java.lang.String.format(r5, r6);
        com.google.android.gms.c.sf.a(r2);
    L_0x0056:
        r0.f();
    L_0x0059:
        r4 = r0.d();
        r2 = com.google.android.gms.c.is.aP;
        r2 = r2.c();
        r2 = (java.lang.Integer) r2;
        r2 = r2.intValue();
        if (r4 >= r2) goto L_0x0010;
    L_0x006b:
        r2 = "Pooling and loading one new interstitial for %s.";
        a(r2, r1);
        r2 = r9.c;
        r0.a(r2);
        goto L_0x0059;
    L_0x0076:
        r9.b();
        goto L_0x0005;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.ln.a():void");
    }

    /* Access modifiers changed, original: 0000 */
    public void a(lk lkVar) {
        if (this.c == null) {
            this.c = lkVar.b();
            c();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void b() {
        if (this.c != null) {
            Editor edit = this.c.a().getSharedPreferences("com.google.android.gms.ads.internal.interstitial.InterstitialAdPool", 0).edit();
            edit.clear();
            for (Entry entry : this.a.entrySet()) {
                lo loVar = (lo) entry.getKey();
                lp lpVar = (lp) entry.getValue();
                if (lpVar.h()) {
                    edit.putString(loVar.toString(), new lr(lpVar).a());
                    a("Saved interstitial queue for %s.", loVar);
                }
            }
            edit.putString("PoolKeys", e());
            edit.apply();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void b(gv gvVar, String str) {
        if (this.c != null) {
            int i = new a(this.c.a()).a().m;
            gv e = e(gvVar);
            lo loVar = new lo(e, str, i);
            lp lpVar = (lp) this.a.get(loVar);
            if (lpVar == null) {
                a("Interstitial pool created at %s.", loVar);
                lpVar = new lp(e, str, i);
                this.a.put(loVar, lpVar);
            }
            lpVar.a(this.c, gvVar);
            lpVar.g();
            a("Inline entry added to the queue at %s.", loVar);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void c() {
        if (this.c != null) {
            SharedPreferences sharedPreferences = this.c.a().getSharedPreferences("com.google.android.gms.ads.internal.interstitial.InterstitialAdPool", 0);
            d();
            try {
                HashMap hashMap = new HashMap();
                for (Entry entry : sharedPreferences.getAll().entrySet()) {
                    if (!((String) entry.getKey()).equals("PoolKeys")) {
                        lr a = lr.a((String) entry.getValue());
                        lo loVar = new lo(a.a, a.b, a.c);
                        if (!this.a.containsKey(loVar)) {
                            this.a.put(loVar, new lp(a.a, a.b, a.c));
                            hashMap.put(loVar.toString(), loVar);
                            a("Restored interstitial queue for %s.", loVar);
                        }
                    }
                }
                for (Object obj : a(sharedPreferences.getString("PoolKeys", ""))) {
                    lo loVar2 = (lo) hashMap.get(obj);
                    if (this.a.containsKey(loVar2)) {
                        this.b.add(loVar2);
                    }
                }
            } catch (Throwable th) {
                v.i().a(th, "InterstitialAdPool.restore");
                sz.c("Malformed preferences value for InterstitialAdPool.", th);
                this.a.clear();
                this.b.clear();
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void d() {
        while (this.b.size() > 0) {
            lo loVar = (lo) this.b.remove();
            lp lpVar = (lp) this.a.get(loVar);
            a("Flushing interstitial queue for %s.", loVar);
            while (lpVar.d() > 0) {
                lpVar.a(null).a.N();
            }
            this.a.remove(loVar);
        }
    }
}
