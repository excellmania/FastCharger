package com.onesignal.shortcutbadger.impl;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.onesignal.shortcutbadger.a;
import java.util.Collections;
import java.util.List;

public class ZukHomeBadger implements a {
    private final Uri a = Uri.parse("content://com.android.badge/badge");

    public List<String> a() {
        return Collections.singletonList("com.zui.launcher");
    }

    @TargetApi(11)
    public void a(Context context, ComponentName componentName, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("app_badge_count", i);
        context.getContentResolver().call(this.a, "setAppBadgeCount", null, bundle);
    }
}
