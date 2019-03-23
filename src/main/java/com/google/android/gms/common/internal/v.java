package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;

public abstract class v {
    private static final Object a = new Object();
    private static v b;

    public static v a(Context context) {
        synchronized (a) {
            if (b == null) {
                b = new w(context.getApplicationContext());
            }
        }
        return b;
    }

    public abstract boolean a(String str, String str2, ServiceConnection serviceConnection, String str3);

    public abstract void b(String str, String str2, ServiceConnection serviceConnection, String str3);
}
