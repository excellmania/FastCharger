package com.google.android.gms.c;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.security.NetworkSecurityPolicy;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.c.fx.b;
import com.google.android.gms.common.util.k;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.DynamiteModule.a;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Future;

@pa
public class ry implements b, sh.b {
    private String A = "";
    private long B = 0;
    private long C = 0;
    private int D = -1;
    private final Object a = new Object();
    private final String b;
    private final rz c;
    private fl d;
    private BigInteger e = BigInteger.ONE;
    private final HashSet<rw> f = new HashSet();
    private final HashMap<String, sc> g = new HashMap();
    private boolean h = false;
    private boolean i = true;
    private int j = 0;
    private boolean k = false;
    private Context l;
    private tc m;
    private iu n = null;
    private boolean o = true;
    private boolean p = true;
    private fy q = null;
    private fv r = null;
    private String s;
    private String t;
    private Boolean u = null;
    private String v;
    private boolean w = false;
    private boolean x = false;
    private boolean y = false;
    private boolean z = false;

    public ry(sj sjVar) {
        this.b = sjVar.d();
        this.c = new rz(this.b);
    }

    public Bundle a(Context context, sb sbVar, String str) {
        Bundle bundle;
        synchronized (this.a) {
            bundle = new Bundle();
            bundle.putBundle("app", this.c.a(context, str));
            Bundle bundle2 = new Bundle();
            for (String str2 : this.g.keySet()) {
                bundle2.putBundle(str2, ((sc) this.g.get(str2)).a());
            }
            bundle.putBundle("slots", bundle2);
            ArrayList arrayList = new ArrayList();
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                arrayList.add(((rw) it.next()).d());
            }
            bundle.putParcelableArrayList("ads", arrayList);
            sbVar.a(this.f);
            this.f.clear();
        }
        return bundle;
    }

    /* JADX WARNING: Missing block: B:40:?, code skipped:
            return null;
     */
    public com.google.android.gms.c.fy a(android.content.Context r6) {
        /*
        r5 = this;
        r1 = 0;
        r0 = com.google.android.gms.c.is.Y;
        r0 = r0.c();
        r0 = (java.lang.Boolean) r0;
        r0 = r0.booleanValue();
        if (r0 != 0) goto L_0x0011;
    L_0x000f:
        r0 = r1;
    L_0x0010:
        return r0;
    L_0x0011:
        r0 = com.google.android.gms.common.util.k.c();
        if (r0 != 0) goto L_0x0019;
    L_0x0017:
        r0 = r1;
        goto L_0x0010;
    L_0x0019:
        r0 = com.google.android.gms.c.is.ag;
        r0 = r0.c();
        r0 = (java.lang.Boolean) r0;
        r0 = r0.booleanValue();
        if (r0 != 0) goto L_0x0037;
    L_0x0027:
        r0 = com.google.android.gms.c.is.ae;
        r0 = r0.c();
        r0 = (java.lang.Boolean) r0;
        r0 = r0.booleanValue();
        if (r0 != 0) goto L_0x0037;
    L_0x0035:
        r0 = r1;
        goto L_0x0010;
    L_0x0037:
        r0 = r5.b();
        if (r0 == 0) goto L_0x0045;
    L_0x003d:
        r0 = r5.c();
        if (r0 == 0) goto L_0x0045;
    L_0x0043:
        r0 = r1;
        goto L_0x0010;
    L_0x0045:
        r2 = r5.a;
        monitor-enter(r2);
        r0 = android.os.Looper.getMainLooper();	 Catch:{ all -> 0x007c }
        if (r0 == 0) goto L_0x0050;
    L_0x004e:
        if (r6 != 0) goto L_0x0053;
    L_0x0050:
        monitor-exit(r2);	 Catch:{ all -> 0x007c }
        r0 = r1;
        goto L_0x0010;
    L_0x0053:
        r0 = r5.r;	 Catch:{ all -> 0x007c }
        if (r0 != 0) goto L_0x005e;
    L_0x0057:
        r0 = new com.google.android.gms.c.fv;	 Catch:{ all -> 0x007c }
        r0.<init>();	 Catch:{ all -> 0x007c }
        r5.r = r0;	 Catch:{ all -> 0x007c }
    L_0x005e:
        r0 = r5.q;	 Catch:{ all -> 0x007c }
        if (r0 != 0) goto L_0x0073;
    L_0x0062:
        r0 = new com.google.android.gms.c.fy;	 Catch:{ all -> 0x007c }
        r1 = r5.r;	 Catch:{ all -> 0x007c }
        r3 = r5.l;	 Catch:{ all -> 0x007c }
        r4 = r5.m;	 Catch:{ all -> 0x007c }
        r3 = com.google.android.gms.c.ox.a(r3, r4);	 Catch:{ all -> 0x007c }
        r0.<init>(r1, r3);	 Catch:{ all -> 0x007c }
        r5.q = r0;	 Catch:{ all -> 0x007c }
    L_0x0073:
        r0 = r5.q;	 Catch:{ all -> 0x007c }
        r0.a();	 Catch:{ all -> 0x007c }
        r0 = r5.q;	 Catch:{ all -> 0x007c }
        monitor-exit(r2);	 Catch:{ all -> 0x007c }
        goto L_0x0010;
    L_0x007c:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x007c }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.ry.a(android.content.Context):com.google.android.gms.c.fy");
    }

    public String a() {
        return this.b;
    }

    public Future a(int i) {
        Future a;
        synchronized (this.a) {
            this.D = i;
            a = sh.a(this.l, i);
        }
        return a;
    }

    public Future a(long j) {
        Future a;
        synchronized (this.a) {
            if (this.C < j) {
                this.C = j;
                a = sh.a(this.l, j);
            } else {
                a = null;
            }
        }
        return a;
    }

    public Future a(Context context, String str) {
        Future a;
        this.B = v.k().a();
        synchronized (this.a) {
            if (str != null) {
                if (!str.equals(this.A)) {
                    this.A = str;
                    a = sh.a(context, str, this.B);
                }
            }
            a = null;
        }
        return a;
    }

    public Future a(Context context, boolean z) {
        Future a;
        synchronized (this.a) {
            if (z != this.i) {
                this.i = z;
                a = sh.a(context, z);
            } else {
                a = null;
            }
        }
        return a;
    }

    public Future a(String str) {
        Future a;
        synchronized (this.a) {
            if (str != null) {
                if (!str.equals(this.s)) {
                    this.s = str;
                    a = sh.a(this.l, str);
                }
            }
            a = null;
        }
        return a;
    }

    @TargetApi(23)
    public void a(Context context, tc tcVar) {
        synchronized (this.a) {
            if (!this.k) {
                this.l = context.getApplicationContext();
                this.m = tcVar;
                v.h().a((b) this);
                sh.a(context, (sh.b) this);
                sh.b(context, (sh.b) this);
                sh.c(context, (sh.b) this);
                sh.d(context, this);
                sh.e(context, this);
                sh.f(context, this);
                sh.g(context, this);
                t();
                this.v = v.e().a(context, tcVar.b);
                if (k.k() && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted()) {
                    this.x = true;
                }
                this.d = new fl(context.getApplicationContext(), this.m, v.e().a(context, tcVar));
                v();
                v.s().a(this.l);
                this.k = true;
            }
        }
    }

    public void a(Bundle bundle) {
        synchronized (this.a) {
            this.i = bundle.getBoolean("use_https", this.i);
            this.j = bundle.getInt("webview_cache_version", this.j);
            if (bundle.containsKey("content_url_opted_out")) {
                b(bundle.getBoolean("content_url_opted_out"));
            }
            if (bundle.containsKey("content_url_hashes")) {
                this.s = bundle.getString("content_url_hashes");
            }
            this.y = bundle.getBoolean("auto_collect_location", this.y);
            if (bundle.containsKey("content_vertical_opted_out")) {
                c(bundle.getBoolean("content_vertical_opted_out"));
            }
            if (bundle.containsKey("content_vertical_hashes")) {
                this.t = bundle.getString("content_vertical_hashes");
            }
            this.A = bundle.containsKey("app_settings_json") ? bundle.getString("app_settings_json") : this.A;
            this.B = bundle.getLong("app_settings_last_update_ms", this.B);
            this.C = bundle.getLong("app_last_background_time_ms", this.C);
            this.D = bundle.getInt("request_in_session_count", this.D);
        }
    }

    public void a(rw rwVar) {
        synchronized (this.a) {
            this.f.add(rwVar);
        }
    }

    public void a(Boolean bool) {
        synchronized (this.a) {
            this.u = bool;
        }
    }

    public void a(String str, sc scVar) {
        synchronized (this.a) {
            this.g.put(str, scVar);
        }
    }

    public void a(Throwable th, String str) {
        ox.a(this.l, this.m).a(th, str);
    }

    public void a(HashSet<rw> hashSet) {
        synchronized (this.a) {
            this.f.addAll(hashSet);
        }
    }

    public void a(boolean z) {
        if (!z) {
            a(v.k().a());
            a(this.c.d());
        } else if (v.k().a() - this.C > ((Long) is.aF.c()).longValue()) {
            this.c.a(-1);
        } else {
            this.c.a(this.D);
        }
    }

    public Future b(Context context, boolean z) {
        Future c;
        synchronized (this.a) {
            if (z != this.y) {
                this.y = z;
                c = sh.c(context, z);
            } else {
                c = null;
            }
        }
        return c;
    }

    public Future b(String str) {
        Future b;
        synchronized (this.a) {
            if (str != null) {
                if (!str.equals(this.t)) {
                    this.t = str;
                    b = sh.b(this.l, str);
                }
            }
            b = null;
        }
        return b;
    }

    public void b(boolean z) {
        synchronized (this.a) {
            if (this.o != z) {
                sh.b(this.l, z);
            }
            this.o = z;
            fy a = a(this.l);
            if (!(a == null || a.isAlive())) {
                sz.d("start fetching content...");
                a.a();
            }
        }
    }

    public boolean b() {
        boolean z;
        synchronized (this.a) {
            z = this.o;
        }
        return z;
    }

    public void c(boolean z) {
        synchronized (this.a) {
            if (this.p != z) {
                sh.b(this.l, z);
            }
            sh.b(this.l, z);
            this.p = z;
            fy a = a(this.l);
            if (!(a == null || a.isAlive())) {
                sz.d("start fetching content...");
                a.a();
            }
        }
    }

    public boolean c() {
        boolean z;
        synchronized (this.a) {
            z = this.p;
        }
        return z;
    }

    public String d() {
        String bigInteger;
        synchronized (this.a) {
            bigInteger = this.e.toString();
            this.e = this.e.add(BigInteger.ONE);
        }
        return bigInteger;
    }

    public void d(boolean z) {
        this.z = z;
    }

    public rz e() {
        rz rzVar;
        synchronized (this.a) {
            rzVar = this.c;
        }
        return rzVar;
    }

    public void e(boolean z) {
        synchronized (this.a) {
            this.w = z;
        }
    }

    public iu f() {
        iu iuVar;
        synchronized (this.a) {
            iuVar = this.n;
        }
        return iuVar;
    }

    public boolean g() {
        boolean z;
        synchronized (this.a) {
            z = this.h;
            this.h = true;
        }
        return z;
    }

    public boolean h() {
        boolean z;
        synchronized (this.a) {
            z = this.i || this.x;
        }
        return z;
    }

    public String i() {
        String str;
        synchronized (this.a) {
            str = this.v;
        }
        return str;
    }

    public String j() {
        String str;
        synchronized (this.a) {
            str = this.s;
        }
        return str;
    }

    public String k() {
        String str;
        synchronized (this.a) {
            str = this.t;
        }
        return str;
    }

    public Boolean l() {
        Boolean bool;
        synchronized (this.a) {
            bool = this.u;
        }
        return bool;
    }

    public boolean m() {
        boolean z;
        synchronized (this.a) {
            z = this.y;
        }
        return z;
    }

    public long n() {
        long j;
        synchronized (this.a) {
            j = this.C;
        }
        return j;
    }

    public int o() {
        int i;
        synchronized (this.a) {
            i = this.D;
        }
        return i;
    }

    public boolean p() {
        return this.z;
    }

    public rx q() {
        rx rxVar;
        synchronized (this.a) {
            rxVar = new rx(this.A, this.B);
        }
        return rxVar;
    }

    public fl r() {
        return this.d;
    }

    public Resources s() {
        if (this.m.e) {
            return this.l.getResources();
        }
        try {
            DynamiteModule a = DynamiteModule.a(this.l, DynamiteModule.a, ModuleDescriptor.MODULE_ID);
            return a != null ? a.a().getResources() : null;
        } catch (a e) {
            sz.c("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    public void t() {
        ox.a(this.l, this.m);
    }

    public boolean u() {
        boolean z;
        synchronized (this.a) {
            z = this.w;
        }
        return z;
    }

    /* Access modifiers changed, original: 0000 */
    public void v() {
        try {
            this.n = v.l().a(new it(this.l, this.m.b));
        } catch (IllegalArgumentException e) {
            sz.c("Cannot initialize CSI reporter.", e);
        }
    }
}
