package com.google.android.gms.c;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.c.rv.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

@pa
public class rg extends se implements rf {
    private final a a;
    private final Context b;
    private final ArrayList<Future> c;
    private final ArrayList<String> d;
    private final HashMap<String, ra> e;
    private final List<rb> f;
    private final HashSet<String> g;
    private final Object h;
    private final qp i;
    private final long j;

    public rg(Context context, a aVar, qp qpVar) {
        this(context, aVar, qpVar, ((Long) is.aC.c()).longValue());
    }

    rg(Context context, a aVar, qp qpVar, long j) {
        this.c = new ArrayList();
        this.d = new ArrayList();
        this.e = new HashMap();
        this.f = new ArrayList();
        this.g = new HashSet();
        this.h = new Object();
        this.b = context;
        this.a = aVar;
        this.i = qpVar;
        this.j = j;
    }

    private static int a(int i) {
        switch (i) {
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
                return 4;
            case 6:
                return 0;
            case 7:
                return 3;
            default:
                return 6;
        }
    }

    private rv a(int i, @Nullable String str, @Nullable me meVar) {
        return new rv(this.a.a.c, null, this.a.b.d, i, this.a.b.f, this.a.b.j, this.a.b.l, this.a.b.k, this.a.a.i, this.a.b.h, meVar, null, str, this.a.c, null, this.a.b.i, this.a.d, this.a.b.g, this.a.f, this.a.b.n, this.a.b.o, this.a.h, null, this.a.b.C, this.a.b.D, this.a.b.E, this.a.b.F, this.a.b.G, f(), this.a.b.J, this.a.b.N);
    }

    private rv a(String str, me meVar) {
        return a(-2, str, meVar);
    }

    private static String a(rb rbVar) {
        String str = rbVar.b;
        int a = a(rbVar.c);
        return new StringBuilder(String.valueOf(str).length() + 33).append(str).append(".").append(a).append(".").append(rbVar.d).toString();
    }

    private void a(String str, String str2, me meVar) {
        synchronized (this.h) {
            rh c = this.i.c(str);
            if (c == null || c.b() == null || c.a() == null) {
                this.f.add(new rb.a().b(meVar.d).a(str).a(0).a(7).a());
                return;
            }
            ra a = a(str, str2, meVar, c);
            this.c.add((Future) a.e());
            this.d.add(str);
            this.e.put(str, a);
        }
    }

    private rv c() {
        return a(3, null, null);
    }

    private String f() {
        StringBuilder stringBuilder = new StringBuilder("");
        if (this.f == null) {
            return stringBuilder.toString();
        }
        for (rb rbVar : this.f) {
            if (!(rbVar == null || TextUtils.isEmpty(rbVar.b))) {
                stringBuilder.append(String.valueOf(a(rbVar)).concat("_"));
            }
        }
        return stringBuilder.substring(0, Math.max(0, stringBuilder.length() - 1));
    }

    /* Access modifiers changed, original: protected */
    public ra a(String str, String str2, me meVar, rh rhVar) {
        return new ra(this.b, str, str2, meVar, this.a, rhVar, this, this.j);
    }

    public void a() {
        final rv a;
        for (me meVar : this.a.c.a) {
            String str = meVar.i;
            for (String str2 : meVar.c) {
                String str22;
                if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str22) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str22)) {
                    try {
                        str22 = new JSONObject(str).getString("class_name");
                    } catch (JSONException e) {
                        sz.b("Unable to determine custom event class name, skipping...", e);
                    }
                }
                a(str22, str, meVar);
            }
        }
        int i = 0;
        while (i < this.c.size()) {
            String str3;
            ra raVar;
            try {
                ((Future) this.c.get(i)).get();
                synchronized (this.h) {
                    str3 = (String) this.d.get(i);
                    if (!TextUtils.isEmpty(str3)) {
                        raVar = (ra) this.e.get(str3);
                        if (raVar != null) {
                            this.f.add(raVar.c());
                        }
                    }
                }
                synchronized (this.h) {
                    if (this.g.contains(this.d.get(i))) {
                        str3 = (String) this.d.get(i);
                        a = a(str3, this.e.get(str3) != null ? ((ra) this.e.get(str3)).f() : null);
                        sy.a.post(new Runnable() {
                            public void run() {
                                rg.this.i.b(a);
                            }
                        });
                        return;
                    }
                }
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                synchronized (this.h) {
                    str3 = (String) this.d.get(i);
                    if (!TextUtils.isEmpty(str3)) {
                        raVar = (ra) this.e.get(str3);
                        if (raVar != null) {
                            this.f.add(raVar.c());
                        }
                    }
                }
            } catch (Exception e3) {
                sz.c("Unable to resolve rewarded adapter.", e3);
                synchronized (this.h) {
                    str3 = (String) this.d.get(i);
                    if (!TextUtils.isEmpty(str3)) {
                        raVar = (ra) this.e.get(str3);
                        if (raVar != null) {
                            this.f.add(raVar.c());
                        }
                    }
                }
            } catch (Throwable th) {
                Throwable th2 = th;
                synchronized (this.h) {
                    str3 = (String) this.d.get(i);
                    if (!TextUtils.isEmpty(str3)) {
                        raVar = (ra) this.e.get(str3);
                        if (raVar != null) {
                            this.f.add(raVar.c());
                        }
                    }
                }
            }
        }
        a = c();
        sy.a.post(new Runnable() {
            public void run() {
                rg.this.i.b(a);
            }
        });
        return;
        i++;
    }

    public void a(String str) {
        synchronized (this.h) {
            this.g.add(str);
        }
    }

    public void a(String str, int i) {
    }

    public void b() {
    }
}
