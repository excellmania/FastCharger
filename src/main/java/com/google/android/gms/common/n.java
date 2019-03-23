package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.c;

public class n {
    private static n a;
    private final Context b;

    private n(Context context) {
        this.b = context.getApplicationContext();
    }

    public static n a(Context context) {
        c.a((Object) context);
        synchronized (n.class) {
            if (a == null) {
                l.a(context);
                a = new n(context);
            }
        }
        return a;
    }

    /* Access modifiers changed, original: varargs */
    public a a(PackageInfo packageInfo, a... aVarArr) {
        int i = 0;
        if (packageInfo.signatures == null) {
            return null;
        }
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        b bVar = new b(packageInfo.signatures[0].toByteArray());
        while (i < aVarArr.length) {
            if (aVarArr[i].equals(bVar)) {
                return aVarArr[i];
            }
            i++;
        }
        return null;
    }

    public boolean a(PackageInfo packageInfo, boolean z) {
        if (!(packageInfo == null || packageInfo.signatures == null)) {
            a a;
            if (z) {
                a = a(packageInfo, d.a);
            } else {
                a = a(packageInfo, d.a[0]);
            }
            if (a != null) {
                return true;
            }
        }
        return false;
    }

    public boolean a(PackageManager packageManager, PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (a(packageInfo, false)) {
            return true;
        }
        if (!a(packageInfo, true)) {
            return false;
        }
        if (m.e(this.b)) {
            return true;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return false;
    }
}
