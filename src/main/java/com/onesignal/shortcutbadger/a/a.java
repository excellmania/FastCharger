package com.onesignal.shortcutbadger.a;

import android.content.Context;
import android.content.Intent;
import java.util.List;

public class a {
    public static boolean a(Context context, Intent intent) {
        List queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        return queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0;
    }
}
