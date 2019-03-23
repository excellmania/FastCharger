package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller.SessionInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.a.b;
import com.google.android.gms.c.at;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.f;
import com.google.android.gms.common.util.g;
import com.google.android.gms.common.util.k;
import java.util.concurrent.atomic.AtomicBoolean;

public class m {
    private static boolean a = false;
    @Deprecated
    public static final int b = 10084000;
    public static boolean c = false;
    public static boolean d = false;
    static boolean e = false;
    static final AtomicBoolean f = new AtomicBoolean();
    private static final AtomicBoolean g = new AtomicBoolean();

    m() {
    }

    @Deprecated
    public static String a(int i) {
        return a.a(i);
    }

    private static void a(Context context) {
        if (!g.get()) {
            int a = ae.a(context);
            if (a == 0) {
                throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            } else if (a != b) {
                int i = b;
                String valueOf = String.valueOf("com.google.android.gms.version");
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 290).append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ").append(i).append(" but found ").append(a).append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"").append(valueOf).append("\" android:value=\"@integer/google_play_services_version\" />").toString());
            }
        }
    }

    @Deprecated
    public static boolean a() {
        return f.a();
    }

    @Deprecated
    public static boolean a(Context context, int i) {
        return com.google.android.gms.common.util.m.a(context, i);
    }

    @TargetApi(21)
    static boolean a(Context context, String str) {
        boolean equals = str.equals("com.google.android.gms");
        if (k.j()) {
            for (SessionInfo appPackageName : context.getPackageManager().getPackageInstaller().getAllSessions()) {
                if (str.equals(appPackageName.getAppPackageName())) {
                    return true;
                }
            }
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
            if (equals) {
                return applicationInfo.enabled;
            }
            boolean z = applicationInfo.enabled && !j(context);
            return z;
        } catch (NameNotFoundException e) {
            return false;
        }
    }

    @Deprecated
    public static PendingIntent b(int i, Context context, int i2) {
        return k.b().a(context, i, i2);
    }

    private static void b(Context context) {
        if (!a) {
            k(context);
        }
    }

    @Deprecated
    public static boolean b(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 9:
                return true;
            default:
                return false;
        }
    }

    @Deprecated
    public static boolean b(Context context, int i) {
        return i == 18 ? true : i == 1 ? a(context, "com.google.android.gms") : false;
    }

    @Deprecated
    public static int c(Context context) {
        PackageManager packageManager = context.getPackageManager();
        try {
            context.getResources().getString(b.common_google_play_services_unknown_issue);
        } catch (Throwable th) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            a(context);
        }
        int i = (f.b(context) || f.d(context)) ? 0 : 1;
        PackageInfo packageInfo = null;
        if (i != 0) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (NameNotFoundException e) {
                Log.w("GooglePlayServicesUtil", "Google Play Store is missing.");
                return 9;
            }
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            n a = n.a(context);
            if (i != 0) {
                if (a.a(packageInfo, d.a) == null) {
                    Log.w("GooglePlayServicesUtil", "Google Play Store signature invalid.");
                    return 9;
                }
                if (a.a(packageInfo2, a.a(packageInfo, d.a)) == null) {
                    Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                    return 9;
                }
            } else if (a.a(packageInfo2, d.a) == null) {
                Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                return 9;
            }
            if (g.a(packageInfo2.versionCode) < g.a(b)) {
                Log.w("GooglePlayServicesUtil", "Google Play services out of date.  Requires " + b + " but found " + packageInfo2.versionCode);
                return 2;
            }
            ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
            if (applicationInfo == null) {
                try {
                    applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                } catch (NameNotFoundException e2) {
                    Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.", e2);
                    return 1;
                }
            }
            return !applicationInfo.enabled ? 3 : 0;
        } catch (NameNotFoundException e3) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 1;
        }
    }

    public static boolean d(Context context) {
        b(context);
        return e;
    }

    public static boolean e(Context context) {
        return d(context) || !a();
    }

    @Deprecated
    public static void f(Context context) {
        if (!f.getAndSet(true)) {
            try {
                NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
                if (notificationManager != null) {
                    notificationManager.cancel(10436);
                }
            } catch (SecurityException e) {
            }
        }
    }

    public static Resources g(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (NameNotFoundException e) {
            return null;
        }
    }

    public static Context h(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (NameNotFoundException e) {
            return null;
        }
    }

    @Deprecated
    public static int i(Context context) {
        int i = 0;
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (NameNotFoundException e) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return i;
        }
    }

    @TargetApi(18)
    public static boolean j(Context context) {
        if (k.f()) {
            Bundle applicationRestrictions = ((UserManager) context.getSystemService("user")).getApplicationRestrictions(context.getPackageName());
            if (applicationRestrictions != null && "true".equals(applicationRestrictions.getString("restricted_profile"))) {
                return true;
            }
        }
        return false;
    }

    private static void k(Context context) {
        try {
            PackageInfo b = at.b(context).b("com.google.android.gms", 64);
            if (b != null) {
                if (n.a(context).a(b, d.a[1]) != null) {
                    e = true;
                    a = true;
                }
            }
            e = false;
            a = true;
        } catch (NameNotFoundException e) {
            Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e);
            a = true;
        } catch (Throwable th) {
            a = true;
            throw th;
        }
    }
}
