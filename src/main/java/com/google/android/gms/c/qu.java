package com.google.android.gms.c;

import android.os.RemoteException;
import com.google.android.gms.ads.d.a;

@pa
public class qu implements a {
    private final qq a;

    public qu(qq qqVar) {
        this.a = qqVar;
    }

    public String a() {
        String str = null;
        if (this.a == null) {
            return str;
        }
        try {
            return this.a.a();
        } catch (RemoteException e) {
            sz.c("Could not forward getType to RewardItem", e);
            return str;
        }
    }

    public int b() {
        int i = 0;
        if (this.a == null) {
            return i;
        }
        try {
            return this.a.b();
        } catch (RemoteException e) {
            sz.c("Could not forward getAmount to RewardItem", e);
            return i;
        }
    }
}
