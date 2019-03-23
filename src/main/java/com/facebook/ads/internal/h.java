package com.facebook.ads.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.support.annotation.Nullable;
import java.util.Iterator;
import org.json.JSONObject;

public class h {
    private static h a;
    private final SharedPreferences b;

    public h(Context context) {
        this.b = context.getApplicationContext().getSharedPreferences("com.facebook.ads.FEATURE_CONFIG", 0);
    }

    public static boolean a(Context context) {
        return e(context).a("enable_overlapping_view_check", false);
    }

    public static long b(Context context) {
        return e(context).a("ad_clickability_threshold_ms", 0);
    }

    public static boolean c(Context context) {
        return e(context).a("adnw_android_video_caching_enabled", false);
    }

    public static boolean d(Context context) {
        return e(context).a("adnw_enable_exoplayer", false);
    }

    private static h e(Context context) {
        if (a == null) {
            synchronized (h.class) {
                if (a == null) {
                    a = new h(context);
                }
            }
        }
        return a;
    }

    public long a(String str, long j) {
        String string = this.b.getString(str, String.valueOf(j));
        return (string == null || string.equals("null")) ? j : Long.valueOf(string).longValue();
    }

    public void a(@Nullable String str) {
        if (str != null && !str.isEmpty() && !str.equals("[]")) {
            Editor edit = this.b.edit();
            JSONObject jSONObject = new JSONObject(str);
            Iterator keys = jSONObject.keys();
            while (keys.hasNext()) {
                String str2 = (String) keys.next();
                edit.putString(str2, jSONObject.getString(str2));
            }
            edit.commit();
        }
    }

    public boolean a(String str, boolean z) {
        String string = this.b.getString(str, String.valueOf(z));
        return (string == null || string.equals("null")) ? z : Boolean.valueOf(string).booleanValue();
    }
}
