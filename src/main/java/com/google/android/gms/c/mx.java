package com.google.android.gms.c;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.c;
import com.google.android.gms.ads.mediation.d;
import com.google.android.gms.ads.mediation.e;
import com.google.android.gms.ads.mediation.f;
import com.google.android.gms.ads.mediation.g;
import com.google.android.gms.ads.mediation.h;
import com.google.android.gms.ads.mediation.i;

@pa
public final class mx implements d, f, h {
    private final mq a;
    private i b;

    public mx(mq mqVar) {
        this.a = mqVar;
    }

    public i a() {
        return this.b;
    }

    public void a(c cVar) {
        com.google.android.gms.common.internal.c.b("onAdLoaded must be called on the main UI thread.");
        sz.b("Adapter called onAdLoaded.");
        try {
            this.a.e();
        } catch (RemoteException e) {
            sz.c("Could not call onAdLoaded.", e);
        }
    }

    public void a(c cVar, int i) {
        com.google.android.gms.common.internal.c.b("onAdFailedToLoad must be called on the main UI thread.");
        sz.b("Adapter called onAdFailedToLoad with error. " + i);
        try {
            this.a.a(i);
        } catch (RemoteException e) {
            sz.c("Could not call onAdFailedToLoad.", e);
        }
    }

    public void a(e eVar) {
        com.google.android.gms.common.internal.c.b("onAdLoaded must be called on the main UI thread.");
        sz.b("Adapter called onAdLoaded.");
        try {
            this.a.e();
        } catch (RemoteException e) {
            sz.c("Could not call onAdLoaded.", e);
        }
    }

    public void a(e eVar, int i) {
        com.google.android.gms.common.internal.c.b("onAdFailedToLoad must be called on the main UI thread.");
        sz.b("Adapter called onAdFailedToLoad with error " + i + ".");
        try {
            this.a.a(i);
        } catch (RemoteException e) {
            sz.c("Could not call onAdFailedToLoad.", e);
        }
    }

    public void a(g gVar) {
        com.google.android.gms.common.internal.c.b("onAdOpened must be called on the main UI thread.");
        sz.b("Adapter called onAdOpened.");
        try {
            this.a.d();
        } catch (RemoteException e) {
            sz.c("Could not call onAdOpened.", e);
        }
    }

    public void a(g gVar, int i) {
        com.google.android.gms.common.internal.c.b("onAdFailedToLoad must be called on the main UI thread.");
        sz.b("Adapter called onAdFailedToLoad with error " + i + ".");
        try {
            this.a.a(i);
        } catch (RemoteException e) {
            sz.c("Could not call onAdFailedToLoad.", e);
        }
    }

    public void a(g gVar, i iVar) {
        com.google.android.gms.common.internal.c.b("onAdLoaded must be called on the main UI thread.");
        sz.b("Adapter called onAdLoaded.");
        this.b = iVar;
        try {
            this.a.e();
        } catch (RemoteException e) {
            sz.c("Could not call onAdLoaded.", e);
        }
    }

    public void b(c cVar) {
        com.google.android.gms.common.internal.c.b("onAdOpened must be called on the main UI thread.");
        sz.b("Adapter called onAdOpened.");
        try {
            this.a.d();
        } catch (RemoteException e) {
            sz.c("Could not call onAdOpened.", e);
        }
    }

    public void b(e eVar) {
        com.google.android.gms.common.internal.c.b("onAdOpened must be called on the main UI thread.");
        sz.b("Adapter called onAdOpened.");
        try {
            this.a.d();
        } catch (RemoteException e) {
            sz.c("Could not call onAdOpened.", e);
        }
    }

    public void b(g gVar) {
        com.google.android.gms.common.internal.c.b("onAdClosed must be called on the main UI thread.");
        sz.b("Adapter called onAdClosed.");
        try {
            this.a.b();
        } catch (RemoteException e) {
            sz.c("Could not call onAdClosed.", e);
        }
    }

    public void c(c cVar) {
        com.google.android.gms.common.internal.c.b("onAdClosed must be called on the main UI thread.");
        sz.b("Adapter called onAdClosed.");
        try {
            this.a.b();
        } catch (RemoteException e) {
            sz.c("Could not call onAdClosed.", e);
        }
    }

    public void c(e eVar) {
        com.google.android.gms.common.internal.c.b("onAdClosed must be called on the main UI thread.");
        sz.b("Adapter called onAdClosed.");
        try {
            this.a.b();
        } catch (RemoteException e) {
            sz.c("Could not call onAdClosed.", e);
        }
    }

    public void c(g gVar) {
        com.google.android.gms.common.internal.c.b("onAdLeftApplication must be called on the main UI thread.");
        sz.b("Adapter called onAdLeftApplication.");
        try {
            this.a.c();
        } catch (RemoteException e) {
            sz.c("Could not call onAdLeftApplication.", e);
        }
    }

    public void d(c cVar) {
        com.google.android.gms.common.internal.c.b("onAdLeftApplication must be called on the main UI thread.");
        sz.b("Adapter called onAdLeftApplication.");
        try {
            this.a.c();
        } catch (RemoteException e) {
            sz.c("Could not call onAdLeftApplication.", e);
        }
    }

    public void d(e eVar) {
        com.google.android.gms.common.internal.c.b("onAdLeftApplication must be called on the main UI thread.");
        sz.b("Adapter called onAdLeftApplication.");
        try {
            this.a.c();
        } catch (RemoteException e) {
            sz.c("Could not call onAdLeftApplication.", e);
        }
    }

    public void d(g gVar) {
        com.google.android.gms.common.internal.c.b("onAdClicked must be called on the main UI thread.");
        i a = a();
        if (a == null) {
            sz.e("Could not call onAdClicked since NativeAdMapper is null.");
        } else if (a.b()) {
            sz.b("Adapter called onAdClicked.");
            try {
                this.a.a();
            } catch (RemoteException e) {
                sz.c("Could not call onAdClicked.", e);
            }
        } else {
            sz.b("Could not call onAdClicked since setOverrideClickHandling is not set to true");
        }
    }

    public void e(c cVar) {
        com.google.android.gms.common.internal.c.b("onAdClicked must be called on the main UI thread.");
        sz.b("Adapter called onAdClicked.");
        try {
            this.a.a();
        } catch (RemoteException e) {
            sz.c("Could not call onAdClicked.", e);
        }
    }

    public void e(e eVar) {
        com.google.android.gms.common.internal.c.b("onAdClicked must be called on the main UI thread.");
        sz.b("Adapter called onAdClicked.");
        try {
            this.a.a();
        } catch (RemoteException e) {
            sz.c("Could not call onAdClicked.", e);
        }
    }
}
