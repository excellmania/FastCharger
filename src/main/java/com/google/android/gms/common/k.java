package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.c.at;
import com.google.android.gms.common.internal.x;
import com.google.android.gms.common.util.f;

public class k {
    private static final k a = new k();
    public static final int b = m.b;

    k() {
    }

    public static k b() {
        return a;
    }

    static String b(@Nullable Context context, @Nullable String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("gcore_");
        stringBuilder.append(b);
        stringBuilder.append("-");
        if (!TextUtils.isEmpty(str)) {
            stringBuilder.append(str);
        }
        stringBuilder.append("-");
        if (context != null) {
            stringBuilder.append(context.getPackageName());
        }
        stringBuilder.append("-");
        if (context != null) {
            try {
                stringBuilder.append(at.b(context).b(context.getPackageName(), 0).versionCode);
            } catch (NameNotFoundException e) {
            }
        }
        return stringBuilder.toString();
    }

    public int a(Context context) {
        int c = m.c(context);
        return m.b(context, c) ? 18 : c;
    }

    @Nullable
    public PendingIntent a(Context context, int i, int i2) {
        return a(context, i, i2, null);
    }

    @Nullable
    public PendingIntent a(Context context, int i, int i2, @Nullable String str) {
        Intent b = b(context, i, str);
        return b == null ? null : PendingIntent.getActivity(context, i2, b, 268435456);
    }

    public boolean a(int i) {
        return m.b(i);
    }

    public boolean a(Context context, String str) {
        return m.a(context, str);
    }

    public int b(Context context) {
        return m.i(context);
    }

    @Nullable
    @Deprecated
    public Intent b(int i) {
        return b(null, i, null);
    }

    @Nullable
    public Intent b(Context context, int i, @Nullable String str) {
        switch (i) {
            case 1:
            case 2:
                return (context == null || !f.b(context)) ? x.a("com.google.android.gms", b(context, str)) : x.a();
            case 3:
                return x.a("com.google.android.gms");
            default:
                return null;
        }
    }

    public boolean b(Context context, int i) {
        return m.b(context, i);
    }

    public String c(int i) {
        return m.a(i);
    }

    public void d(Context context) {
        m.f(context);
    }
}
