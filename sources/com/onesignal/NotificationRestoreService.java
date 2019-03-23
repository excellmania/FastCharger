package com.onesignal;

import android.app.IntentService;
import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;

public class NotificationRestoreService extends IntentService {
    public NotificationRestoreService() {
        super("NotificationRestoreService");
        setIntentRedelivery(true);
    }

    /* Access modifiers changed, original: protected */
    public void onHandleIntent(Intent intent) {
        n.b(this);
        WakefulBroadcastReceiver.completeWakefulIntent(intent);
    }
}
