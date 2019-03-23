package com.onesignal;

import android.app.IntentService;
import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;

public class GcmIntentService extends IntentService {
    public GcmIntentService() {
        super("GcmIntentService");
        setIntentRedelivery(true);
    }

    /* Access modifiers changed, original: protected */
    public void onHandleIntent(Intent intent) {
        j.a(this, intent.getExtras(), null);
        WakefulBroadcastReceiver.completeWakefulIntent(intent);
    }
}
