package com.onesignal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class NotificationOpenedReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        m.a(context, intent);
    }
}
