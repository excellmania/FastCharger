package com.facebook.ads.internal.util;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Environment;
import android.os.StatFs;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class a {
    private static SensorManager a = null;
    private static Sensor b = null;
    private static Sensor c = null;
    private static volatile float[] d;
    private static volatile float[] e;
    private static Map<String, String> f = new ConcurrentHashMap();
    private static String[] g = new String[]{"x", "y", "z"};

    private static class a implements SensorEventListener {
        private a() {
        }

        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.sensor == a.b) {
                a.d = sensorEvent.values;
            } else if (sensorEvent.sensor == a.c) {
                a.e = sensorEvent.values;
            }
            a.a(this);
        }
    }

    public static Map<String, String> a() {
        Map hashMap = new HashMap();
        hashMap.putAll(f);
        a(hashMap);
        return hashMap;
    }

    /* JADX WARNING: Missing block: B:6:0x001c, code skipped:
            if (a == null) goto L_0x001e;
     */
    public static synchronized void a(android.content.Context r5) {
        /*
        r1 = com.facebook.ads.internal.util.a.class;
        monitor-enter(r1);
        b(r5);	 Catch:{ all -> 0x005f }
        c(r5);	 Catch:{ all -> 0x005f }
        d(r5);	 Catch:{ all -> 0x005f }
        r0 = a;	 Catch:{ all -> 0x005f }
        if (r0 != 0) goto L_0x0020;
    L_0x0010:
        r0 = "sensor";
        r0 = r5.getSystemService(r0);	 Catch:{ all -> 0x005f }
        r0 = (android.hardware.SensorManager) r0;	 Catch:{ all -> 0x005f }
        a = r0;	 Catch:{ all -> 0x005f }
        r0 = a;	 Catch:{ all -> 0x005f }
        if (r0 != 0) goto L_0x0020;
    L_0x001e:
        monitor-exit(r1);
        return;
    L_0x0020:
        r0 = b;	 Catch:{ all -> 0x005f }
        if (r0 != 0) goto L_0x002d;
    L_0x0024:
        r0 = a;	 Catch:{ all -> 0x005f }
        r2 = 1;
        r0 = r0.getDefaultSensor(r2);	 Catch:{ all -> 0x005f }
        b = r0;	 Catch:{ all -> 0x005f }
    L_0x002d:
        r0 = c;	 Catch:{ all -> 0x005f }
        if (r0 != 0) goto L_0x003a;
    L_0x0031:
        r0 = a;	 Catch:{ all -> 0x005f }
        r2 = 4;
        r0 = r0.getDefaultSensor(r2);	 Catch:{ all -> 0x005f }
        c = r0;	 Catch:{ all -> 0x005f }
    L_0x003a:
        r0 = b;	 Catch:{ all -> 0x005f }
        if (r0 == 0) goto L_0x004c;
    L_0x003e:
        r0 = a;	 Catch:{ all -> 0x005f }
        r2 = new com.facebook.ads.internal.util.a$a;	 Catch:{ all -> 0x005f }
        r3 = 0;
        r2.<init>();	 Catch:{ all -> 0x005f }
        r3 = b;	 Catch:{ all -> 0x005f }
        r4 = 3;
        r0.registerListener(r2, r3, r4);	 Catch:{ all -> 0x005f }
    L_0x004c:
        r0 = c;	 Catch:{ all -> 0x005f }
        if (r0 == 0) goto L_0x001e;
    L_0x0050:
        r0 = a;	 Catch:{ all -> 0x005f }
        r2 = new com.facebook.ads.internal.util.a$a;	 Catch:{ all -> 0x005f }
        r3 = 0;
        r2.<init>();	 Catch:{ all -> 0x005f }
        r3 = c;	 Catch:{ all -> 0x005f }
        r4 = 3;
        r0.registerListener(r2, r3, r4);	 Catch:{ all -> 0x005f }
        goto L_0x001e;
    L_0x005f:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.internal.util.a.a(android.content.Context):void");
    }

    public static synchronized void a(a aVar) {
        synchronized (a.class) {
            if (a != null) {
                a.unregisterListener(aVar);
            }
        }
    }

    private static void a(Map<String, String> map) {
        int i;
        int i2 = 0;
        float[] fArr = d;
        float[] fArr2 = e;
        if (fArr != null) {
            int min = Math.min(g.length, fArr.length);
            for (i = 0; i < min; i++) {
                map.put("accelerometer_" + g[i], String.valueOf(fArr[i]));
            }
        }
        if (fArr2 != null) {
            i = Math.min(g.length, fArr2.length);
            while (i2 < i) {
                map.put("rotation_" + g[i2], String.valueOf(fArr2[i2]));
                i2++;
            }
        }
    }

    private static void b(Context context) {
        MemoryInfo memoryInfo = new MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        f.put("available_memory", String.valueOf(memoryInfo.availMem));
    }

    private static void c(Context context) {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        long availableBlocks = (long) statFs.getAvailableBlocks();
        f.put("free_space", String.valueOf(availableBlocks * ((long) statFs.getBlockSize())));
    }

    private static void d(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra("level", -1);
            int intExtra2 = registerReceiver.getIntExtra("scale", -1);
            int intExtra3 = registerReceiver.getIntExtra("status", -1);
            Object obj = (intExtra3 == 2 || intExtra3 == 5) ? 1 : null;
            float f = 0.0f;
            if (intExtra2 > 0) {
                f = (((float) intExtra) / ((float) intExtra2)) * 100.0f;
            }
            f.put("battery", String.valueOf(f));
            f.put("charging", obj != null ? "1" : "0");
        }
    }
}
