package com.onesignal.shortcutbadger;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.util.Log;
import com.onesignal.shortcutbadger.impl.AdwHomeBadger;
import com.onesignal.shortcutbadger.impl.ApexHomeBadger;
import com.onesignal.shortcutbadger.impl.AsusHomeLauncher;
import com.onesignal.shortcutbadger.impl.DefaultBadger;
import com.onesignal.shortcutbadger.impl.HuaweiHomeBadger;
import com.onesignal.shortcutbadger.impl.NewHtcHomeBadger;
import com.onesignal.shortcutbadger.impl.NovaHomeBadger;
import com.onesignal.shortcutbadger.impl.OPPOHomeBader;
import com.onesignal.shortcutbadger.impl.SamsungHomeBadger;
import com.onesignal.shortcutbadger.impl.SonyHomeBadger;
import com.onesignal.shortcutbadger.impl.XiaomiHomeBadger;
import com.onesignal.shortcutbadger.impl.ZukHomeBadger;
import java.util.LinkedList;
import java.util.List;

public final class c {
    private static final List<Class<? extends a>> a = new LinkedList();
    private static a b;
    private static ComponentName c;

    static {
        a.add(AdwHomeBadger.class);
        a.add(ApexHomeBadger.class);
        a.add(NewHtcHomeBadger.class);
        a.add(NovaHomeBadger.class);
        a.add(SonyHomeBadger.class);
        a.add(XiaomiHomeBadger.class);
        a.add(AsusHomeLauncher.class);
        a.add(HuaweiHomeBadger.class);
        a.add(OPPOHomeBader.class);
        a.add(SamsungHomeBadger.class);
        a.add(ZukHomeBadger.class);
    }

    public static void a(Context context, int i) {
        if (b != null || a(context)) {
            try {
                b.a(context, c, i);
                return;
            } catch (Exception e) {
                throw new b("Unable to execute badge", e);
            }
        }
        throw new b("No default launcher available");
    }

    private static boolean a(Context context) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        if (launchIntentForPackage == null) {
            Log.e("ShortcutBadger", "Unable to find launch intent for package " + context.getPackageName());
            return false;
        }
        c = launchIntentForPackage.getComponent();
        launchIntentForPackage = new Intent("android.intent.action.MAIN");
        launchIntentForPackage.addCategory("android.intent.category.HOME");
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(launchIntentForPackage, 65536);
        if (resolveActivity == null || resolveActivity.activityInfo.name.toLowerCase().contains("resolver")) {
            return false;
        }
        String str = resolveActivity.activityInfo.packageName;
        for (Class newInstance : a) {
            a aVar;
            try {
                aVar = (a) newInstance.newInstance();
            } catch (Exception e) {
                aVar = null;
            }
            if (aVar != null && aVar.a().contains(str)) {
                b = aVar;
                break;
            }
        }
        if (b == null) {
            if (Build.MANUFACTURER.equalsIgnoreCase("Xiaomi")) {
                b = new XiaomiHomeBadger();
            } else if (Build.MANUFACTURER.equalsIgnoreCase("ZUK")) {
                b = new ZukHomeBadger();
            } else if (Build.MANUFACTURER.equalsIgnoreCase("OPPO")) {
                b = new OPPOHomeBader();
            } else {
                b = new DefaultBadger();
            }
        }
        return true;
    }
}
