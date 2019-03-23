package com.google.android.gms.c;

import android.view.View;
import com.google.android.gms.c.aw.a;
import com.google.android.gms.c.aw.a.b;

public class ez extends fb {
    private final View i;

    public ez(dn dnVar, String str, String str2, a aVar, int i, int i2, View view) {
        super(dnVar, str, str2, aVar, i, i2);
        this.i = view;
    }

    /* Access modifiers changed, original: protected */
    public void a() {
        if (this.i != null) {
            dq dqVar = new dq((String) this.f.invoke(null, new Object[]{this.i}));
            synchronized (this.e) {
                this.e.Y = new b();
                this.e.Y.c = dqVar.a;
            }
        }
    }
}
