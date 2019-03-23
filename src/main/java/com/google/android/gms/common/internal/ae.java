package com.google.android.gms.common.internal;

import android.content.Context;

public class ae {
    private static Object a = new Object();
    private static boolean b;
    private static String c;
    private static int d;

    public static int a(Context context) {
        b(context);
        return d;
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    private static void b(android.content.Context r4) {
        /*
        r1 = a;
        monitor-enter(r1);
        r0 = b;	 Catch:{ all -> 0x0020 }
        if (r0 == 0) goto L_0x0009;
    L_0x0007:
        monitor-exit(r1);	 Catch:{ all -> 0x0020 }
    L_0x0008:
        return;
    L_0x0009:
        r0 = 1;
        b = r0;	 Catch:{ all -> 0x0020 }
        r0 = r4.getPackageName();	 Catch:{ all -> 0x0020 }
        r2 = com.google.android.gms.c.at.b(r4);	 Catch:{ all -> 0x0020 }
        r3 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        r0 = r2.a(r0, r3);	 Catch:{ NameNotFoundException -> 0x0035 }
        r0 = r0.metaData;	 Catch:{ NameNotFoundException -> 0x0035 }
        if (r0 != 0) goto L_0x0023;
    L_0x001e:
        monitor-exit(r1);	 Catch:{ all -> 0x0020 }
        goto L_0x0008;
    L_0x0020:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0020 }
        throw r0;
    L_0x0023:
        r2 = "com.google.app.id";
        r2 = r0.getString(r2);	 Catch:{ NameNotFoundException -> 0x0035 }
        c = r2;	 Catch:{ NameNotFoundException -> 0x0035 }
        r2 = "com.google.android.gms.version";
        r0 = r0.getInt(r2);	 Catch:{ NameNotFoundException -> 0x0035 }
        d = r0;	 Catch:{ NameNotFoundException -> 0x0035 }
    L_0x0033:
        monitor-exit(r1);	 Catch:{ all -> 0x0020 }
        goto L_0x0008;
    L_0x0035:
        r0 = move-exception;
        r2 = "MetadataValueReader";
        r3 = "This should never happen.";
        android.util.Log.wtf(r2, r3, r0);	 Catch:{ all -> 0x0020 }
        goto L_0x0033;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.ae.b(android.content.Context):void");
    }
}
