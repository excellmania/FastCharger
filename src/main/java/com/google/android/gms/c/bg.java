package com.google.android.gms.c;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.c.bl.a;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.n.b;
import com.google.android.gms.common.internal.n.c;

public class bg extends n<bl> {
    public bg(Context context, Looper looper, b bVar, c cVar) {
        super(context, looper, 116, bVar, cVar, null);
    }

    /* Access modifiers changed, original: protected */
    /* renamed from: b */
    public bl a(IBinder iBinder) {
        return a.a(iBinder);
    }

    /* Access modifiers changed, original: protected */
    public String i() {
        return "com.google.android.gms.gass.START";
    }

    /* Access modifiers changed, original: protected */
    public String j() {
        return "com.google.android.gms.gass.internal.IGassService";
    }

    public bl k() {
        return (bl) super.u();
    }
}
