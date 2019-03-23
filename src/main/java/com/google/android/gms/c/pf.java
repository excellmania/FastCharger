package com.google.android.gms.c;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.c.pp.a;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.n.b;
import com.google.android.gms.common.internal.n.c;

@pa
public class pf extends n<pp> {
    final int e;

    public pf(Context context, Looper looper, b bVar, c cVar, int i) {
        super(context, looper, 8, bVar, cVar, null);
        this.e = i;
    }

    /* Access modifiers changed, original: protected */
    /* renamed from: b */
    public pp a(IBinder iBinder) {
        return a.a(iBinder);
    }

    /* Access modifiers changed, original: protected */
    public String i() {
        return "com.google.android.gms.ads.service.START";
    }

    /* Access modifiers changed, original: protected */
    public String j() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    public pp k() {
        return (pp) super.u();
    }
}
