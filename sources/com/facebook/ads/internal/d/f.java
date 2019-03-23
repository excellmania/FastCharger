package com.facebook.ads.internal.d;

import android.content.Context;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.c;
import com.facebook.ads.internal.d;
import com.facebook.ads.internal.e;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.q;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;

public class f {
    protected String a;
    protected AdPlacementType b;
    protected c c;
    public Context d;
    public e e;
    public boolean f;
    private c g;
    private int h;
    private AdSize i;

    public f(Context context, String str, AdSize adSize, e eVar, c cVar, int i, boolean z) {
        this.a = str;
        this.i = adSize;
        this.e = eVar;
        this.c = c.a(eVar);
        this.g = cVar;
        this.h = i;
        this.f = z;
        a(context);
    }

    private void a(Context context) {
        this.d = context;
        h.a(context);
        f();
    }

    private void a(Map<String, String> map, String str, String str2) {
        map.put(str, str2);
    }

    private static Map<String, String> b(Context context) {
        HashMap hashMap = new HashMap();
        hashMap.put("SDK", "android");
        hashMap.put("SDK_VERSION", "4.15.0");
        hashMap.put("LOCALE", Locale.getDefault().toString());
        float f = context.getResources().getDisplayMetrics().density;
        int i = context.getResources().getDisplayMetrics().widthPixels;
        int i2 = context.getResources().getDisplayMetrics().heightPixels;
        hashMap.put("DENSITY", String.valueOf(f));
        hashMap.put("SCREEN_WIDTH", String.valueOf((int) (((float) i) / f)));
        hashMap.put("SCREEN_HEIGHT", String.valueOf((int) (((float) i2) / f)));
        hashMap.put("IDFA", h.o);
        hashMap.put("IDFA_FLAG", h.p ? "0" : "1");
        hashMap.put("ATTRIBUTION_ID", h.n);
        hashMap.put("ID_SOURCE", h.q);
        hashMap.put("OS", "Android");
        hashMap.put("OSVERS", h.a);
        hashMap.put("BUNDLE", h.d);
        hashMap.put("APPNAME", h.e);
        hashMap.put("APPVERS", h.f);
        hashMap.put("APPBUILD", String.valueOf(h.g));
        hashMap.put("CARRIER", h.i);
        hashMap.put("MAKE", h.b);
        hashMap.put("MODEL", h.c);
        hashMap.put("COPPA", String.valueOf(AdSettings.isChildDirected()));
        hashMap.put("INSTALLER", h.h);
        hashMap.put("SDK_CAPABILITY", d.b());
        hashMap.put("NETWORK_TYPE", String.valueOf(q.a(context).g));
        return hashMap;
    }

    private void f() {
        if (this.c == null) {
            this.c = c.UNKNOWN;
        }
        switch (this.c) {
            case INTERSTITIAL:
                this.b = AdPlacementType.INTERSTITIAL;
                return;
            case BANNER:
                this.b = AdPlacementType.BANNER;
                return;
            case NATIVE:
                this.b = AdPlacementType.NATIVE;
                return;
            default:
                this.b = AdPlacementType.UNKNOWN;
                return;
        }
    }

    public String a() {
        return this.a;
    }

    public c b() {
        return this.c;
    }

    public AdSize c() {
        return this.i;
    }

    public int d() {
        return this.h;
    }

    public Map<String, String> e() {
        HashMap hashMap = new HashMap();
        a(hashMap, "PLACEMENT_ID", this.a);
        if (this.b != AdPlacementType.UNKNOWN) {
            a(hashMap, "PLACEMENT_TYPE", this.b.toString().toLowerCase());
        }
        for (Entry entry : b(this.d).entrySet()) {
            a(hashMap, (String) entry.getKey(), (String) entry.getValue());
        }
        if (this.i != null) {
            a(hashMap, "WIDTH", String.valueOf(this.i.getWidth()));
            a(hashMap, "HEIGHT", String.valueOf(this.i.getHeight()));
        }
        a(hashMap, "ADAPTERS", com.facebook.ads.internal.adapters.d.a(this.b));
        if (this.e != null) {
            a(hashMap, "TEMPLATE_ID", String.valueOf(this.e.a()));
        }
        if (this.g != null) {
            a(hashMap, "REQUEST_TYPE", String.valueOf(this.g.a()));
        }
        if (this.f) {
            a(hashMap, "TEST_MODE", "1");
        }
        if (this.h != 0) {
            a(hashMap, "NUM_ADS_REQUESTED", String.valueOf(this.h));
        }
        String mediationService = AdSettings.getMediationService();
        if (mediationService != null) {
            a(hashMap, "MEDIATION_SERVICE", mediationService);
        }
        a(hashMap, "CLIENT_EVENTS", com.facebook.ads.internal.util.c.a());
        return hashMap;
    }
}
