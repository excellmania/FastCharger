package com.google.android.gms.c;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.support.customtabs.CustomTabsClient;
import android.support.customtabs.CustomTabsServiceConnection;
import android.support.customtabs.CustomTabsSession;
import java.util.List;

@pa
public class jh implements ey {
    @Nullable
    private CustomTabsSession a;
    @Nullable
    private CustomTabsClient b;
    @Nullable
    private CustomTabsServiceConnection c;
    @Nullable
    private a d;

    public interface a {
    }

    public static boolean a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        List queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (queryIntentActivities == null || resolveActivity == null) {
            return false;
        }
        for (int i = 0; i < queryIntentActivities.size(); i++) {
            if (resolveActivity.activityInfo.name.equals(((ResolveInfo) queryIntentActivities.get(i)).activityInfo.name)) {
                return resolveActivity.activityInfo.packageName.equals(ev.a(context));
            }
        }
        return false;
    }

    @Nullable
    public CustomTabsSession a() {
        if (this.b == null) {
            this.a = null;
        } else if (this.a == null) {
            this.a = this.b.newSession(null);
        }
        return this.a;
    }

    public void a(Activity activity) {
        if (this.c != null) {
            activity.unbindService(this.c);
            this.b = null;
            this.a = null;
            this.c = null;
        }
    }

    public void a(a aVar) {
        this.d = aVar;
    }

    public void b(Activity activity) {
        if (this.b == null) {
            String a = ev.a(activity);
            if (a != null) {
                this.c = new ex(this);
                CustomTabsClient.bindCustomTabsService(activity, a, this.c);
            }
        }
    }
}
