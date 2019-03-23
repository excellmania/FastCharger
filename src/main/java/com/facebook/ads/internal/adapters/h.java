package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.d.e;
import com.facebook.ads.internal.h.d;
import com.facebook.ads.internal.h.d.b;
import com.facebook.ads.internal.util.b.a;
import com.facebook.ads.internal.util.c;
import com.facebook.ads.internal.util.f;
import com.facebook.ads.internal.util.i;
import java.util.Map;
import org.json.JSONObject;

public class h extends BannerAdapter {
    private static final String a = h.class.getSimpleName();
    private d b;
    private m c;
    private BannerAdapterListener d;
    private Map<String, Object> e;
    private Context f;
    private long g;
    private a h;

    private void a(e eVar) {
        this.g = 0;
        this.h = null;
        final l a = l.a((JSONObject) this.e.get("data"));
        if (f.a(this.f, (f.a) a)) {
            this.d.onBannerError(this, AdError.NO_FILL);
            return;
        }
        this.b = new d(this.f, new b() {
            public void a() {
                h.this.c.c();
            }

            public void a(int i) {
                if (i == 0 && h.this.g > 0 && h.this.h != null) {
                    c.a(com.facebook.ads.internal.util.b.a(h.this.g, h.this.h, a.f()));
                    h.this.g = 0;
                    h.this.h = null;
                }
            }

            public void a(String str, Map<String, String> map) {
                if (h.this.d != null) {
                    h.this.d.onBannerAdClicked(h.this);
                }
                com.facebook.ads.internal.a.a a = com.facebook.ads.internal.a.b.a(h.this.f, Uri.parse(str), map);
                if (a != null) {
                    try {
                        h.this.h = a.a();
                        h.this.g = System.currentTimeMillis();
                        a.b();
                    } catch (Exception e) {
                        Log.e(h.a, "Error executing action", e);
                    }
                }
            }

            public void b() {
                if (h.this.c != null) {
                    h.this.c.a();
                }
            }
        }, eVar.e());
        this.b.a(eVar.f(), eVar.g());
        this.c = new m(this.f, this.b, new b() {
            public void d() {
                if (h.this.d != null) {
                    h.this.d.onBannerLoggingImpression(h.this);
                }
            }
        });
        this.c.a(a);
        this.b.loadDataWithBaseURL(i.a(), a.a(), "text/html", "utf-8", null);
        if (this.d != null) {
            this.d.onBannerAdLoaded(this, this.b);
        }
    }

    public void loadBannerAd(Context context, AdSize adSize, BannerAdapterListener bannerAdapterListener, Map<String, Object> map) {
        this.f = context;
        this.d = bannerAdapterListener;
        this.e = map;
        a((e) map.get("definition"));
    }

    public void onDestroy() {
        if (this.b != null) {
            i.a(this.b);
            this.b.destroy();
            this.b = null;
        }
    }
}
