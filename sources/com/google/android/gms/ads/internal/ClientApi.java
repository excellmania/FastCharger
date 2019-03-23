package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.Keep;
import android.support.annotation.Nullable;
import android.widget.FrameLayout;
import com.google.android.gms.a.b;
import com.google.android.gms.ads.internal.overlay.g;
import com.google.android.gms.ads.internal.purchase.e;
import com.google.android.gms.c.ha;
import com.google.android.gms.c.hl;
import com.google.android.gms.c.hn;
import com.google.android.gms.c.hq.a;
import com.google.android.gms.c.hs;
import com.google.android.gms.c.is;
import com.google.android.gms.c.ju;
import com.google.android.gms.c.jy;
import com.google.android.gms.c.lq;
import com.google.android.gms.c.mo;
import com.google.android.gms.c.no;
import com.google.android.gms.c.ny;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.qo;
import com.google.android.gms.c.qr;
import com.google.android.gms.c.tc;
import com.google.android.gms.common.util.DynamiteApi;

@Keep
@pa
@DynamiteApi
public class ClientApi extends a {
    public hl createAdLoaderBuilder(com.google.android.gms.a.a aVar, String str, mo moVar, int i) {
        return new k((Context) b.a(aVar), str, moVar, new tc(10084000, i, true), d.a());
    }

    public no createAdOverlay(com.google.android.gms.a.a aVar) {
        return new g((Activity) b.a(aVar));
    }

    public hn createBannerAdManager(com.google.android.gms.a.a aVar, ha haVar, String str, mo moVar, int i) {
        return new f((Context) b.a(aVar), haVar, str, moVar, new tc(10084000, i, true), d.a());
    }

    public ny createInAppPurchaseManager(com.google.android.gms.a.a aVar) {
        return new e((Activity) b.a(aVar));
    }

    public hn createInterstitialAdManager(com.google.android.gms.a.a aVar, ha haVar, String str, mo moVar, int i) {
        Context context = (Context) b.a(aVar);
        is.a(context);
        tc tcVar = new tc(10084000, i, true);
        boolean equals = "reward_mb".equals(haVar.b);
        Object obj = ((equals || !((Boolean) is.aK.c()).booleanValue()) && !(equals && ((Boolean) is.aL.c()).booleanValue())) ? null : 1;
        if (obj != null) {
            return new lq(context, str, moVar, tcVar, d.a());
        }
        return new l(context, haVar, str, moVar, tcVar, d.a());
    }

    public jy createNativeAdViewDelegate(com.google.android.gms.a.a aVar, com.google.android.gms.a.a aVar2) {
        return new ju((FrameLayout) b.a(aVar), (FrameLayout) b.a(aVar2));
    }

    public qr createRewardedVideoAd(com.google.android.gms.a.a aVar, mo moVar, int i) {
        return new qo((Context) b.a(aVar), d.a(), moVar, new tc(10084000, i, true));
    }

    public hn createSearchAdManager(com.google.android.gms.a.a aVar, ha haVar, String str, int i) {
        return new u((Context) b.a(aVar), haVar, str, new tc(10084000, i, true));
    }

    @Nullable
    public hs getMobileAdsSettingsManager(com.google.android.gms.a.a aVar) {
        return null;
    }

    public hs getMobileAdsSettingsManagerWithClientJarVersion(com.google.android.gms.a.a aVar, int i) {
        return p.a((Context) b.a(aVar), new tc(10084000, i, true));
    }
}
