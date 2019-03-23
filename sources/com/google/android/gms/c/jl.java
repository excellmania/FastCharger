package com.google.android.gms.c;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import com.google.android.gms.a.b;
import com.google.android.gms.c.ka.a;
import java.util.List;

@pa
public class jl extends a implements jq.a {
    private String a;
    private List<jk> b;
    private String c;
    private jv d;
    private String e;
    private double f;
    private String g;
    private String h;
    @Nullable
    private ji i;
    private Bundle j;
    @Nullable
    private hu k;
    @Nullable
    private View l;
    private Object m = new Object();
    private jq n;

    public jl(String str, List list, String str2, jv jvVar, String str3, double d, String str4, String str5, @Nullable ji jiVar, Bundle bundle, hu huVar, View view) {
        this.a = str;
        this.b = list;
        this.c = str2;
        this.d = jvVar;
        this.e = str3;
        this.f = d;
        this.g = str4;
        this.h = str5;
        this.i = jiVar;
        this.j = bundle;
        this.k = huVar;
        this.l = view;
    }

    public String a() {
        return this.a;
    }

    public void a(jq jqVar) {
        synchronized (this.m) {
            this.n = jqVar;
        }
    }

    public List b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public jv d() {
        return this.d;
    }

    public String e() {
        return this.e;
    }

    public double f() {
        return this.f;
    }

    public String g() {
        return this.g;
    }

    public String h() {
        return this.h;
    }

    public hu i() {
        return this.k;
    }

    public com.google.android.gms.a.a j() {
        return b.a(this.n);
    }

    public String k() {
        return "2";
    }

    public String l() {
        return "";
    }

    public ji m() {
        return this.i;
    }

    public Bundle n() {
        return this.j;
    }

    public View o() {
        return this.l;
    }

    public void p() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = 0.0d;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.m = null;
        this.n = null;
        this.k = null;
        this.l = null;
    }
}
