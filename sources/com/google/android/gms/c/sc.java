package com.google.android.gms.c;

import android.os.Bundle;
import com.google.android.gms.ads.internal.v;

@pa
public class sc {
    private final Object a;
    private int b;
    private int c;
    private final ry d;
    private final String e;

    sc(ry ryVar, String str) {
        this.a = new Object();
        this.d = ryVar;
        this.e = str;
    }

    public sc(String str) {
        this(v.i(), str);
    }

    public Bundle a() {
        Bundle bundle;
        synchronized (this.a) {
            bundle = new Bundle();
            bundle.putInt("pmnli", this.b);
            bundle.putInt("pmnll", this.c);
        }
        return bundle;
    }

    public void a(int i, int i2) {
        synchronized (this.a) {
            this.b = i;
            this.c = i2;
            this.d.a(this.e, this);
        }
    }
}
