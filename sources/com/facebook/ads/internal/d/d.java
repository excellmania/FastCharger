package com.facebook.ads.internal.d;

import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

public class d {
    private List<a> a = new ArrayList();
    private int b = 0;
    private e c;
    @Nullable
    private String d;

    public d(e eVar, @Nullable String str) {
        this.c = eVar;
        this.d = str;
    }

    public e a() {
        return this.c;
    }

    public void a(a aVar) {
        this.a.add(aVar);
    }

    @Nullable
    public String b() {
        return this.d;
    }

    public int c() {
        return this.a.size();
    }

    public a d() {
        if (this.b >= this.a.size()) {
            return null;
        }
        this.b++;
        return (a) this.a.get(this.b - 1);
    }
}
