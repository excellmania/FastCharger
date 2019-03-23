package com.google.android.gms.c;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.a.b;
import com.google.android.gms.a.c;
import com.google.android.gms.c.jy.a;

@pa
public class kj extends c<jz> {
    public kj() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    public jy a(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        try {
            return a.a(((jz) a(context)).a(b.a((Object) context), b.a((Object) frameLayout), b.a((Object) frameLayout2), 10084000));
        } catch (RemoteException | c.a e) {
            sz.c("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }

    /* Access modifiers changed, original: protected */
    /* renamed from: b */
    public jz a(IBinder iBinder) {
        return jz.a.a(iBinder);
    }
}
