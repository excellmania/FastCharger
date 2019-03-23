package com.onesignal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.WakefulBroadcastReceiver;

public class GcmBroadcastReceiver extends WakefulBroadcastReceiver {
    private static void a(Context context, Intent intent, Bundle bundle) {
        if (a(intent) && !j.a(context, bundle)) {
            Intent intent2 = new Intent();
            intent2.putExtra("json_payload", j.b(bundle).toString());
            intent2.setComponent(new ComponentName(context.getPackageName(), GcmIntentService.class.getName()));
            WakefulBroadcastReceiver.startWakefulService(context, intent2);
        }
    }

    private static boolean a(Intent intent) {
        if (!"com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction())) {
            return false;
        }
        String stringExtra = intent.getStringExtra("message_type");
        return stringExtra == null || "gcm".equals(stringExtra);
    }

    public void onReceive(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null && !"google.com/iid".equals(extras.getString("from"))) {
            a(context, intent, extras);
            setResultCode(-1);
        }
    }
}
