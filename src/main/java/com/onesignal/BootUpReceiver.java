package com.onesignal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;

public class BootUpReceiver extends WakefulBroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        Intent intent2 = new Intent();
        intent2.setComponent(new ComponentName(context.getPackageName(), NotificationRestoreService.class.getName()));
        WakefulBroadcastReceiver.startWakefulService(context, intent2);
    }
}
