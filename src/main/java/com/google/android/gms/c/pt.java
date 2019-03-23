package com.google.android.gms.c;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.common.d;
import com.google.android.gms.common.e;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

@pa
public class pt extends se {
    static final long a = TimeUnit.SECONDS.toMillis(10);
    static boolean b = false;
    private static final Object c = new Object();
    private static lw d = null;
    private static ks e = null;
    private static kx f = null;
    private static kr g = null;
    private final com.google.android.gms.c.pb.a h;
    private final com.google.android.gms.c.pg.a i;
    private final Object j = new Object();
    private final Context k;
    private com.google.android.gms.c.lw.c l;

    public static class a implements so<ls> {
        public void a(ls lsVar) {
            pt.b(lsVar);
        }
    }

    public static class b implements so<ls> {
        public void a(ls lsVar) {
            pt.a(lsVar);
        }
    }

    public static class c implements kr {
        public void a(tr trVar, Map<String, String> map) {
            String str = (String) map.get("request_id");
            String str2 = "Invalid request: ";
            String valueOf = String.valueOf((String) map.get("errors"));
            sz.e(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
            pt.f.b(str);
        }
    }

    public pt(Context context, com.google.android.gms.c.pg.a aVar, com.google.android.gms.c.pb.a aVar2) {
        super(true);
        this.h = aVar2;
        this.k = context;
        this.i = aVar;
        synchronized (c) {
            if (!b) {
                f = new kx();
                e = new ks(context.getApplicationContext(), aVar.j);
                g = new c();
                d = new lw(this.k.getApplicationContext(), this.i.j, (String) is.b.c(), new b(), new a());
                b = true;
            }
        }
    }

    private pj a(pg pgVar) {
        final String c = v.e().c();
        final JSONObject a = a(pgVar, c);
        if (a == null) {
            return new pj(0);
        }
        long b = v.k().b();
        Future a2 = f.a(c);
        sy.a.post(new Runnable() {
            public void run() {
                pt.this.l = pt.d.a();
                pt.this.l.a(new com.google.android.gms.c.tk.c<lx>() {
                    public void a(lx lxVar) {
                        try {
                            lxVar.a("AFMA_getAdapterLessMediationAd", a);
                        } catch (Exception e) {
                            sz.b("Error requesting an ad url", e);
                            pt.f.b(c);
                        }
                    }
                }, new com.google.android.gms.c.tk.a() {
                    public void a() {
                        pt.f.b(c);
                    }
                });
            }
        });
        try {
            JSONObject jSONObject = (JSONObject) a2.get(a - (v.k().b() - b), TimeUnit.MILLISECONDS);
            if (jSONObject == null) {
                return new pj(-1);
            }
            pj a3 = qa.a(this.k, pgVar, jSONObject.toString());
            return (a3.e == -3 || !TextUtils.isEmpty(a3.c)) ? a3 : new pj(3);
        } catch (InterruptedException | CancellationException e) {
            return new pj(-1);
        } catch (TimeoutException e2) {
            return new pj(2);
        } catch (ExecutionException e3) {
            return new pj(0);
        }
    }

    private JSONObject a(pg pgVar, String str) {
        JSONObject jSONObject = null;
        Bundle bundle = pgVar.c.c.getBundle("sdk_less_server_data");
        if (bundle == null) {
            return jSONObject;
        }
        JSONObject a = qa.a(this.k, new pw().a(pgVar).a(v.n().a(this.k)));
        if (a == null) {
            return jSONObject;
        }
        com.google.android.gms.ads.c.a.a b;
        try {
            b = com.google.android.gms.ads.c.a.b(this.k);
        } catch (d | e | IOException | IllegalStateException e) {
            sz.c("Cannot get advertising id info", e);
            Object b2 = jSONObject;
        }
        Map hashMap = new HashMap();
        hashMap.put("request_id", str);
        hashMap.put("request_param", a);
        hashMap.put("data", bundle);
        if (b2 != null) {
            hashMap.put("adid", b2.a());
            hashMap.put("lat", Integer.valueOf(b2.b() ? 1 : 0));
        }
        try {
            return v.e().a(hashMap);
        } catch (JSONException e2) {
            return jSONObject;
        }
    }

    protected static void a(ls lsVar) {
        lsVar.a("/loadAd", (kr) f);
        lsVar.a("/fetchHttpRequest", (kr) e);
        lsVar.a("/invalidRequest", g);
    }

    protected static void b(ls lsVar) {
        lsVar.b("/loadAd", (kr) f);
        lsVar.b("/fetchHttpRequest", (kr) e);
        lsVar.b("/invalidRequest", g);
    }

    public void a() {
        sz.b("SdkLessAdLoaderBackgroundTask started.");
        pg pgVar = new pg(this.i, null, -1);
        pj a = a(pgVar);
        ha haVar = null;
        final com.google.android.gms.c.rv.a aVar = new com.google.android.gms.c.rv.a(pgVar, a, null, haVar, a.e, v.k().b(), a.n, null);
        sy.a.post(new Runnable() {
            public void run() {
                pt.this.h.a(aVar);
                if (pt.this.l != null) {
                    pt.this.l.d_();
                    pt.this.l = null;
                }
            }
        });
    }

    public void b() {
        synchronized (this.j) {
            sy.a.post(new Runnable() {
                public void run() {
                    if (pt.this.l != null) {
                        pt.this.l.d_();
                        pt.this.l = null;
                    }
                }
            });
        }
    }
}
