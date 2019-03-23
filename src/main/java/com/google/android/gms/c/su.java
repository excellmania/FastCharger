package com.google.android.gms.c;

import com.google.android.gms.ads.internal.v;

@pa
public class su {
    private long a;
    private long b = Long.MIN_VALUE;
    private Object c = new Object();

    public su(long j) {
        this.a = j;
    }

    public boolean a() {
        boolean z;
        synchronized (this.c) {
            long b = v.k().b();
            if (this.b + this.a > b) {
                z = false;
            } else {
                this.b = b;
                z = true;
            }
        }
        return z;
    }
}
