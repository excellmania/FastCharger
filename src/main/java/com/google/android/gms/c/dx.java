package com.google.android.gms.c;

import com.google.android.gms.c.aw.a;

public class dx extends fb {
    private long i;

    public dx(dn dnVar, String str, String str2, a aVar, long j, int i, int i2) {
        super(dnVar, str, str2, aVar, i, i2);
        this.i = j;
    }

    /* Access modifiers changed, original: protected */
    public void a() {
        long longValue = ((Long) this.f.invoke(null, new Object[0])).longValue();
        synchronized (this.e) {
            this.e.ae = Long.valueOf(longValue);
            if (this.i != 0) {
                this.e.q = Long.valueOf(longValue - this.i);
                this.e.v = Long.valueOf(this.i);
            }
        }
    }
}
