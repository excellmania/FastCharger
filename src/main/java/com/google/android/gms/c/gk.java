package com.google.android.gms.c;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.c.go.a;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.n.b;
import com.google.android.gms.common.internal.n.c;

@pa
public class gk extends n<go> {
    gk(Context context, Looper looper, b bVar, c cVar) {
        super(context, looper, 123, bVar, cVar, null);
    }

    /* Access modifiers changed, original: protected */
    /* renamed from: b */
    public go a(IBinder iBinder) {
        return a.a(iBinder);
    }

    /* Access modifiers changed, original: protected */
    public String i() {
        return "com.google.android.gms.ads.service.CACHE";
    }

    /* Access modifiers changed, original: protected */
    public String j() {
        return "com.google.android.gms.ads.internal.cache.ICacheService";
    }

    public go k() {
        return (go) super.u();
    }
}
