package com.google.android.gms.ads.internal.purchase;

import android.content.Intent;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.sz;

@pa
public class k {
    private final String a;

    public k(String str) {
        this.a = str;
    }

    public String a() {
        return v.e().d();
    }

    public boolean a(String str, int i, Intent intent) {
        if (str == null || intent == null) {
            return false;
        }
        String b = v.s().b(intent);
        String c = v.s().c(intent);
        if (b == null || c == null) {
            return false;
        }
        if (!str.equals(v.s().a(b))) {
            sz.e("Developer payload not match.");
            return false;
        } else if (this.a == null || l.a(this.a, b, c)) {
            return true;
        } else {
            sz.e("Fail to verify signature.");
            return false;
        }
    }
}
