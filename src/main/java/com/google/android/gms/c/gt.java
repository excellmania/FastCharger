package com.google.android.gms.c;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.a.b;
import com.google.android.gms.a.c;
import com.google.android.gms.c.hl.a;

@pa
public final class gt extends c<hm> {
    public gt() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    public hl a(Context context, String str, mo moVar) {
        try {
            return a.a(((hm) a(context)).a(b.a((Object) context), str, moVar, 10084000));
        } catch (RemoteException e) {
            sz.c("Could not create remote builder for AdLoader.", e);
        } catch (c.a e2) {
            sz.c("Could not create remote builder for AdLoader.", e2);
        }
        return null;
    }

    /* Access modifiers changed, original: protected */
    /* renamed from: b */
    public hm a(IBinder iBinder) {
        return hm.a.a(iBinder);
    }
}
