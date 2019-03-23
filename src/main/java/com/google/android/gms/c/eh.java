package com.google.android.gms.c;

import com.google.android.gms.c.aw.a;

public class eh extends fb {
    private static volatile Long i = null;
    private static final Object j = new Object();

    public eh(dn dnVar, String str, String str2, a aVar, int i, int i2) {
        super(dnVar, str, str2, aVar, i, i2);
    }

    /* Access modifiers changed, original: protected */
    public void a() {
        if (i == null) {
            synchronized (j) {
                if (i == null) {
                    i = (Long) this.f.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.e) {
            this.e.A = i;
        }
    }
}
