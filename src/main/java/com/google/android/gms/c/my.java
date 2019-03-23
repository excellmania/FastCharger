package com.google.android.gms.c;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.a.b;
import com.google.android.gms.ads.mediation.j;
import com.google.android.gms.c.ms.a;
import java.util.ArrayList;
import java.util.List;

@pa
public class my extends a {
    private final j a;

    public my(j jVar) {
        this.a = jVar;
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

    public double f() {
        return this.a.j();
    }

    public String g() {
        return this.a.k();
    }

    public String h() {
        return this.a.l();
    }

    public void i() {
        this.a.d();
    }

    public boolean j() {
        return this.a.a();
    }

    public boolean k() {
        return this.a.b();
    }

    public Bundle l() {
        return this.a.c();
    }

    public hu m() {
        return this.a.m() != null ? this.a.m().a() : null;
    }
}
