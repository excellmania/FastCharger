package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.c.be;
import java.util.concurrent.Callable;

public class b {
    private static SharedPreferences a = null;

    public static SharedPreferences a(final Context context) {
        SharedPreferences sharedPreferences;
        synchronized (SharedPreferences.class) {
            if (a == null) {
                a = (SharedPreferences) be.a(new Callable<SharedPreferences>() {
                    /* renamed from: a */
                    public SharedPreferences call() {
                        return context.getSharedPreferences("google_sdk_flags", 1);
                    }
                });
            }
            sharedPreferences = a;
        }
        return sharedPreferences;
    }
}
