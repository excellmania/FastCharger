package com.google.android.gms.c;

import com.google.android.gms.c.lw.c;
import java.util.Map;
import java.util.concurrent.Future;

@pa
public final class qb {
    c a;
    public final kr b = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            synchronized (qb.this.e) {
                if (qb.this.h.isDone()) {
                } else if (qb.this.f.equals(map.get("request_id"))) {
                    Object qeVar = new qe(1, map);
                    String valueOf = String.valueOf(qeVar.f());
                    String valueOf2 = String.valueOf(qeVar.b());
                    sz.e(new StringBuilder((String.valueOf(valueOf).length() + 24) + String.valueOf(valueOf2).length()).append("Invalid ").append(valueOf).append(" request error: ").append(valueOf2).toString());
                    qb.this.h.b(qeVar);
                }
            }
        }
    };
    public final kr c = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            synchronized (qb.this.e) {
                if (qb.this.h.isDone()) {
                    return;
                }
                Object qeVar = new qe(-2, map);
                if (qb.this.f.equals(qeVar.h())) {
                    String e = qeVar.e();
                    if (e == null) {
                        sz.e("URL missing in loadAdUrl GMSG.");
                        return;
                    }
                    if (e.contains("%40mediation_adapters%40")) {
                        String replaceAll = e.replaceAll("%40mediation_adapters%40", sd.a(trVar.getContext(), (String) map.get("check_adapters"), qb.this.g));
                        qeVar.a(replaceAll);
                        e = "Ad request URL modified to ";
                        replaceAll = String.valueOf(replaceAll);
                        sf.a(replaceAll.length() != 0 ? e.concat(replaceAll) : new String(e));
                    }
                    qb.this.h.b(qeVar);
                    return;
                }
            }
        }
    };
    public final kr d = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            synchronized (qb.this.e) {
                if (qb.this.h.isDone()) {
                    return;
                }
                Object qeVar = new qe(-2, map);
                if (qb.this.f.equals(qeVar.h())) {
                    qb.this.h.b(qeVar);
                    return;
                }
            }
        }
    };
    private final Object e = new Object();
    private String f;
    private String g;
    private te<qe> h = new te();

    public qb(String str, String str2) {
        this.g = str2;
        this.f = str;
    }

    public c a() {
        return this.a;
    }

    public void a(c cVar) {
        this.a = cVar;
    }

    public Future<qe> b() {
        return this.h;
    }
}
