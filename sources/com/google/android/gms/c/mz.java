package com.google.android.gms.c;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.a.b;
import com.google.android.gms.ads.mediation.k;
import com.google.android.gms.c.mt.a;
import java.util.ArrayList;
import java.util.List;

@pa
public class mz extends a {
    private final k a;

    public mz(k kVar) {
        this.a = kVar;
    }

    public String a() {
        return this.a.e();
    }

    public void a(com.google.android.gms.a.a aVar) {
        this.a.c((View) b.a(aVar));
    }

    public List b() {
        List<com.google.android.gms.ads.b.b.a> f = this.a.f();
        if (f == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (com.google.android.gms.ads.b.b.a aVar : f) {
            arrayList.add(new jk(aVar.a(), aVar.b(), aVar.c()));
        }
        return arrayList;
    }

    public void b(com.google.android.gms.a.a aVar) {
        this.a.a((View) b.a(aVar));
    }

    public String c() {
        return this.a.g();
    }

    public void c(com.google.android.gms.a.a aVar) {
        this.a.b((View) b.a(aVar));
    }

    public jv d() {
        com.google.android.gms.ads.b.b.a h = this.a.h();
        return h != null ? new jk(h.a(), h.b(), h.c()) : null;
    }

    public String e() {
        return this.a.i();
    }

    public String f() {
        return this.a.j();
    }

    public void g() {
        this.a.d();
    }

    public boolean h() {
        return this.a.a();
    }

    public boolean i() {
        return this.a.b();
    }

    public Bundle j() {
        return this.a.c();
    }
}
