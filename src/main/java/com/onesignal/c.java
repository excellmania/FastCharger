package com.onesignal;

import android.content.Context;
import com.google.android.gms.ads.c.a.a;
import com.onesignal.t.d;

class c implements d {
    c() {
    }

    public String a(Context context) {
        try {
            a b = com.google.android.gms.ads.c.a.b(context);
            return b.b() ? "OptedOut" : b.a();
        } catch (Throwable th) {
            t.a(d.INFO, "Error getting Google Ad id: ", th);
            return null;
        }
    }
}
