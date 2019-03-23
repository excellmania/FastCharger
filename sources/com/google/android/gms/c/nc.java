package com.google.android.gms.c;

import android.os.RemoteException;
import com.google.ads.a.a;
import com.google.ads.mediation.d;
import com.google.ads.mediation.e;
import com.google.ads.mediation.f;
import com.google.ads.mediation.g;
import com.google.ads.mediation.h;
import com.google.ads.mediation.i;

@pa
public final class nc<NETWORK_EXTRAS extends i, SERVER_PARAMETERS extends h> implements e, g {
    private final mq a;

    public nc(mq mqVar) {
        this.a = mqVar;
    }

    public void a(d<?, ?> dVar, final a aVar) {
        String valueOf = String.valueOf(aVar);
        sz.b(new StringBuilder(String.valueOf(valueOf).length() + 47).append("Adapter called onFailedToReceiveAd with error. ").append(valueOf).toString());
        if (hf.a().b()) {
            try {
                this.a.a(nd.a(aVar));
                return;
            } catch (RemoteException e) {
                sz.c("Could not call onAdFailedToLoad.", e);
                return;
            }
        }
        sz.e("onFailedToReceiveAd must be called on the main UI thread.");
        sy.a.post(new Runnable() {
            public void run() {
                try {
                    nc.this.a.a(nd.a(aVar));
                } catch (RemoteException e) {
                    sz.c("Could not call onAdFailedToLoad.", e);
                }
            }
        });
    }

    public void a(f<?, ?> fVar, final a aVar) {
        String valueOf = String.valueOf(aVar);
        sz.b(new StringBuilder(String.valueOf(valueOf).length() + 47).append("Adapter called onFailedToReceiveAd with error ").append(valueOf).append(".").toString());
        if (hf.a().b()) {
            try {
                this.a.a(nd.a(aVar));
                return;
            } catch (RemoteException e) {
                sz.c("Could not call onAdFailedToLoad.", e);
                return;
            }
        }
        sz.e("onFailedToReceiveAd must be called on the main UI thread.");
        sy.a.post(new Runnable() {
            public void run() {
                try {
                    nc.this.a.a(nd.a(aVar));
                } catch (RemoteException e) {
                    sz.c("Could not call onAdFailedToLoad.", e);
                }
            }
        });
    }
}
