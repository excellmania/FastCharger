package com.google.android.gms.common.a;

import android.support.v4.util.SimpleArrayMap;

public class d {
    private final long a;
    private final int b;
    private final SimpleArrayMap<String, Long> c;

    public d() {
        this.a = 60000;
        this.b = 10;
        this.c = new SimpleArrayMap(10);
    }

    public d(int i, long j) {
        this.a = j;
        this.b = i;
        this.c = new SimpleArrayMap();
    }
}
