package com.google.android.gms.c;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.a.b;
import com.google.android.gms.ads.b.c;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.c.mj.a;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@pa
public class mi implements a {
    private final String a;
    private final mo b;
    private final long c;
    private final mf d;
    private final me e;
    private gv f;
    private final ha g;
    private final Context h;
    private final Object i = new Object();
    private final tc j;
    private final boolean k;
    private final js l;
    private final List<String> m;
    private final boolean n;
    private mp o;
    private int p = -2;
    private mr q;

    public mi(Context context, String str, mo moVar, mf mfVar, me meVar, gv gvVar, ha haVar, tc tcVar, boolean z, boolean z2, js jsVar, List<String> list) {
        this.h = context;
        this.b = moVar;
        this.e = meVar;
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            this.a = b();
        } else {
            this.a = str;
        }
        this.d = mfVar;
        this.c = mfVar.b != -1 ? mfVar.b : 10000;
        this.f = gvVar;
        this.g = haVar;
        this.j = tcVar;
        this.k = z;
        this.n = z2;
        this.l = jsVar;
        this.m = list;
    }

    private long a(long j, long j2, long j3, long j4) {
        while (this.p == -2) {
            b(j, j2, j3, j4);
        }
        return v.k().b() - j;
    }

    private String a(String str) {
        if (str == null || !e() || b(2)) {
            return str;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.remove("cpm_floor_cents");
            return jSONObject.toString();
        } catch (JSONException e) {
            sz.e("Could not remove field. Returning the original value");
            return str;
        }
    }

    private void a(mh mhVar) {
        String a = a(this.e.i);
        try {
            if (this.j.d < 4100000) {
                if (this.g.e) {
                    this.o.a(b.a(this.h), this.f, a, mhVar);
                } else {
                    this.o.a(b.a(this.h), this.g, this.f, a, (mq) mhVar);
                }
            } else if (this.k) {
                this.o.a(b.a(this.h), this.f, a, this.e.a, mhVar, this.l, this.m);
            } else if (this.g.e) {
                this.o.a(b.a(this.h), this.f, a, this.e.a, (mq) mhVar);
            } else if (!this.n) {
                this.o.a(b.a(this.h), this.g, this.f, a, this.e.a, mhVar);
            } else if (this.e.l != null) {
                this.o.a(b.a(this.h), this.f, a, this.e.a, mhVar, new js(b(this.e.p)), this.e.o);
            } else {
                this.o.a(b.a(this.h), this.g, this.f, a, this.e.a, mhVar);
            }
        } catch (RemoteException e) {
            sz.c("Could not request ad from mediation adapter.", e);
            a(5);
        }
    }

    private static c b(String str) {
        c.a aVar = new c.a();
        if (str == null) {
            return aVar.a();
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            aVar.b(jSONObject.optBoolean("multiple_images", false));
            aVar.a(jSONObject.optBoolean("only_urls", false));
            aVar.a(c(jSONObject.optString("native_image_orientation", "any")));
        } catch (JSONException e) {
            sz.c("Exception occurred when creating native ad options", e);
        }
        return aVar.a();
    }

    private String b() {
        try {
            if (!TextUtils.isEmpty(this.e.e)) {
                return this.b.b(this.e.e) ? "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter" : "com.google.ads.mediation.customevent.CustomEventAdapter";
            }
        } catch (RemoteException e) {
            sz.e("Fail to determine the custom event's version, assuming the old one.");
        }
        return "com.google.ads.mediation.customevent.CustomEventAdapter";
    }

    private void b(long j, long j2, long j3, long j4) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j5 = j2 - (elapsedRealtime - j);
        elapsedRealtime = j4 - (elapsedRealtime - j3);
        if (j5 <= 0 || elapsedRealtime <= 0) {
            sz.d("Timed out waiting for adapter.");
            this.p = 3;
            return;
        }
        try {
            this.i.wait(Math.min(j5, elapsedRealtime));
        } catch (InterruptedException e) {
            this.p = -1;
        }
    }

    private boolean b(int i) {
        try {
            Bundle l = this.k ? this.o.l() : this.g.e ? this.o.k() : this.o.j();
            if (l == null) {
                return false;
            }
            return (l.getInt("capabilities", 0) & i) == i;
        } catch (RemoteException e) {
            sz.e("Could not get adapter info. Returning false");
            return false;
        }
    }

    private static int c(String str) {
        return "landscape".equals(str) ? 2 : "portrait".equals(str) ? 1 : 0;
    }

    private mr c() {
        if (this.p != 0 || !e()) {
            return null;
        }
        try {
            if (!(!b(4) || this.q == null || this.q.a() == 0)) {
                return this.q;
            }
        } catch (RemoteException e) {
            sz.e("Could not get cpm value from MediationResponseMetadata");
        }
        return c(f());
    }

    private static mr c(final int i) {
        return new mr.a() {
            public int a() {
                return i;
            }
        };
    }

    private mp d() {
        String str = "Instantiating mediation adapter: ";
        String valueOf = String.valueOf(this.a);
        sz.d(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        if (!this.k) {
            if (((Boolean) is.bl.c()).booleanValue() && "com.google.ads.mediation.admob.AdMobAdapter".equals(this.a)) {
                return a(new AdMobAdapter());
            }
            if (((Boolean) is.bm.c()).booleanValue() && "com.google.ads.mediation.AdUrlAdapter".equals(this.a)) {
                return a(new AdUrlAdapter());
            }
            if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(this.a)) {
                return new mv(new ne());
            }
        }
        try {
            return this.b.a(this.a);
        } catch (RemoteException e) {
            Throwable th = e;
            String str2 = "Could not instantiate mediation adapter: ";
            valueOf = String.valueOf(this.a);
            sz.a(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2), th);
            return null;
        }
    }

    private boolean e() {
        return this.d.l != -1;
    }

    private int f() {
        if (this.e.i == null) {
            return 0;
        }
        try {
            JSONObject jSONObject = new JSONObject(this.e.i);
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(this.a)) {
                return jSONObject.optInt("cpm_cents", 0);
            }
            int optInt = b(2) ? jSONObject.optInt("cpm_floor_cents", 0) : 0;
            return optInt == 0 ? jSONObject.optInt("penalized_average_cpm_cents", 0) : optInt;
        } catch (JSONException e) {
            sz.e("Could not convert to json. Returning 0");
            return 0;
        }
    }

    public mj a(long j, long j2) {
        mj mjVar;
        synchronized (this.i) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            final mh mhVar = new mh();
            sj.a.post(new Runnable() {
                public void run() {
                    synchronized (mi.this.i) {
                        if (mi.this.p != -2) {
                            return;
                        }
                        mi.this.o = mi.this.d();
                        if (mi.this.o == null) {
                            mi.this.a(4);
                        } else if (!mi.this.e() || mi.this.b(1)) {
                            mhVar.a(mi.this);
                            mi.this.a(mhVar);
                        } else {
                            String f = mi.this.a;
                            sz.e(new StringBuilder(String.valueOf(f).length() + 56).append("Ignoring adapter ").append(f).append(" as delayed impression is not supported").toString());
                            mi.this.a(2);
                        }
                    }
                }
            });
            mh mhVar2 = mhVar;
            mjVar = new mj(this.e, this.o, this.a, mhVar2, this.p, c(), a(elapsedRealtime, this.c, j, j2));
        }
        return mjVar;
    }

    /* Access modifiers changed, original: protected */
    public mp a(com.google.android.gms.ads.mediation.b bVar) {
        return new mv(bVar);
    }

    public void a() {
        synchronized (this.i) {
            try {
                if (this.o != null) {
                    this.o.c();
                }
            } catch (RemoteException e) {
                sz.c("Could not destroy mediation adapter.", e);
            }
            this.p = -1;
            this.i.notify();
        }
    }

    public void a(int i) {
        synchronized (this.i) {
            this.p = i;
            this.i.notify();
        }
    }

    public void a(int i, mr mrVar) {
        synchronized (this.i) {
            this.p = i;
            this.q = mrVar;
            this.i.notify();
        }
    }
}
