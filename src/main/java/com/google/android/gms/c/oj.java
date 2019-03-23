package com.google.android.gms.c;

import android.content.Context;
import android.util.DisplayMetrics;
import com.google.android.gms.c.rv.a;

@pa
public class oj extends oh {
    private oi g;

    oj(Context context, a aVar, tr trVar, ol.a aVar2) {
        super(context, aVar, trVar, aVar2);
    }

    /* Access modifiers changed, original: protected */
    public void b() {
        int i;
        int i2;
        ha k = this.c.k();
        if (k.e) {
            DisplayMetrics displayMetrics = this.b.getResources().getDisplayMetrics();
            i = displayMetrics.widthPixels;
            i2 = displayMetrics.heightPixels;
        } else {
            i = k.g;
            i2 = k.d;
        }
        this.g = new oi(this, this.c, i, i2);
        this.c.l().a((ts.a) this);
        this.g.a(this.e);
    }

    /* Access modifiers changed, original: protected */
    public int c() {
        if (!this.g.c()) {
            return !this.g.d() ? 2 : -2;
        } else {
            sz.b("Ad-Network indicated no fill with passback URL.");
            return 3;
        }
    }
}
