package com.google.android.gms.c;

import android.content.Context;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.v;
import org.json.JSONException;
import org.json.JSONObject;

@pa
public class pc extends se implements com.google.android.gms.c.pd.a {
    sl a;
    pj b;
    mf c;
    private final com.google.android.gms.c.pb.a d;
    private final com.google.android.gms.c.pg.a e;
    private final Object f = new Object();
    private final Context g;
    private final cm h;
    private pg i;
    private Runnable j;

    @pa
    static final class a extends Exception {
        private final int a;

        public a(String str, int i) {
            super(str);
            this.a = i;
        }

        public int a() {
            return this.a;
        }
    }

    public pc(Context context, com.google.android.gms.c.pg.a aVar, cm cmVar, com.google.android.gms.c.pb.a aVar2) {
        this.d = aVar2;
        this.g = context;
        this.e = aVar;
        this.h = cmVar;
    }

    private void a(int i, String str) {
        if (i == 3 || i == -1) {
            sz.d(str);
        } else {
            sz.e(str);
        }
        if (this.b == null) {
            this.b = new pj(i);
        } else {
            this.b = new pj(i, this.b.k);
        }
        this.d.a(new com.google.android.gms.c.rv.a(this.i != null ? this.i : new pg(this.e, null, -1), this.b, this.c, null, i, -1, this.b.n, null));
    }

    /* Access modifiers changed, original: protected */
    public ha a(pg pgVar) {
        int i;
        if (this.b.A) {
            for (ha haVar : pgVar.d.h) {
                if (haVar.j) {
                    return new ha(haVar, pgVar.d.h);
                }
            }
        }
        if (this.b.m == null) {
            throw new a("The ad response must specify one of the supported ad sizes.", 0);
        }
        String[] split = this.b.m.split("x");
        String str;
        String valueOf;
        if (split.length != 2) {
            str = "Invalid ad size format from the ad response: ";
            valueOf = String.valueOf(this.b.m);
            throw new a(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), 0);
        }
        try {
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            for (ha haVar2 : pgVar.d.h) {
                float f = this.g.getResources().getDisplayMetrics().density;
                i = haVar2.f == -1 ? (int) (((float) haVar2.g) / f) : haVar2.f;
                int i2 = haVar2.c == -2 ? (int) (((float) haVar2.d) / f) : haVar2.c;
                if (parseInt == i && parseInt2 == i2 && !haVar2.j) {
                    return new ha(haVar2, pgVar.d.h);
                }
            }
            str = "The ad size from the ad response was not one of the requested sizes: ";
            valueOf = String.valueOf(this.b.m);
            throw new a(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), 0);
        } catch (NumberFormatException e) {
            str = "Invalid ad size number from the ad response: ";
            valueOf = String.valueOf(this.b.m);
            throw new a(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), 0);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public sl a(tc tcVar, tk<pg> tkVar) {
        return pd.a(this.g, tcVar, tkVar, this);
    }

    public void a() {
        sz.b("AdLoaderBackgroundTask started.");
        this.j = new Runnable() {
            public void run() {
                synchronized (pc.this.f) {
                    if (pc.this.a == null) {
                        return;
                    }
                    pc.this.b();
                    pc.this.a(2, "Timed out waiting for ad response.");
                }
            }
        };
        sj.a.postDelayed(this.j, ((Long) is.bn.c()).longValue());
        final tl tlVar = new tl();
        long b = v.k().b();
        si.a(new Runnable() {
            public void run() {
                synchronized (pc.this.f) {
                    pc.this.a = pc.this.a(pc.this.e.j, tlVar);
                    if (pc.this.a == null) {
                        pc.this.a(0, "Could not start the ad request service.");
                        sj.a.removeCallbacks(pc.this.j);
                    }
                }
            }
        });
        this.i = new pg(this.e, this.h.a().a(this.g), b);
        tlVar.a(this.i);
    }

    public void a(@NonNull pj pjVar) {
        sz.b("Received ad response.");
        this.b = pjVar;
        long b = v.k().b();
        synchronized (this.f) {
            this.a = null;
        }
        v.i().b(this.g, this.b.H);
        try {
            if (this.b.e == -2 || this.b.e == -3) {
                JSONObject jSONObject;
                c();
                ha a = this.i.d.h != null ? a(this.i) : null;
                v.i().b(this.b.v);
                v.i().c(this.b.O);
                if (!TextUtils.isEmpty(this.b.r)) {
                    try {
                        jSONObject = new JSONObject(this.b.r);
                    } catch (Exception e) {
                        sz.b("Error parsing the JSON for Active View.", e);
                    }
                    this.d.a(new com.google.android.gms.c.rv.a(this.i, this.b, this.c, a, -2, b, this.b.n, jSONObject));
                    sj.a.removeCallbacks(this.j);
                    return;
                }
                jSONObject = null;
                this.d.a(new com.google.android.gms.c.rv.a(this.i, this.b, this.c, a, -2, b, this.b.n, jSONObject));
                sj.a.removeCallbacks(this.j);
                return;
            }
            throw new a("There was a problem getting an ad response. ErrorCode: " + this.b.e, this.b.e);
        } catch (a e2) {
            a(e2.a(), e2.getMessage());
            sj.a.removeCallbacks(this.j);
        }
    }

    public void b() {
        synchronized (this.f) {
            if (this.a != null) {
                this.a.d();
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void c() {
        if (this.b.e != -3) {
            if (TextUtils.isEmpty(this.b.c)) {
                throw new a("No fill from ad server.", 3);
            }
            v.i().a(this.g, this.b.u);
            if (this.b.h) {
                try {
                    this.c = new mf(this.b.c);
                    v.i().d(this.c.g);
                } catch (JSONException e) {
                    sz.b("Could not parse mediation config.", e);
                    String str = "Could not parse mediation config: ";
                    String valueOf = String.valueOf(this.b.c);
                    throw new a(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), 0);
                }
            }
            v.i().d(this.b.K);
            if (!TextUtils.isEmpty(this.b.I) && ((Boolean) is.cR.c()).booleanValue()) {
                sz.b("Received cookie from server. Setting webview cookie in CookieManager.");
                CookieManager b = v.g().b(this.g);
                if (b != null) {
                    b.setCookie("googleads.g.doubleclick.net", this.b.I);
                }
            }
        }
    }
}
