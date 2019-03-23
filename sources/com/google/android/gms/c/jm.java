package com.google.android.gms.c;

import android.os.Bundle;
import android.support.annotation.Nullable;
import com.google.android.gms.a.b;
import com.google.android.gms.c.kc.a;
import java.util.List;

@pa
public class jm extends a implements jq.a {
    private String a;
    private List<jk> b;
    private String c;
    private jv d;
    private String e;
    private String f;
    @Nullable
    private ji g;
    private Bundle h;
    private Object i = new Object();
    private jq j;

    public jm(String str, List list, String str2, jv jvVar, String str3, String str4, @Nullable ji jiVar, Bundle bundle) {
        this.a = str;
        this.b = list;
        this.c = str2;
        this.d = jvVar;
        this.e = str3;
        this.f = str4;
        this.g = jiVar;
        this.h = bundle;
    }

    public String a() {
        return this.a;
    }

    public void a(jq jqVar) {
        synchronized (this.i) {
            this.j = jqVar;
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

    public String f() {
        return this.f;
    }

    public com.google.android.gms.a.a g() {
        return b.a(this.j);
    }

    public Bundle h() {
        return this.h;
    }

    public void i() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
    }

    public String k() {
        return "1";
    }

    public String l() {
        return "";
    }

    public ji m() {
        return this.g;
    }
}
