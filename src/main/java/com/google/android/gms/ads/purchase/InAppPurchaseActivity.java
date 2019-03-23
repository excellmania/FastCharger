package com.google.android.gms.ads.purchase;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.c.hf;
import com.google.android.gms.c.ny;
import com.google.android.gms.c.sz;

public class InAppPurchaseActivity extends Activity {
    private ny a;

    /* Access modifiers changed, original: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        try {
            if (this.a != null) {
                this.a.a(i, i2, intent);
            }
        } catch (RemoteException e) {
            sz.c("Could not forward onActivityResult to in-app purchase manager:", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = hf.b().a((Activity) this);
        if (this.a == null) {
            sz.e("Could not create in-app purchase manager.");
            finish();
            return;
        }
        try {
            this.a.a();
        } catch (RemoteException e) {
            sz.c("Could not forward onCreate to in-app purchase manager:", e);
            finish();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onDestroy() {
        try {
            if (this.a != null) {
                this.a.b();
            }
        } catch (RemoteException e) {
            sz.c("Could not forward onDestroy to in-app purchase manager:", e);
        }
        super.onDestroy();
    }
}
