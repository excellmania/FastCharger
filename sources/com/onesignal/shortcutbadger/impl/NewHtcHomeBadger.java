package com.onesignal.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.onesignal.shortcutbadger.a;
import com.onesignal.shortcutbadger.b;
import java.util.Arrays;
import java.util.List;

public class NewHtcHomeBadger implements a {
    public List<String> a() {
        return Arrays.asList(new String[]{"com.htc.launcher"});
    }

    public void a(Context context, ComponentName componentName, int i) {
        Intent intent = new Intent("com.htc.launcher.action.SET_NOTIFICATION");
        intent.putExtra("com.htc.launcher.extra.COMPONENT", componentName.flattenToShortString());
        intent.putExtra("com.htc.launcher.extra.COUNT", i);
        Intent intent2 = new Intent("com.htc.launcher.action.UPDATE_SHORTCUT");
        intent2.putExtra("packagename", componentName.getPackageName());
        intent2.putExtra("count", i);
        if (com.onesignal.shortcutbadger.a.a.a(context, intent) || com.onesignal.shortcutbadger.a.a.a(context, intent2)) {
            context.sendBroadcast(intent);
            context.sendBroadcast(intent2);
            return;
        }
        throw new b("unable to resolve intent: " + intent2.toString());
    }
}
