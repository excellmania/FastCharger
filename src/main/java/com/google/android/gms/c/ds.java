package com.google.android.gms.c;

import com.google.android.gms.c.aw.a;

public class ds extends fb {
    private static volatile String i = null;
    private static final Object j = new Object();

    public ds(dn dnVar, String str, String str2, a aVar, int i, int i2) {
        super(dnVar, str, str2, aVar, i, i2);
    }

    /* Access modifiers changed, original: protected */
    public void a() {
        this.e.x = "E";
        if (i == null) {
            synchronized (j) {
                if (i == null) {
                    i = (String) this.f.invoke(null, new Object[]{this.b.a()});
                }
            }
        }
        synchronized (this.e) {
            this.e.x = ay.a(i.getBytes(), true);
        }
    }
}
