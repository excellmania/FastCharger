package com.facebook.ads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.facebook.ads.NativeAd.MediaCacheFlag;
import com.facebook.ads.internal.adapters.r;
import com.facebook.ads.internal.b;
import com.facebook.ads.internal.c;
import com.facebook.ads.internal.e;
import com.facebook.ads.internal.h;
import com.facebook.ads.internal.i;
import com.facebook.ads.internal.i.a;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;

public class NativeAdsManager {
    private static final c a = c.ADS;
    private final Context b;
    private final String c;
    private final int d;
    private final List<NativeAd> e;
    private int f;
    private Listener g;
    private i h;
    private boolean i;
    private boolean j;

    public interface Listener {
        void onAdError(AdError adError);

        void onAdsLoaded();
    }

    public NativeAdsManager(@NonNull Context context, String str, int i) {
        if (context == null) {
            throw new IllegalArgumentException("context can not be null");
        }
        this.b = context;
        this.c = str;
        this.d = Math.max(i, 0);
        this.e = new ArrayList(i);
        this.f = -1;
        this.j = false;
        this.i = false;
    }

    public void disableAutoRefresh() {
        this.i = true;
        if (this.h != null) {
            this.h.c();
        }
    }

    public int getUniqueNativeAdCount() {
        return this.e.size();
    }

    public boolean isLoaded() {
        return this.j;
    }

    public void loadAds() {
        loadAds(EnumSet.of(MediaCacheFlag.NONE));
    }

    public void loadAds(final EnumSet<MediaCacheFlag> enumSet) {
        e eVar = e.NATIVE_UNKNOWN;
        int i = this.d;
        if (this.h != null) {
            this.h.b();
        }
        this.h = new i(this.b, this.c, eVar, null, a, i, enumSet);
        if (this.i) {
            this.h.c();
        }
        this.h.a(new a() {
            public void a(b bVar) {
                if (NativeAdsManager.this.g != null) {
                    NativeAdsManager.this.g.onAdError(bVar.b());
                }
            }

            public void a(final List<r> list) {
                com.facebook.ads.internal.c.b bVar = new com.facebook.ads.internal.c.b(NativeAdsManager.this.b);
                for (r rVar : list) {
                    if (enumSet.contains(MediaCacheFlag.ICON) && rVar.k() != null) {
                        bVar.a(rVar.k().getUrl());
                    }
                    if (enumSet.contains(MediaCacheFlag.IMAGE) && rVar.l() != null) {
                        bVar.a(rVar.l().getUrl());
                    }
                    if (enumSet.contains(MediaCacheFlag.VIDEO) && !TextUtils.isEmpty(rVar.w()) && h.c(NativeAdsManager.this.b)) {
                        bVar.b(rVar.w());
                    }
                }
                bVar.a(new com.facebook.ads.internal.c.a() {
                    public void a() {
                        NativeAdsManager.this.j = true;
                        NativeAdsManager.this.e.clear();
                        NativeAdsManager.this.f = 0;
                        for (r nativeAd : list) {
                            NativeAdsManager.this.e.add(new NativeAd(NativeAdsManager.this.b, nativeAd, null));
                        }
                        if (NativeAdsManager.this.g != null) {
                            NativeAdsManager.this.g.onAdsLoaded();
                        }
                    }
                });
            }
        });
        this.h.a();
    }

    public NativeAd nextNativeAd() {
        if (this.e.size() == 0) {
            return null;
        }
        int i = this.f;
        this.f = i + 1;
        NativeAd nativeAd = (NativeAd) this.e.get(i % this.e.size());
        return i >= this.e.size() ? new NativeAd(nativeAd) : nativeAd;
    }

    public void setListener(Listener listener) {
        this.g = listener;
    }
}
