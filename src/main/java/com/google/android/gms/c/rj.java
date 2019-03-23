package com.google.android.gms.c;

import android.os.RemoteException;
import com.google.android.gms.ads.d.a.a;
import com.google.android.gms.ads.d.a.b;
import com.google.android.gms.common.internal.c;

@pa
public class rj implements b {
    private final ri a;

    public rj(ri riVar) {
        this.a = riVar;
    }

    public void a(a aVar) {
        c.b("onInitializationSucceeded must be called on the main UI thread.");
        sz.b("Adapter called onInitializationSucceeded.");
        try {
            this.a.a(com.google.android.gms.a.b.a((Object) aVar));
        } catch (RemoteException e) {
            sz.c("Could not call onInitializationSucceeded.", e);
        }
    }

    public void a(a aVar, int i) {
        c.b("onAdFailedToLoad must be called on the main UI thread.");
        sz.b("Adapter called onAdFailedToLoad.");
        try {
            this.a.b(com.google.android.gms.a.b.a((Object) aVar), i);
        } catch (RemoteException e) {
            sz.c("Could not call onAdFailedToLoad.", e);
        }
    }

    public void a(a aVar, com.google.android.gms.ads.d.a aVar2) {
        c.b("onRewarded must be called on the main UI thread.");
        sz.b("Adapter called onRewarded.");
        if (aVar2 != null) {
            try {
                this.a.a(com.google.android.gms.a.b.a((Object) aVar), new rk(aVar2));
                return;
            } catch (RemoteException e) {
                sz.c("Could not call onRewarded.", e);
                return;
            }
        }
        this.a.a(com.google.android.gms.a.b.a((Object) aVar), new rk(aVar.getClass().getName(), 1));
    }

    public void b(a aVar) {
        c.b("onAdLoaded must be called on the main UI thread.");
        sz.b("Adapter called onAdLoaded.");
        try {
            this.a.b(com.google.android.gms.a.b.a((Object) aVar));
        } catch (RemoteException e) {
            sz.c("Could not call onAdLoaded.", e);
        }
    }

    public void c(a aVar) {
        c.b("onAdOpened must be called on the main UI thread.");
        sz.b("Adapter called onAdOpened.");
        try {
            this.a.c(com.google.android.gms.a.b.a((Object) aVar));
        } catch (RemoteException e) {
            sz.c("Could not call onAdOpened.", e);
        }
    }

    public void d(a aVar) {
        c.b("onVideoStarted must be called on the main UI thread.");
        sz.b("Adapter called onVideoStarted.");
        try {
            this.a.d(com.google.android.gms.a.b.a((Object) aVar));
        } catch (RemoteException e) {
            sz.c("Could not call onVideoStarted.", e);
        }
    }

    public void e(a aVar) {
        c.b("onAdClosed must be called on the main UI thread.");
        sz.b("Adapter called onAdClosed.");
        try {
            this.a.e(com.google.android.gms.a.b.a((Object) aVar));
        } catch (RemoteException e) {
            sz.c("Could not call onAdClosed.", e);
        }
    }

    public void f(a aVar) {
        c.b("onAdLeftApplication must be called on the main UI thread.");
        sz.b("Adapter called onAdLeftApplication.");
        try {
            this.a.g(com.google.android.gms.a.b.a((Object) aVar));
        } catch (RemoteException e) {
            sz.c("Could not call onAdLeftApplication.", e);
        }
    }
}
