package com.google.android.gms.c;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.a.b;
import com.google.android.gms.a.c;
import com.google.android.gms.c.no.a;

@pa
public final class nn extends c<np> {
    public nn() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    public no a(Activity activity) {
        try {
            return a.a(((np) a((Context) activity)).a(b.a((Object) activity)));
        } catch (RemoteException e) {
            sz.c("Could not create remote AdOverlay.", e);
            return null;
        } catch (c.a e2) {
            sz.c("Could not create remote AdOverlay.", e2);
            return null;
        }
    }

    /* Access modifiers changed, original: protected */
    /* renamed from: b */
    public np a(IBinder iBinder) {
        return np.a.a(iBinder);
    }
}
