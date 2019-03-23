package com.onesignal.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.onesignal.shortcutbadger.a;
import com.onesignal.shortcutbadger.b;
import java.util.Arrays;
import java.util.List;

public class ApexHomeBadger implements a {
    public List<String> a() {
        return Arrays.asList(new String[]{"com.anddoes.launcher"});
    }

    public void a(Context context, ComponentName componentName, int i) {
        Intent intent = new Intent("com.anddoes.launcher.COUNTER_CHANGED");
        intent.putExtra("package", componentName.getPackageName());
        intent.putExtra("count", i);
        intent.putExtra("class", componentName.getClassName());
        if (com.onesignal.shortcutbadger.a.a.a(context, intent)) {
            context.sendBroadcast(intent);
            return;
        }
        throw new b("unable to resolve intent: " + intent.toString());
    }
}
