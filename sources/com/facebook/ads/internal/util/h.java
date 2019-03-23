package com.facebook.ads.internal.util;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.PowerManager;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.RelativeLayout.LayoutParams;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.e;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;

public class h {
    private static final Uri a = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    private static final String b = h.class.getSimpleName();
    private static final Map<AdSize, e> c = new HashMap();

    public static class a {
        public String a;
        public String b;
        public boolean c;

        public a(String str, String str2, boolean z) {
            this.a = str;
            this.b = str2;
            this.c = z;
        }
    }

    static {
        c.put(AdSize.INTERSTITIAL, e.WEBVIEW_INTERSTITIAL_UNKNOWN);
        c.put(AdSize.RECTANGLE_HEIGHT_250, e.WEBVIEW_BANNER_250);
        c.put(AdSize.BANNER_HEIGHT_90, e.WEBVIEW_BANNER_90);
        c.put(AdSize.BANNER_HEIGHT_50, e.WEBVIEW_BANNER_50);
    }

    public static e a(AdSize adSize) {
        e eVar = (e) c.get(adSize);
        return eVar == null ? e.WEBVIEW_BANNER_LEGACY : eVar;
    }

    public static com.facebook.ads.internal.g.a.a a() {
        com.facebook.ads.internal.g.a.a aVar = new com.facebook.ads.internal.g.a.a();
        aVar.c(30000);
        aVar.b(3);
        return aVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0078  */
    public static com.facebook.ads.internal.util.h.a a(android.content.ContentResolver r7) {
        /*
        r6 = 0;
        r0 = 3;
        r2 = new java.lang.String[r0];	 Catch:{ Exception -> 0x0064, all -> 0x0074 }
        r0 = 0;
        r1 = "aid";
        r2[r0] = r1;	 Catch:{ Exception -> 0x0064, all -> 0x0074 }
        r0 = 1;
        r1 = "androidid";
        r2[r0] = r1;	 Catch:{ Exception -> 0x0064, all -> 0x0074 }
        r0 = 2;
        r1 = "limit_tracking";
        r2[r0] = r1;	 Catch:{ Exception -> 0x0064, all -> 0x0074 }
        r1 = a;	 Catch:{ Exception -> 0x0064, all -> 0x0074 }
        r3 = 0;
        r4 = 0;
        r5 = 0;
        r0 = r7;
        r1 = r0.query(r1, r2, r3, r4, r5);	 Catch:{ Exception -> 0x0064, all -> 0x0074 }
        if (r1 == 0) goto L_0x0025;
    L_0x001f:
        r0 = r1.moveToFirst();	 Catch:{ Exception -> 0x007e }
        if (r0 != 0) goto L_0x0033;
    L_0x0025:
        r0 = new com.facebook.ads.internal.util.h$a;	 Catch:{ Exception -> 0x007e }
        r2 = 0;
        r3 = 0;
        r4 = 0;
        r0.<init>(r2, r3, r4);	 Catch:{ Exception -> 0x007e }
        if (r1 == 0) goto L_0x0032;
    L_0x002f:
        r1.close();
    L_0x0032:
        return r0;
    L_0x0033:
        r0 = "aid";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Exception -> 0x007e }
        r2 = r1.getString(r0);	 Catch:{ Exception -> 0x007e }
        r0 = "androidid";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Exception -> 0x007e }
        r3 = r1.getString(r0);	 Catch:{ Exception -> 0x007e }
        r0 = "limit_tracking";
        r0 = r1.getColumnIndex(r0);	 Catch:{ Exception -> 0x007e }
        r0 = r1.getString(r0);	 Catch:{ Exception -> 0x007e }
        r4 = java.lang.Boolean.valueOf(r0);	 Catch:{ Exception -> 0x007e }
        r0 = new com.facebook.ads.internal.util.h$a;	 Catch:{ Exception -> 0x007e }
        r4 = r4.booleanValue();	 Catch:{ Exception -> 0x007e }
        r0.<init>(r2, r3, r4);	 Catch:{ Exception -> 0x007e }
        if (r1 == 0) goto L_0x0032;
    L_0x0060:
        r1.close();
        goto L_0x0032;
    L_0x0064:
        r0 = move-exception;
        r1 = r6;
    L_0x0066:
        r0 = new com.facebook.ads.internal.util.h$a;	 Catch:{ all -> 0x007c }
        r2 = 0;
        r3 = 0;
        r4 = 0;
        r0.<init>(r2, r3, r4);	 Catch:{ all -> 0x007c }
        if (r1 == 0) goto L_0x0032;
    L_0x0070:
        r1.close();
        goto L_0x0032;
    L_0x0074:
        r0 = move-exception;
        r1 = r6;
    L_0x0076:
        if (r1 == 0) goto L_0x007b;
    L_0x0078:
        r1.close();
    L_0x007b:
        throw r0;
    L_0x007c:
        r0 = move-exception;
        goto L_0x0076;
    L_0x007e:
        r0 = move-exception;
        goto L_0x0066;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.internal.util.h.a(android.content.ContentResolver):com.facebook.ads.internal.util.h$a");
    }

    public static Object a(Object obj, Method method, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (Exception e) {
            return null;
        }
    }

    public static String a(InputStream inputStream) {
        StringWriter stringWriter = new StringWriter();
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
        char[] cArr = new char[4096];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read != -1) {
                stringWriter.write(cArr, 0, read);
            } else {
                String stringWriter2 = stringWriter.toString();
                stringWriter.close();
                inputStreamReader.close();
                return stringWriter2;
            }
        }
    }

    public static String a(Map<String, String> map) {
        JSONObject jSONObject = new JSONObject();
        for (Entry entry : map.entrySet()) {
            try {
                jSONObject.put((String) entry.getKey(), entry.getValue());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jSONObject.toString();
    }

    public static String a(byte[] bArr) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            InputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            String a = a(gZIPInputStream);
            gZIPInputStream.close();
            byteArrayInputStream.close();
            return a;
        } catch (Exception e) {
            c.a(b.a(e, "Error decompressing data"));
            e.printStackTrace();
            return "";
        }
    }

    public static Method a(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    public static Method a(String str, String str2, Class<?>... clsArr) {
        try {
            return a(Class.forName(str), str2, (Class[]) clsArr);
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    public static void a(Context context, Uri uri) {
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.addCategory("android.intent.category.BROWSABLE");
        intent.addFlags(268435456);
        intent.putExtra("com.android.browser.application_id", context.getPackageName());
        intent.putExtra("create_new_tab", false);
        context.startActivity(intent);
    }

    public static void a(Context context, String str) {
        if (AdSettings.isTestMode(context)) {
            Log.d("FBAudienceNetworkLog", str + " (displayed for test ads only)");
        }
    }

    public static void a(DisplayMetrics displayMetrics, View view, AdSize adSize) {
        LayoutParams layoutParams = new LayoutParams(((int) (((float) displayMetrics.widthPixels) / displayMetrics.density)) >= adSize.getWidth() ? displayMetrics.widthPixels : (int) Math.ceil((double) (((float) adSize.getWidth()) * displayMetrics.density)), (int) Math.ceil((double) (((float) adSize.getHeight()) * displayMetrics.density)));
        layoutParams.addRule(14, -1);
        view.setLayoutParams(layoutParams);
    }

    public static boolean a(Context context) {
        if (context == null) {
            return true;
        }
        try {
            if (!((PowerManager) context.getSystemService("power")).isScreenOn()) {
                return false;
            }
            boolean z;
            if (context instanceof Activity) {
                Window window = ((Activity) context).getWindow();
                if (window != null) {
                    int i = window.getAttributes().flags;
                    boolean z2 = ((AccessibilityEventCompat.TYPE_WINDOWS_CHANGED & i) == 0 && (i & 524288) == 0) ? false : true;
                    z = z2;
                    return ((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode() || z;
                }
            }
            z = false;
            if (((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            }
        } catch (Exception e) {
            return false;
        }
    }

    public static byte[] a(String str) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length());
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(str.getBytes());
            gZIPOutputStream.close();
            byte[] toByteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return toByteArray;
        } catch (Exception e) {
            c.a(b.a(e, "Error compressing data"));
            e.printStackTrace();
            return new byte[0];
        }
    }
}
