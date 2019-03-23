package com.google.android.gms.c;

import com.google.android.gms.c.aw.a;

public class ew extends fb {
    public ew(dn dnVar, String str, String str2, a aVar, int i, int i2) {
        super(dnVar, str, str2, aVar, i, i2);
    }

    /* Access modifiers changed, original: protected */
    public void a() {
        this.e.O = Integer.valueOf(2);
        boolean booleanValue = ((Boolean) this.f.invoke(null, new Object[]{this.b.b()})).booleanValue();
        synchronized (this.e) {
            if (booleanValue) {
                this.e.O = Integer.valueOf(1);
            } else {
                this.e.O = Integer.valueOf(0);
            }
        }
    }
}
