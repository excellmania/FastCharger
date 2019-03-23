package com.google.android.gms.c;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.ads.internal.v;

@pa
public class sg extends Handler {
    public sg(Looper looper) {
        super(looper);
    }

    public void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e) {
            v.i().a(e, "AdMobHandler.handleMessage");
        }
    }
}
