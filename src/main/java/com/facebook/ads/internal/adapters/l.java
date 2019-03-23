package com.facebook.ads.internal.adapters;

import android.content.Intent;
import android.os.Bundle;
import com.facebook.ads.InterstitialAdActivity;
import com.facebook.ads.internal.util.e;
import com.facebook.ads.internal.util.f;
import com.facebook.ads.internal.util.f.a;
import com.facebook.ads.internal.util.h;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class l implements a {
    private final String a;
    private final String b;
    private final String c;
    private final e d;
    private final String e;
    private final Collection<String> f;
    private final Map<String, String> g;
    private final String h;
    private final int i;
    private final int j;
    private final int k;

    private l(String str, String str2, String str3, e eVar, String str4, Collection<String> collection, Map<String, String> map, String str5, int i, int i2, int i3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = eVar;
        this.e = str4;
        this.f = collection;
        this.g = map;
        this.h = str5;
        this.i = i;
        this.j = i2;
        this.k = i3;
    }

    public static l a(Bundle bundle) {
        return new l(bundle.getString("markup"), null, bundle.getString("native_impression_report_url"), e.NONE, "", null, null, bundle.getString("request_id"), bundle.getInt("viewability_check_initial_delay"), bundle.getInt("viewability_check_interval"), bundle.getInt("skip_after_seconds", 0));
    }

    public static l a(JSONObject jSONObject) {
        int i = 0;
        if (jSONObject == null) {
            return null;
        }
        JSONArray jSONArray;
        String optString = jSONObject.optString("markup");
        String optString2 = jSONObject.optString("activation_command");
        String optString3 = jSONObject.optString("native_impression_report_url");
        String optString4 = jSONObject.optString("request_id");
        e a = e.a(jSONObject.optString("invalidation_behavior"));
        String optString5 = jSONObject.optString("invalidation_report_url");
        try {
            jSONArray = new JSONArray(jSONObject.optString("detection_strings"));
        } catch (JSONException e) {
            e.printStackTrace();
            jSONArray = null;
        }
        Collection a2 = f.a(jSONArray);
        JSONObject optJSONObject = jSONObject.optJSONObject("metadata");
        HashMap hashMap = new HashMap();
        if (optJSONObject != null) {
            Iterator keys = optJSONObject.keys();
            while (keys.hasNext()) {
                String str = (String) keys.next();
                hashMap.put(str, optJSONObject.optString(str));
            }
        }
        int i2 = 1000;
        int parseInt = hashMap.containsKey("viewability_check_initial_delay") ? Integer.parseInt((String) hashMap.get("viewability_check_initial_delay")) : 0;
        if (hashMap.containsKey("viewability_check_interval")) {
            i2 = Integer.parseInt((String) hashMap.get("viewability_check_interval"));
        }
        if (hashMap.containsKey("skip_after_seconds")) {
            i = Integer.parseInt((String) hashMap.get("skip_after_seconds"));
        }
        return new l(optString, optString2, optString3, a, optString5, a2, hashMap, optString4, parseInt, i2, i);
    }

    public static l b(Intent intent) {
        return new l(h.a(intent.getByteArrayExtra("markup")), intent.getStringExtra("activation_command"), intent.getStringExtra("native_impression_report_url"), e.NONE, "", null, null, intent.getStringExtra("request_id"), intent.getIntExtra("viewability_check_initial_delay", 0), intent.getIntExtra("viewability_check_interval", 1000), intent.getIntExtra(InterstitialAdActivity.SKIP_DELAY_SECONDS_KEY, 0));
    }

    public e C() {
        return this.d;
    }

    public String D() {
        return this.e;
    }

    public Collection<String> E() {
        return this.f;
    }

    public String a() {
        return this.a;
    }

    public void a(Intent intent) {
        intent.putExtra("markup", h.a(this.a));
        intent.putExtra("activation_command", this.b);
        intent.putExtra("native_impression_report_url", this.c);
        intent.putExtra("request_id", this.h);
        intent.putExtra("viewability_check_initial_delay", this.i);
        intent.putExtra("viewability_check_interval", this.j);
        intent.putExtra(InterstitialAdActivity.SKIP_DELAY_SECONDS_KEY, this.k);
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return "facebookAd.sendImpression();";
    }

    public Map<String, String> e() {
        return this.g;
    }

    public String f() {
        return this.h;
    }

    public int g() {
        return this.i;
    }

    public int h() {
        return this.j;
    }

    public Bundle i() {
        Bundle bundle = new Bundle();
        bundle.putString("markup", this.a);
        bundle.putString("native_impression_report_url", this.c);
        bundle.putString("request_id", this.h);
        bundle.putInt("viewability_check_initial_delay", this.i);
        bundle.putInt("viewability_check_interval", this.j);
        bundle.putInt("skip_after_seconds", this.k);
        return bundle;
    }
}
