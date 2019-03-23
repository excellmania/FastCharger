package com.onesignal;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.support.v4.app.NotificationCompat.Extender;

public abstract class k extends IntentService {

    public static class a {
        public Extender a;
        public Integer b;
    }

    static Intent a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent().setAction("com.onesignal.NotificationExtender").setPackage(context.getPackageName());
        return packageManager.queryIntentServices(intent, 128).size() < 1 ? null : intent;
    }
}
