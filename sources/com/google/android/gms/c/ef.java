package com.google.android.gms.c;

import com.google.android.gms.c.aw.a;

public class ef extends fb {
    public ef(dn dnVar, String str, String str2, a aVar, int i, int i2) {
        super(dnVar, str, str2, aVar, i, i2);
    }

    /* Access modifiers changed, original: protected */
    public void a() {
        synchronized (this.e) {
            dm dmVar = new dm((String) this.f.invoke(null, new Object[0]));
            this.e.Q = dmVar.a;
            this.e.R = dmVar.b;
        }
    }
}
