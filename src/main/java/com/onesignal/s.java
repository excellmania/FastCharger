package com.onesignal;

import android.content.Context;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.onesignal.t.d;
import java.util.Locale;
import java.util.UUID;

class s {
    s() {
    }

    static String a(Context context, String str) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString(str);
        } catch (Throwable th) {
            t.a(d.ERROR, "", th);
            return null;
        }
    }

    static String a(Context context, String str, String str2) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier(str, "string", context.getPackageName());
        return identifier != 0 ? resources.getString(identifier) : str2;
    }

    static String d() {
        String language = Locale.getDefault().getLanguage();
        return language.equals("iw") ? "he" : language.equals("in") ? "id" : language.equals("ji") ? "yi" : language.equals("zh") ? language + "-" + Locale.getDefault().getCountry() : language;
    }

    /* Access modifiers changed, original: 0000 */
    public int a() {
        try {
            Class.forName("com.amazon.device.messaging.ADM");
            return 2;
        } catch (ClassNotFoundException e) {
            return 1;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public int a(int i, String str) {
        int i2 = 1;
        try {
            UUID.fromString(str);
            if ("b2f7f966-d8cc-11e4-bed1-df8f05be55ba".equals(str) || "5eb5a37e-b458-11e3-ac11-000c2940e62c".equals(str)) {
                t.a(d.WARN, "OneSignal Example AppID detected, please update to your app's id found on OneSignal.com");
            }
            if (i == 1) {
                try {
                    Class.forName("com.google.android.gms.b.a");
                } catch (ClassNotFoundException e) {
                    t.a(d.FATAL, "The GCM Google Play services client library was not found. Please make sure to include it in your project.", e);
                    i2 = -4;
                }
                try {
                    Class.forName("com.google.android.gms.common.f");
                } catch (ClassNotFoundException e2) {
                    t.a(d.FATAL, "The GooglePlayServicesUtil class part of Google Play services client library was not found. Include this in your project.", e2);
                    i2 = -4;
                }
            }
            try {
                Class.forName("android.support.v4.view.MenuCompat");
                try {
                    Class.forName("android.support.v4.content.WakefulBroadcastReceiver");
                    Class.forName("android.support.v4.app.NotificationManagerCompat");
                    return i2;
                } catch (ClassNotFoundException e22) {
                    t.a(d.FATAL, "The included Android Support Library v4 is to old or incomplete. Please update your project's android-support-v4.jar to the latest revision.", e22);
                    return -5;
                }
            } catch (ClassNotFoundException e222) {
                t.a(d.FATAL, "Could not find the Android Support Library v4. Please make sure android-support-v4.jar has been correctly added to your project.", e222);
                return -3;
            }
        } catch (Throwable e2222) {
            t.a(d.FATAL, "OneSignal AppId format is invalid.\nExample: 'b2f7f966-d8cc-11e4-bed1-df8f05be55ba'\n", e2222);
            return -999;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public Integer b() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) t.c.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return null;
        }
        int type = activeNetworkInfo.getType();
        return (type == 1 || type == 9) ? Integer.valueOf(0) : Integer.valueOf(1);
    }

    /* Access modifiers changed, original: 0000 */
    public String c() {
        String networkOperatorName = ((TelephonyManager) t.c.getSystemService("phone")).getNetworkOperatorName();
        return "".equals(networkOperatorName) ? null : networkOperatorName;
    }
}
