package com.google.android.gms.c;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.c.ux.a;
import com.google.android.gms.common.api.GoogleApiClient.b;
import com.google.android.gms.common.api.GoogleApiClient.c;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.t;

public class uu extends t<ux> {
    public uu(Context context, Looper looper, o oVar, b bVar, c cVar) {
        super(context, looper, 40, oVar, bVar, cVar);
    }

    public void a(uw uwVar, ur urVar) {
        ((ux) u()).a(uwVar, urVar);
    }

    /* Access modifiers changed, original: protected */
    /* renamed from: b */
    public ux a(IBinder iBinder) {
        return a.a(iBinder);
    }

    /* Access modifiers changed, original: protected */
    public String i() {
        return "com.google.android.gms.clearcut.service.START";
    }

    /* Access modifiers changed, original: protected */
    public String j() {
        return "com.google.android.gms.clearcut.internal.IClearcutLoggerService";
    }
}
