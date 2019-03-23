package com.facebook.ads.internal.server;

import com.facebook.ads.internal.d.d;

public class c {
    private d a;
    private a b;

    public enum a {
        UNKNOWN,
        ERROR,
        ADS
    }

    public c(a aVar, d dVar) {
        this.b = aVar;
        this.a = dVar;
    }

    public a a() {
        return this.b;
    }

    public d b() {
        return this.a;
    }
}
