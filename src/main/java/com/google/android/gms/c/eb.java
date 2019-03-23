package com.google.android.gms.c;

import com.google.android.gms.c.aw.a;

public class eb extends fb {
    private long i = -1;

    public eb(dn dnVar, String str, String str2, a aVar, int i, int i2) {
        super(dnVar, str, str2, aVar, i, i2);
    }

    /* Access modifiers changed, original: protected */
    public void a() {
        this.e.l = Long.valueOf(-1);
        if (this.i == -1) {
            this.i = (long) ((Integer) this.f.invoke(null, new Object[]{this.b.a()})).intValue();
        }
        synchronized (this.e) {
            this.e.l = Long.valueOf(this.i);
        }
    }
}
