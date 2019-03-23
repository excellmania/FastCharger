package com.facebook.ads.internal.h;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.widget.RelativeLayout.LayoutParams;
import com.facebook.ads.InterstitialAdActivity;
import com.facebook.ads.internal.adapters.l;
import com.facebook.ads.internal.adapters.m;
import com.facebook.ads.internal.h.j.a;
import com.facebook.ads.internal.util.b;
import com.facebook.ads.internal.util.c;
import java.util.Map;

public class i implements j {
    private static final String a = i.class.getSimpleName();
    private final a b;
    private final d c;
    private final m d;
    private l e;
    private long f = System.currentTimeMillis();
    private long g;
    private b.a h;

    public i(final InterstitialAdActivity interstitialAdActivity, a aVar) {
        this.b = aVar;
        this.c = new d(interstitialAdActivity, new d.b() {
            public void a() {
                i.this.d.c();
            }

            public void a(int i) {
            }

            public void a(String str, Map<String, String> map) {
                Uri parse = Uri.parse(str);
                if ("fbad".equals(parse.getScheme()) && "close".equals(parse.getAuthority())) {
                    interstitialAdActivity.finish();
                    return;
                }
                i.this.b.a("com.facebook.ads.interstitial.clicked");
                com.facebook.ads.internal.a.a a = com.facebook.ads.internal.a.b.a(interstitialAdActivity, parse, map);
                if (a != null) {
                    try {
                        i.this.h = a.a();
                        i.this.g = System.currentTimeMillis();
                        a.b();
                    } catch (Exception e) {
                        Log.e(i.a, "Error executing action", e);
                    }
                }
            }

            public void b() {
                i.this.d.a();
            }
        }, 1);
        this.c.setLayoutParams(new LayoutParams(-1, -1));
        this.d = new m(interstitialAdActivity, this.c, new com.facebook.ads.internal.adapters.b() {
            public void d() {
                i.this.b.a("com.facebook.ads.interstitial.impression.logged");
            }
        });
        this.d.d();
        aVar.a(this.c);
    }

    public void a() {
        this.c.onPause();
    }

    public void a(Intent intent, Bundle bundle) {
        if (bundle == null || !bundle.containsKey("dataModel")) {
            this.e = l.b(intent);
            if (this.e != null) {
                this.d.a(this.e);
                this.c.loadDataWithBaseURL(com.facebook.ads.internal.util.i.a(), this.e.a(), "text/html", "utf-8", null);
                this.c.a(this.e.g(), this.e.h());
                return;
            }
            return;
        }
        this.e = l.a(bundle.getBundle("dataModel"));
        if (this.e != null) {
            this.c.loadDataWithBaseURL(com.facebook.ads.internal.util.i.a(), this.e.a(), "text/html", "utf-8", null);
            this.c.a(this.e.g(), this.e.h());
        }
    }

    public void a(Bundle bundle) {
        if (this.e != null) {
            bundle.putBundle("dataModel", this.e.i());
        }
    }

    public void b() {
        if (!(this.g <= 0 || this.h == null || this.e == null)) {
            c.a(b.a(this.g, this.h, this.e.f()));
        }
        this.c.onResume();
    }

    public void c() {
        if (this.e != null) {
            c.a(b.a(this.f, b.a.XOUT, this.e.f()));
        }
        com.facebook.ads.internal.util.i.a(this.c);
        this.c.destroy();
    }
}
