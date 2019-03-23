package com.onesignal.shortcutbadger.impl;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.onesignal.shortcutbadger.a;
import com.onesignal.shortcutbadger.a.b;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;

public class OPPOHomeBader implements a {
    private static int a = -1;

    private Class a(String str) {
        Class cls = null;
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            return cls;
        }
    }

    private Object a(Class cls, String str, Class[] clsArr, Object[] objArr) {
        Object obj = null;
        if (cls == null || a((Object) str)) {
            return obj;
        }
        Method a = a(cls, str, clsArr);
        if (a == null) {
            return obj;
        }
        a.setAccessible(true);
        try {
            return a.invoke(null, objArr);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return obj;
        } catch (InvocationTargetException e2) {
            e2.printStackTrace();
            return obj;
        }
    }

    private Method a(Class cls, String str, Class[] clsArr) {
        Method method = null;
        if (cls == null || a((Object) str)) {
            return method;
        }
        try {
            cls.getMethods();
            cls.getDeclaredMethods();
            return cls.getDeclaredMethod(str, clsArr);
        } catch (Exception e) {
            try {
                return cls.getMethod(str, clsArr);
            } catch (Exception e2) {
                return cls.getSuperclass() != null ? a(cls.getSuperclass(), str, clsArr) : method;
            }
        }
    }

    private boolean a(Object obj) {
        return obj == null || obj.toString().equals("") || obj.toString().trim().equals("null");
    }

    private int b() {
        int i = a;
        if (i >= 0) {
            return a;
        }
        try {
            i = ((Integer) a(a("com.color.os.ColorBuild"), "getColorOSVERSION", null, null)).intValue();
        } catch (Exception e) {
            i = 0;
        }
        if (i == 0) {
            try {
                String b = b("ro.build.version.opporom");
                if (b.startsWith("V1.4")) {
                    return 3;
                }
                if (b.startsWith("V2.0")) {
                    return 4;
                }
                if (b.startsWith("V2.1")) {
                    return 5;
                }
            } catch (Exception e2) {
            }
        }
        a = i;
        return a;
    }

    private String b(String str) {
        Closeable closeable;
        Throwable th;
        Closeable closeable2 = null;
        try {
            Closeable bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
            try {
                String readLine = bufferedReader.readLine();
                bufferedReader.close();
                b.a(bufferedReader);
                return readLine;
            } catch (IOException e) {
                closeable = bufferedReader;
                b.a(closeable);
                return null;
            } catch (Throwable th2) {
                th = th2;
                closeable2 = bufferedReader;
                b.a(closeable2);
                throw th;
            }
        } catch (IOException e2) {
            closeable = null;
            b.a(closeable);
            return null;
        } catch (Throwable th3) {
            th = th3;
            b.a(closeable2);
            throw th;
        }
    }

    public List<String> a() {
        return Collections.singletonList("com.oppo.launcher");
    }

    @TargetApi(11)
    public void a(Context context, ComponentName componentName, int i) {
        if (i == 0) {
            i = -1;
        }
        Intent intent = new Intent("com.oppo.unsettledevent");
        intent.putExtra("pakeageName", componentName.getPackageName());
        intent.putExtra("number", i);
        intent.putExtra("upgradeNumber", i);
        if (com.onesignal.shortcutbadger.a.a.a(context, intent)) {
            context.sendBroadcast(intent);
        } else if (b() == 6) {
            try {
                Bundle bundle = new Bundle();
                bundle.putInt("app_badge_count", i);
                context.getContentResolver().call(Uri.parse("content://com.android.badge/badge"), "setAppBadgeCount", null, bundle);
            } catch (Throwable th) {
                com.onesignal.shortcutbadger.b bVar = new com.onesignal.shortcutbadger.b("unable to resolve intent: " + intent.toString());
            }
        }
    }
}
