package com.onesignal.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.onesignal.shortcutbadger.a;
import com.onesignal.shortcutbadger.b;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;

public class XiaomiHomeBadger implements a {
    public List<String> a() {
        return Arrays.asList(new String[]{"com.miui.miuilite", "com.miui.home", "com.miui.miuihome", "com.miui.miuihome2", "com.miui.mihome", "com.miui.mihome2"});
    }

    public void a(Context context, ComponentName componentName, int i) {
        try {
            Object newInstance = Class.forName("android.app.MiuiNotification").newInstance();
            Field declaredField = newInstance.getClass().getDeclaredField("messageCount");
            declaredField.setAccessible(true);
            declaredField.set(newInstance, String.valueOf(i == 0 ? "" : Integer.valueOf(i)));
        } catch (Exception e) {
            Intent intent = new Intent("android.intent.action.APPLICATION_MESSAGE_UPDATE");
            intent.putExtra("android.intent.extra.update_application_component_name", componentName.getPackageName() + "/" + componentName.getClassName());
            intent.putExtra("android.intent.extra.update_application_message_text", String.valueOf(i == 0 ? "" : Integer.valueOf(i)));
            if (com.onesignal.shortcutbadger.a.a.a(context, intent)) {
                context.sendBroadcast(intent);
                return;
            }
            throw new b("unable to resolve intent: " + intent.toString());
        }
    }
}
