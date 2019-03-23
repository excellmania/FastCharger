package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import com.facebook.ads.AdError;
import com.facebook.ads.AdNetwork;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAd.Image;
import com.facebook.ads.NativeAd.Rating;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.util.b;
import com.facebook.ads.internal.util.c;
import com.facebook.ads.internal.util.e;
import com.facebook.ads.internal.util.f;
import com.facebook.ads.internal.util.f.a;
import com.facebook.ads.internal.util.h;
import com.facebook.ads.internal.util.r;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class j extends r implements a {
    private static final String a = j.class.getSimpleName();
    private String A;
    private String B;
    private int C;
    private String D;
    private String E;
    private Image F;
    private String G;
    private String H;
    private NativeAdViewAttributes I;
    private List<NativeAd> J;
    private boolean K;
    private boolean L;
    private boolean M;
    private boolean N;
    private boolean O;
    private long P = 0;
    private b.a Q = null;
    private Context b;
    private s c;
    private Uri d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private Image j;
    private Image k;
    private Rating l;
    private String m;
    private String n;
    private String o;
    private String p;
    private e q;
    private String r;
    private Collection<String> s;
    private boolean t;
    private boolean u;
    private boolean v;
    private int w;
    private int x;
    private int y;
    private int z;

    private boolean F() {
        return this.e != null && this.e.length() > 0 && this.h != null && this.h.length() > 0 && ((this.j != null || this.K) && this.k != null);
    }

    private void G() {
        if (!this.O) {
            new r().execute(new String[]{this.p});
            this.O = true;
        }
    }

    private void a(Context context, JSONObject jSONObject) {
        this.b = context;
        this.K = true;
        a(jSONObject);
    }

    private void a(String str, Map<String, String> map, Map<String, String> map2) {
        if (map2.containsKey(str)) {
            map.put(str, String.valueOf(map2.get(str)));
        }
    }

    private void a(Map<String, String> map, Map<String, String> map2) {
        a("nti", (Map) map, (Map) map2);
        a("nhs", (Map) map, (Map) map2);
        a("nmv", (Map) map, (Map) map2);
    }

    private Map<String, String> c(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        if (map.containsKey("view")) {
            hashMap.put("view", String.valueOf(map.get("view")));
        }
        if (map.containsKey("snapshot")) {
            hashMap.put("snapshot", String.valueOf(map.get("snapshot")));
        }
        return hashMap;
    }

    public List<NativeAd> A() {
        return !b() ? null : this.J;
    }

    public AdNetwork B() {
        return AdNetwork.AN;
    }

    public e C() {
        return this.q;
    }

    public String D() {
        return this.r;
    }

    public Collection<String> E() {
        return this.s;
    }

    public void a() {
    }

    public void a(int i) {
        if (b() && i == 0 && this.P > 0 && this.Q != null) {
            c.a(b.a(this.P, this.Q, this.H));
            this.P = 0;
            this.Q = null;
        }
    }

    public void a(Context context, s sVar, Map<String, Object> map) {
        this.b = context;
        this.c = sVar;
        a((JSONObject) map.get("data"));
        if (f.a(context, (a) this)) {
            sVar.a(this, AdError.NO_FILL);
            return;
        }
        if (sVar != null) {
            sVar.a(this);
        }
        b.a = this.H;
    }

    public void a(View view, List<View> list) {
    }

    public void a(Map<String, String> map) {
        if (b() && !this.N) {
            if (this.c != null) {
                this.c.b(this);
            }
            final Map hashMap = new HashMap();
            if (map != null) {
                a("mil", hashMap, (Map) map);
                a(hashMap, (Map) map);
            }
            new r(hashMap).execute(new String[]{this.m});
            if (e() || d()) {
                try {
                    final Map c = c(map);
                    new Handler().postDelayed(new Runnable() {
                        public void run() {
                            new r(hashMap, c).execute(new String[]{j.this.n});
                        }
                    }, (long) (this.w * 1000));
                } catch (Exception e) {
                }
            }
            this.N = true;
        }
    }

    public void a(JSONObject jSONObject) {
        JSONArray jSONArray = null;
        if (this.L) {
            throw new IllegalStateException("Adapter already loaded data");
        } else if (jSONObject != null) {
            h.a(this.b, "Audience Network Loaded");
            this.d = Uri.parse(jSONObject.optString("fbad_command"));
            this.e = jSONObject.optString("title");
            this.f = jSONObject.optString("subtitle");
            this.g = jSONObject.optString("body");
            this.h = jSONObject.optString("call_to_action");
            this.i = jSONObject.optString("social_context");
            this.j = Image.fromJSONObject(jSONObject.optJSONObject("icon"));
            this.k = Image.fromJSONObject(jSONObject.optJSONObject("image"));
            this.l = Rating.fromJSONObject(jSONObject.optJSONObject("star_rating"));
            this.m = jSONObject.optString("impression_report_url");
            this.n = jSONObject.optString("native_view_report_url");
            this.o = jSONObject.optString("click_report_url");
            this.p = jSONObject.optString("used_report_url");
            this.t = jSONObject.optBoolean("manual_imp");
            this.u = jSONObject.optBoolean("enable_view_log");
            this.v = jSONObject.optBoolean("enable_snapshot_log");
            this.w = jSONObject.optInt("snapshot_log_delay_second", 4);
            this.x = jSONObject.optInt("snapshot_compress_quality", 0);
            this.y = jSONObject.optInt("viewability_check_initial_delay", 0);
            this.z = jSONObject.optInt("viewability_check_interval", 1000);
            JSONObject optJSONObject = jSONObject.optJSONObject("ad_choices_icon");
            JSONObject optJSONObject2 = jSONObject.optJSONObject("native_ui_config");
            this.I = optJSONObject2 == null ? null : new NativeAdViewAttributes(optJSONObject2);
            if (optJSONObject != null) {
                this.F = Image.fromJSONObject(optJSONObject);
            }
            this.G = jSONObject.optString("ad_choices_link_url");
            this.H = jSONObject.optString("request_id");
            this.q = e.a(jSONObject.optString("invalidation_behavior"));
            this.r = jSONObject.optString("invalidation_report_url");
            try {
                jSONArray = new JSONArray(jSONObject.optString("detection_strings"));
            } catch (JSONException e) {
                e.printStackTrace();
            }
            this.s = f.a(jSONArray);
            this.A = jSONObject.optString("video_url");
            this.B = jSONObject.optString("video_mpd");
            this.C = jSONObject.optInt("video_play_report_seconds", 10) * 1000;
            this.D = jSONObject.optString("video_play_report_url");
            this.E = jSONObject.optString("video_time_report_url");
            try {
                jSONArray = jSONObject.optJSONArray("carousel");
                if (jSONArray != null && jSONArray.length() > 0) {
                    ArrayList arrayList = new ArrayList(jSONArray.length());
                    for (int i = 0; i < jSONArray.length(); i++) {
                        j jVar = new j();
                        jVar.a(this.b, jSONArray.getJSONObject(i));
                        arrayList.add(new NativeAd(this.b, jVar, null));
                    }
                    this.J = arrayList;
                }
            } catch (JSONException e2) {
                Log.e(a, "Unable to parse carousel data.", e2);
            }
            this.L = true;
            this.M = F();
        }
    }

    public void b(Map<String, String> map) {
        if (b()) {
            Map hashMap = new HashMap();
            if (map != null) {
                a("mil", hashMap, (Map) map);
                a("vrc", hashMap, (Map) map);
                a("vp", hashMap, (Map) map);
                a("vh", hashMap, (Map) map);
                a(hashMap, (Map) map);
                hashMap.put("touch", h.a((Map) map));
            }
            new r(hashMap).execute(new String[]{this.o});
            h.a(this.b, "Click logged");
            if (this.c != null) {
                this.c.c(this);
            }
            com.facebook.ads.internal.a.a a = com.facebook.ads.internal.a.b.a(this.b, this.d, map);
            if (a != null) {
                try {
                    this.P = System.currentTimeMillis();
                    this.Q = a.a();
                    a.b();
                } catch (Exception e) {
                    Log.e(a, "Error executing action", e);
                }
            }
        }
    }

    public boolean b() {
        return this.L && this.M;
    }

    public boolean c() {
        return b() && this.t;
    }

    public boolean d() {
        return b() && this.v;
    }

    public boolean e() {
        return b() && this.u;
    }

    public boolean f() {
        return b() && this.I != null;
    }

    public boolean g() {
        return true;
    }

    public int h() {
        return (this.x < 0 || this.x > 100) ? 0 : this.x;
    }

    public int i() {
        return this.y;
    }

    public int j() {
        return this.z;
    }

    public Image k() {
        return !b() ? null : this.j;
    }

    public Image l() {
        return !b() ? null : this.k;
    }

    public NativeAdViewAttributes m() {
        return !b() ? null : this.I;
    }

    public String n() {
        if (!b()) {
            return null;
        }
        G();
        return this.e;
    }

    public String o() {
        if (!b()) {
            return null;
        }
        G();
        return this.f;
    }

    public void onDestroy() {
    }

    public String p() {
        if (!b()) {
            return null;
        }
        G();
        return this.g;
    }

    public String q() {
        if (!b()) {
            return null;
        }
        G();
        return this.h;
    }

    public String r() {
        if (!b()) {
            return null;
        }
        G();
        return this.i;
    }

    public Rating s() {
        if (!b()) {
            return null;
        }
        G();
        return this.l;
    }

    public Image t() {
        return !b() ? null : this.F;
    }

    public String u() {
        return !b() ? null : this.G;
    }

    public String v() {
        return !b() ? null : "AdChoices";
    }

    public String w() {
        return !b() ? null : this.A;
    }

    public String x() {
        return !b() ? null : this.B;
    }

    public String y() {
        return !b() ? null : this.D;
    }

    public String z() {
        return !b() ? null : this.E;
    }
}
