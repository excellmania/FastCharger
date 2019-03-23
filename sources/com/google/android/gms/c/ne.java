package com.google.android.gms.c;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.support.customtabs.CustomTabsIntent;
import android.support.customtabs.CustomTabsIntent.Builder;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.j;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.ads.mediation.a;
import com.google.android.gms.ads.mediation.e;
import com.google.android.gms.ads.mediation.f;

@pa
public class ne implements e {
    private Activity a;
    private jh b;
    private f c;
    private Uri d;

    public static boolean a(Context context) {
        return jh.a(context);
    }

    public void onDestroy() {
        sz.b("Destroying AdMobCustomTabsAdapter adapter.");
        try {
            this.b.a(this.a);
        } catch (Exception e) {
            sz.b("Exception while unbinding from CustomTabsService.", e);
        }
    }

    public void onPause() {
        sz.b("Pausing AdMobCustomTabsAdapter adapter.");
    }

    public void onResume() {
        sz.b("Resuming AdMobCustomTabsAdapter adapter.");
    }

    public void requestInterstitialAd(Context context, f fVar, Bundle bundle, a aVar, Bundle bundle2) {
        this.c = fVar;
        if (this.c == null) {
            sz.e("Listener not set for mediation. Returning.");
        } else if (!(context instanceof Activity)) {
            sz.e("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.c.a(this, 0);
        } else if (a(context)) {
            String string = bundle.getString("tab_url");
            if (TextUtils.isEmpty(string)) {
                sz.e("The tab_url retrieved from mediation metadata is empty. Bailing out.");
                this.c.a(this, 0);
                return;
            }
            this.a = (Activity) context;
            this.d = Uri.parse(string);
            this.b = new jh();
            this.b.a(new jh.a(this) {
            });
            this.b.b(this.a);
            this.c.a(this);
        } else {
            sz.e("Default browser does not support custom tabs. Bailing out.");
            this.c.a(this, 0);
        }
    }

    public void showInterstitial() {
        CustomTabsIntent build = new Builder(this.b.a()).build();
        build.intent.setData(this.d);
        final AdOverlayInfoParcel adOverlayInfoParcel = new AdOverlayInfoParcel(new com.google.android.gms.ads.internal.overlay.e(build.intent), null, new j() {
            public void a() {
                sz.b("AdMobCustomTabsAdapter overlay is closed.");
                ne.this.c.c(ne.this);
                ne.this.b.a(ne.this.a);
            }

            public void b() {
                sz.b("AdMobCustomTabsAdapter overlay is paused.");
            }

            public void c() {
                sz.b("AdMobCustomTabsAdapter overlay is resumed.");
            }

            public void d() {
                sz.b("Opening AdMobCustomTabsAdapter overlay.");
                ne.this.c.b(ne.this);
            }
        }, null, new tc(0, 0, false));
        sj.a.post(new Runnable() {
            public void run() {
                v.c().a(ne.this.a, adOverlayInfoParcel);
            }
        });
        v.i().d(false);
    }
}
