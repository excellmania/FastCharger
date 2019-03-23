package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.v4.util.SimpleArrayMap;
import android.text.TextUtils;
import com.google.android.gms.c.hj;
import com.google.android.gms.c.hk;
import com.google.android.gms.c.hl.a;
import com.google.android.gms.c.hr;
import com.google.android.gms.c.js;
import com.google.android.gms.c.kf;
import com.google.android.gms.c.kg;
import com.google.android.gms.c.kh;
import com.google.android.gms.c.ki;
import com.google.android.gms.c.mo;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.tc;

@pa
public class k extends a {
    private hj a;
    private kf b;
    private kg c;
    private SimpleArrayMap<String, kh> d = new SimpleArrayMap();
    private SimpleArrayMap<String, ki> e = new SimpleArrayMap();
    private js f;
    private hr g;
    private final Context h;
    private final mo i;
    private final String j;
    private final tc k;
    private final d l;

    public k(Context context, String str, mo moVar, tc tcVar, d dVar) {
        this.h = context;
        this.j = str;
        this.i = moVar;
        this.k = tcVar;
        this.l = dVar;
    }

    public hk a() {
        return new j(this.h, this.j, this.i, this.k, this.a, this.b, this.c, this.e, this.d, this.f, this.g, this.l);
    }

    public void a(hj hjVar) {
        this.a = hjVar;
    }

    public void a(hr hrVar) {
        this.g = hrVar;
    }

    public void a(js jsVar) {
        this.f = jsVar;
    }

    public void a(kf kfVar) {
        this.b = kfVar;
    }

    public void a(kg kgVar) {
        this.c = kgVar;
    }

    public void a(String str, ki kiVar, kh khVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Custom template ID for native custom template ad is empty. Please provide a valid template id.");
        }
        this.e.put(str, kiVar);
        this.d.put(str, khVar);
    }
}
