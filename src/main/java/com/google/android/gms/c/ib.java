package com.google.android.gms.c;

import android.os.RemoteException;

public class ib extends com.google.android.gms.c.hl.a {
    private hj a;

    private class a extends com.google.android.gms.c.hk.a {
        private a() {
        }

        public String a() {
            return null;
        }

        public void a(gv gvVar) {
            sz.c("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
            sy.a.post(new Runnable() {
                public void run() {
                    if (ib.this.a != null) {
                        try {
                            ib.this.a.a(1);
                        } catch (RemoteException e) {
                            sz.c("Could not notify onAdFailedToLoad event.", e);
                        }
                    }
                }
            });
        }

        public boolean b() {
            return false;
        }
    }

    public hk a() {
        return new a();
    }

    public void a(hj hjVar) {
        this.a = hjVar;
    }

    public void a(hr hrVar) {
    }

    public void a(js jsVar) {
    }

    public void a(kf kfVar) {
    }

    public void a(kg kgVar) {
    }

    public void a(String str, ki kiVar, kh khVar) {
    }
}
