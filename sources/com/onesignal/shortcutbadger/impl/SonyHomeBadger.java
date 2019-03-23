package com.onesignal.shortcutbadger.impl;

import android.content.AsyncQueryHandler;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.onesignal.shortcutbadger.a;
import java.util.Arrays;
import java.util.List;

public class SonyHomeBadger implements a {
    private final Uri a = Uri.parse("content://com.sonymobile.home.resourceprovider/badge");
    private AsyncQueryHandler b;

    private void a(int i, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("badge_count", Integer.valueOf(i));
        contentValues.put("package_name", str);
        contentValues.put("activity_name", str2);
        this.b.startInsert(0, null, this.a, contentValues);
    }

    private static boolean a(Context context) {
        return context.getPackageManager().resolveContentProvider("com.sonymobile.home.resourceprovider", 0) != null;
    }

    private static void b(Context context, ComponentName componentName, int i) {
        Intent intent = new Intent("com.sonyericsson.home.action.UPDATE_BADGE");
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME", componentName.getPackageName());
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME", componentName.getClassName());
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.MESSAGE", String.valueOf(i));
        intent.putExtra("com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE", i > 0);
        context.sendBroadcast(intent);
    }

    private void c(Context context, ComponentName componentName, int i) {
        if (i >= 0) {
            if (this.b == null) {
                this.b = new AsyncQueryHandler(context.getApplicationContext().getContentResolver()) {
                };
            }
            a(i, componentName.getPackageName(), componentName.getClassName());
        }
    }

    public List<String> a() {
        return Arrays.asList(new String[]{"com.sonyericsson.home"});
    }

    public void a(Context context, ComponentName componentName, int i) {
        if (a(context)) {
            c(context, componentName, i);
        } else {
            b(context, componentName, i);
        }
    }
}
