package com.facebook.ads.internal.server;

import com.facebook.ads.internal.d.d;
import com.facebook.ads.internal.server.c.a;

public class e extends c {
    private final String a;
    private final int b;

    public e(String str, int i, d dVar) {
        super(a.ERROR, dVar);
        this.b = i;
        this.a = str;
    }

    public String c() {
        return this.a;
    }

    public int d() {
        return this.b;
    }
}
