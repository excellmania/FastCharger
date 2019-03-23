package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.facebook.ads.AdError;
import com.facebook.ads.AdNetwork;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAd.Image;
import com.facebook.ads.NativeAd.Rating;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.util.h;
import com.facebook.ads.internal.util.p;
import com.inmobi.ads.InMobiNative;
import com.inmobi.ads.InMobiNative.NativeAdListener;
import com.inmobi.sdk.InMobiSdk;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class n extends r implements p {
    private s a;
    private InMobiNative b;
    private boolean c;
    private View d;
    private String e;
    private String f;
    private String g;
    private Image h;
    private Image i;

    public List<NativeAd> A() {
        return null;
    }

    public AdNetwork B() {
        return AdNetwork.INMOBI;
    }

    public e C() {
        return e.INMOBI;
    }

    public void a() {
        if (b()) {
            InMobiNative inMobiNative = this.b;
            InMobiNative.unbind(this.d);
        }
        this.d = null;
    }

    public void a(int i) {
    }

    public void a(final Context context, s sVar, Map<String, Object> map) {
        h.a(context, p.a(C()) + " Loading");
        JSONObject jSONObject = (JSONObject) map.get("data");
        String optString = jSONObject.optString("account_id");
        Long valueOf = Long.valueOf(jSONObject.optLong("placement_id"));
        if (TextUtils.isEmpty(optString) || valueOf == null) {
            sVar.a(this, AdError.MEDIATION_ERROR);
            return;
        }
        this.a = sVar;
        InMobiSdk.init(context, optString);
        this.b = new InMobiNative(valueOf.longValue(), new NativeAdListener() {
        });
        this.b.load();
    }

    public void a(View view, List<View> list) {
        this.d = view;
        if (b()) {
            InMobiNative inMobiNative = this.b;
            InMobiNative.bind(this.d, this.b);
        }
    }

    public void a(Map<String, String> map) {
    }

    public void b(Map<String, String> map) {
        if (b()) {
            this.a.c(this);
            this.b.reportAdClickAndOpenLandingPage(null);
        }
    }

    public boolean b() {
        return this.b != null && this.c;
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
        return this.h;
    }

    public Image l() {
        return this.i;
    }

    public NativeAdViewAttributes m() {
        return null;
    }

    public String n() {
        return this.e;
    }

    public String o() {
        return null;
    }

    public void onDestroy() {
        a();
        this.b = null;
        this.a = null;
    }

    public String p() {
        return this.f;
    }

    public String q() {
        return this.g;
    }

    public String r() {
        return null;
    }

    public Rating s() {
        return null;
    }

    public Image t() {
        return null;
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
