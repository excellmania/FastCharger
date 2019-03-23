package com.google.android.gms.c;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.b;
import com.google.android.gms.a.c;
import com.google.android.gms.common.k;

public final class fg extends c<fi> {
    private static final fg a = new fg();

    private fg() {
        super("com.google.android.gms.ads.adshield.AdShieldCreatorImpl");
    }

    public static fh a(String str, Context context, boolean z) {
        if (k.b().a(context) == 0) {
            fh b = a.b(str, context, z);
            if (b != null) {
                return b;
            }
        }
        return new ff(str, context, z);
    }

    private fh b(String str, Context context, boolean z) {
        IBinder a;
        a a2 = b.a((Object) context);
        if (z) {
            try {
                a = ((fi) a(context)).a(str, a2);
            } catch (RemoteException | c.a e) {
                return null;
            }
        }
        a = ((fi) a(context)).b(str, a2);
        return fh.a.a(a);
    }

    /* Access modifiers changed, original: protected */
    /* renamed from: b */
    public fi a(IBinder iBinder) {
        return fi.a.a(iBinder);
    }
}
