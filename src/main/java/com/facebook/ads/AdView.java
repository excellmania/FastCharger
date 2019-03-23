package com.facebook.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.DisplayAdController;
import com.facebook.ads.internal.a;
import com.facebook.ads.internal.b;
import com.facebook.ads.internal.c;
import com.facebook.ads.internal.h.d;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.h;

public class AdView extends RelativeLayout implements Ad {
    private static final c a = c.ADS;
    private final DisplayMetrics b;
    private final AdSize c;
    private final String d;
    private DisplayAdController e;
    private AdListener f;
    private ImpressionListener g;
    private View h;
    private volatile boolean i;

    public AdView(Context context, String str, AdSize adSize) {
        super(context);
        if (adSize == null || adSize == AdSize.INTERSTITIAL) {
            throw new IllegalArgumentException("adSize");
        }
        this.b = getContext().getResources().getDisplayMetrics();
        this.c = adSize;
        this.d = str;
        this.e = new DisplayAdController(context, str, h.a(adSize), AdPlacementType.BANNER, adSize, a, 1, false);
        this.e.a(new a() {
            public void a() {
                if (AdView.this.e != null) {
                    AdView.this.e.c();
                }
            }

            public void a(View view) {
                if (view == null) {
                    throw new IllegalStateException("Cannot present null view");
                }
                AdView.this.h = view;
                AdView.this.removeAllViews();
                AdView.this.addView(AdView.this.h);
                if (AdView.this.h instanceof d) {
                    h.a(AdView.this.b, AdView.this.h, AdView.this.c);
                }
                if (AdView.this.f != null) {
                    AdView.this.f.onAdLoaded(AdView.this);
                }
            }

            public void a(b bVar) {
                if (AdView.this.f != null) {
                    AdView.this.f.onError(AdView.this, bVar.b());
                }
            }

            public void b() {
                if (AdView.this.f != null) {
                    AdView.this.f.onAdClicked(AdView.this);
                }
            }

            public void c() {
                if (AdView.this.g != null) {
                    AdView.this.g.onLoggingImpression(AdView.this);
                }
                if ((AdView.this.f instanceof ImpressionListener) && AdView.this.f != AdView.this.g) {
                    ((ImpressionListener) AdView.this.f).onLoggingImpression(AdView.this);
                }
            }
        });
    }

    public void destroy() {
        if (this.e != null) {
            this.e.d();
            this.e = null;
        }
        removeAllViews();
        this.h = null;
    }

    public void disableAutoRefresh() {
        if (this.e != null) {
            this.e.h();
        }
    }

    public String getPlacementId() {
        return this.d;
    }

    public void loadAd() {
        if (!this.i) {
            this.e.b();
            this.i = true;
        } else if (this.e != null) {
            this.e.g();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.h != null) {
            h.a(this.b, this.h, this.c);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (this.e != null) {
            if (i == 0) {
                this.e.f();
            } else if (i == 8) {
                this.e.e();
            }
        }
    }

    public void setAdListener(AdListener adListener) {
        this.f = adListener;
    }

    @Deprecated
    public void setImpressionListener(ImpressionListener impressionListener) {
        this.g = impressionListener;
    }
}
