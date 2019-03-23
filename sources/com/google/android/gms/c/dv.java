package com.google.android.gms.c;

import com.google.android.gms.c.aw.a;

public class dv extends fb {
    public dv(dn dnVar, String str, String str2, a aVar, int i, int i2) {
        super(dnVar, str, str2, aVar, i, i2);
    }

    /* Access modifiers changed, original: protected */
    public void a() {
        this.e.e = Long.valueOf(-1);
        this.e.f = Long.valueOf(-1);
        int[] iArr = (int[]) this.f.invoke(null, new Object[]{this.b.a()});
        synchronized (this.e) {
            this.e.e = Long.valueOf((long) iArr[0]);
            this.e.f = Long.valueOf((long) iArr[1]);
        }
    }
}
