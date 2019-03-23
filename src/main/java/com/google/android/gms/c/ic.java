package com.google.android.gms.c;

import android.os.RemoteException;
import com.google.android.gms.c.hn.a;

public class ic extends a {
    private hj a;

    public String F() {
        return null;
    }

    public void G() {
    }

    public void a(ha haVar) {
    }

    public void a(hi hiVar) {
    }

    public void a(hj hjVar) {
        this.a = hjVar;
    }

    public void a(hp hpVar) {
    }

    public void a(hr hrVar) {
    }

    public void a(ii iiVar) {
    }

    public void a(jf jfVar) {
    }

    public void a(nw nwVar) {
    }

    public void a(ob obVar, String str) {
    }

    public void a(qt qtVar) {
    }

    public void a(String str) {
    }

    public void a(boolean z) {
    }

    public boolean a(gv gvVar) {
        sz.c("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        sy.a.post(new Runnable() {
            public void run() {
                if (ic.this.a != null) {
                    try {
                        ic.this.a.a(1);
                    } catch (RemoteException e) {
                        sz.c("Could not notify onAdFailedToLoad event.", e);
                    }
                }
            }
        });
        return false;
    }

    public void i() {
    }

    public com.google.android.gms.a.a j() {
        return null;
    }

    public ha k() {
        return null;
    }

    public boolean l() {
        return false;
    }

    public void m() {
    }

    public void n() {
    }

    public void o() {
    }

    public void p() {
    }

    public boolean q() {
        return false;
    }

    public hu r() {
        return null;
    }
}
