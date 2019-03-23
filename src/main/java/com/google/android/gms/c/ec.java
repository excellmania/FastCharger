package com.google.android.gms.c;

import com.google.android.gms.c.aw.a;

public class ec extends fb {
    private static volatile String i = null;
    private static final Object j = new Object();

    public ec(dn dnVar, String str, String str2, a aVar, int i, int i2) {
        super(dnVar, str, str2, aVar, i, i2);
    }

    /* Access modifiers changed, original: protected */
    public void a() {
        this.e.a = "E";
        if (i == null) {
            synchronized (j) {
                if (i == null) {
                    i = (String) this.f.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.e) {
            this.e.a = i;
        }
    }
}
