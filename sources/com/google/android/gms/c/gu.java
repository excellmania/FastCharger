package com.google.android.gms.c;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.a.b;
import com.google.android.gms.a.c;
import com.google.android.gms.c.hn.a;

@pa
public class gu extends c<ho> {
    public gu() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    public hn a(Context context, ha haVar, String str, mo moVar, int i) {
        try {
            return a.a(((ho) a(context)).a(b.a((Object) context), haVar, str, moVar, 10084000, i));
        } catch (RemoteException | c.a e) {
            sz.a("Could not create remote AdManager.", e);
            return null;
        }
    }

    /* Access modifiers changed, original: protected */
    /* renamed from: b */
    public ho a(IBinder iBinder) {
        return ho.a.a(iBinder);
    }
}
