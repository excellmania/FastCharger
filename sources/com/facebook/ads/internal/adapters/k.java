package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.view.View;
import com.facebook.ads.AdNetwork;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAd.Image;
import com.facebook.ads.NativeAd.Rating;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.util.h;
import com.facebook.ads.internal.util.p;
import com.flurry.android.FlurryAgent;
import com.flurry.android.ads.FlurryAdNative;
import com.flurry.android.ads.FlurryAdNativeListener;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class k extends r implements p {
    private static volatile boolean a;
    private s b;
    private FlurryAdNative c;
    private boolean d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private Image j;
    private Image k;
    private Image l;

    public List<NativeAd> A() {
        return null;
    }

    public AdNetwork B() {
        return AdNetwork.FLURRY;
    }

    public e C() {
        return e.YAHOO;
    }

    public void a() {
        if (this.c != null) {
            this.c.removeTrackingView();
        }
    }

    public void a(int i) {
    }

    public void a(final Context context, s sVar, Map<String, Object> map) {
        JSONObject jSONObject = (JSONObject) map.get("data");
        String optString = jSONObject.optString("api_key");
        String optString2 = jSONObject.optString("placement_id");
        synchronized (k.class) {
            if (!a) {
                h.a(context, p.a(C()) + " Initializing");
                FlurryAgent.setLogEnabled(true);
                FlurryAgent.init(context, optString);
                a = true;
            }
        }
        h.a(context, p.a(C()) + " Loading");
        this.b = sVar;
        this.c = new FlurryAdNative(context, optString2);
        this.c.setListener(new FlurryAdNativeListener() {
        });
        this.c.fetchAd();
    }

    public void a(View view, List<View> list) {
        if (this.c != null) {
            this.c.setTrackingView(view);
        }
    }

    public void a(Map<String, String> map) {
    }

    public void b(Map<String, String> map) {
    }

    public boolean b() {
        return this.d;
    }

    public boolean c() {
        return false;
    }

    public boolean d() {
        return false;
    }

    public boolean e() {
        return false;
    }

    public boolean f() {
        return false;
    }

    public boolean g() {
        return true;
    }

    public int h() {
        return 0;
    }

    public int i() {
        return 0;
    }

    public int j() {
        return 0;
    }

    public Image k() {
        return this.j;
    }

    public Image l() {
        return this.k;
    }

    public NativeAdViewAttributes m() {
        return null;
    }

    public String n() {
        return this.e;
    }

    public String o() {
        return this.g;
    }

    public void onDestroy() {
        a();
        this.b = null;
        if (this.c != null) {
            this.c.destroy();
            this.c = null;
        }
    }

    public String p() {
        return this.f;
    }

    public String q() {
        return this.h;
    }

    public String r() {
        return this.i;
    }

    public Rating s() {
        return null;
    }

    public Image t() {
        return this.l;
    }

    public String u() {
        return null;
    }

    public String v() {
        return "Ad";
    }

    public String w() {
        return null;
    }

    public String x() {
        return null;
    }

    public String y() {
        return null;
    }

    public String z() {
        return null;
    }
}
