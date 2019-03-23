package com.google.android.gms.c;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.v;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@pa
public class jb {
    boolean a;
    private final List<iz> b = new LinkedList();
    private final Map<String, String> c = new LinkedHashMap();
    private final Object d = new Object();
    private String e;
    private iz f;
    @Nullable
    private jb g;

    public jb(boolean z, String str, String str2) {
        this.a = z;
        this.c.put("action", str);
        this.c.put("ad_format", str2);
    }

    public iz a() {
        return a(v.k().b());
    }

    @Nullable
    public iz a(long j) {
        return !this.a ? null : new iz(j, null, null);
    }

    public void a(@Nullable jb jbVar) {
        synchronized (this.d) {
            this.g = jbVar;
        }
    }

    public void a(String str) {
        if (this.a) {
            synchronized (this.d) {
                this.e = str;
            }
        }
    }

    public void a(String str, String str2) {
        if (this.a && !TextUtils.isEmpty(str2)) {
            iu f = v.i().f();
            if (f != null) {
                synchronized (this.d) {
                    f.a(str).a(this.c, str, str2);
                }
            }
        }
    }

    public boolean a(iz izVar, long j, String... strArr) {
        synchronized (this.d) {
            for (String izVar2 : strArr) {
                this.b.add(new iz(j, izVar2, izVar));
            }
        }
        return true;
    }

    public boolean a(@Nullable iz izVar, String... strArr) {
        return (!this.a || izVar == null) ? false : a(izVar, v.k().b(), strArr);
    }

    public void b() {
        synchronized (this.d) {
            this.f = a();
        }
    }

    public String c() {
        String stringBuilder;
        StringBuilder stringBuilder2 = new StringBuilder();
        synchronized (this.d) {
            for (iz izVar : this.b) {
                long a = izVar.a();
                String b = izVar.b();
                iz izVar2 = izVar2.c();
                if (izVar2 != null && a > 0) {
                    stringBuilder2.append(b).append('.').append(a - izVar2.a()).append(',');
                }
            }
            this.b.clear();
            if (!TextUtils.isEmpty(this.e)) {
                stringBuilder2.append(this.e);
            } else if (stringBuilder2.length() > 0) {
                stringBuilder2.setLength(stringBuilder2.length() - 1);
            }
            stringBuilder = stringBuilder2.toString();
        }
        return stringBuilder;
    }

    /* Access modifiers changed, original: 0000 */
    public Map<String, String> d() {
        Map<String, String> map;
        synchronized (this.d) {
            iu f = v.i().f();
            if (f == null || this.g == null) {
                map = this.c;
            } else {
                map = f.a(this.c, this.g.d());
            }
        }
        return map;
    }

    public iz e() {
        iz izVar;
        synchronized (this.d) {
            izVar = this.f;
        }
        return izVar;
    }
}
