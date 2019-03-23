package com.google.android.gms.c;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.http.AndroidHttpClient;
import android.os.Build.VERSION;
import java.io.File;

public class ao {
    public static nx a(Context context) {
        return a(context, null);
    }

    public static nx a(Context context, un unVar) {
        File file = new File(context.getCacheDir(), "volley");
        String str = "volley/0";
        try {
            String packageName = context.getPackageName();
            str = new StringBuilder(String.valueOf(packageName).length() + 12).append(packageName).append("/").append(context.getPackageManager().getPackageInfo(packageName, 0).versionCode).toString();
        } catch (NameNotFoundException e) {
        }
        if (unVar == null) {
            unVar = VERSION.SDK_INT >= 9 ? new uo() : new ul(AndroidHttpClient.newInstance(str));
        }
        nx nxVar = new nx(new uk(file), new ui(unVar));
        nxVar.a();
        return nxVar;
    }
}
