package com.google.android.gms.c;

import com.google.android.gms.c.aw.a;

public class dr extends fb {
    public dr(dn dnVar, String str, String str2, a aVar, int i, int i2) {
        super(dnVar, str, str2, aVar, i, i2);
    }

    /* Access modifiers changed, original: protected */
    public void a() {
        synchronized (this.e) {
            this.e.c = Long.valueOf(-1);
            this.e.c = (Long) this.f.invoke(null, new Object[]{this.b.a()});
        }
    }
}
