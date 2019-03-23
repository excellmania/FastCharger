package com.google.android.gms.c;

import android.support.v4.util.SimpleArrayMap;
import com.google.android.gms.c.ke.a;
import java.util.Arrays;
import java.util.List;

@pa
public class jn extends a implements jq.a {
    private final ji a;
    private final String b;
    private final SimpleArrayMap<String, jk> c;
    private final SimpleArrayMap<String, String> d;
    private final Object e = new Object();
    private jq f;

    public jn(String str, SimpleArrayMap<String, jk> simpleArrayMap, SimpleArrayMap<String, String> simpleArrayMap2, ji jiVar) {
        this.b = str;
        this.c = simpleArrayMap;
        this.d = simpleArrayMap2;
        this.a = jiVar;
    }

    public String a(String str) {
        return (String) this.d.get(str);
    }

    public List<String> a() {
        int i = 0;
        String[] strArr = new String[(this.c.size() + this.d.size())];
        int i2 = 0;
        for (int i3 = 0; i3 < this.c.size(); i3++) {
            strArr[i2] = (String) this.c.keyAt(i3);
            i2++;
        }
        while (i < this.d.size()) {
            strArr[i2] = (String) this.d.keyAt(i);
            i++;
            i2++;
        }
        return Arrays.asList(strArr);
    }

    public void a(jq jqVar) {
        synchronized (this.e) {
            this.f = jqVar;
        }
    }

    public jv b(String str) {
        return (jv) this.c.get(str);
    }

    public void b() {
        synchronized (this.e) {
            if (this.f == null) {
                sz.c("Attempt to perform recordImpression before ad initialized.");
                return;
            }
            this.f.a(null, null);
        }
    }

    public void c(String str) {
        synchronized (this.e) {
            if (this.f == null) {
                sz.c("Attempt to call performClick before ad initialized.");
                return;
            }
            this.f.a(null, str, null, null, null);
        }
    }

    public String k() {
        return "3";
    }

    public String l() {
        return this.b;
    }

    public ji m() {
        return this.a;
    }
}
