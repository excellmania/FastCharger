package com.google.android.gms.c;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.a.b;
import com.google.android.gms.a.c;
import com.google.android.gms.c.ny.a;

@pa
public final class od extends c<nz> {
    public od() {
        super("com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl");
    }

    public ny a(Activity activity) {
        try {
            return a.a(((nz) a((Context) activity)).a(b.a((Object) activity)));
        } catch (RemoteException e) {
            sz.c("Could not create remote InAppPurchaseManager.", e);
            return null;
        } catch (c.a e2) {
            sz.c("Could not create remote InAppPurchaseManager.", e2);
            return null;
        }
    }

    /* Access modifiers changed, original: protected */
    /* renamed from: b */
    public nz a(IBinder iBinder) {
        return nz.a.a(iBinder);
    }
}
