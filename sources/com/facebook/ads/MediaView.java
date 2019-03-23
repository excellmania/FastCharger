package com.facebook.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.facebook.ads.internal.adapters.g;
import com.facebook.ads.internal.h.c;
import com.facebook.ads.internal.h.e;
import com.facebook.ads.internal.util.l;

public class MediaView extends RelativeLayout {
    private static final String a = MediaView.class.getSimpleName();
    private static final int b = Color.argb(51, 145, 150, 165);
    private final e c;
    private final c d;
    private final com.facebook.ads.internal.h.b.c e;
    private boolean f;
    private boolean g;
    private boolean h;

    public MediaView(Context context) {
        this(context, null);
    }

    public MediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = false;
        this.g = true;
        this.h = false;
        setBackgroundColor(b);
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        this.c = new e(context);
        this.c.setVisibility(8);
        addView(this.c, layoutParams);
        this.d = new c(context);
        layoutParams.addRule(13);
        this.d.setAutoplay(this.g);
        this.d.setAutoplayOnMobile(this.h);
        this.d.setVolume(0.0f);
        this.d.setVisibility(8);
        addView(this.d, layoutParams);
        float f = context.getResources().getDisplayMetrics().density;
        int round = Math.round(4.0f * f);
        int round2 = Math.round(f * 12.0f);
        this.e = new com.facebook.ads.internal.h.b.c(getContext());
        this.e.setChildSpacing(round);
        this.e.setPadding(0, round2, 0, round2);
        this.e.setVisibility(8);
        addView(this.e, layoutParams);
    }

    private boolean a(NativeAd nativeAd) {
        return VERSION.SDK_INT >= 14 && !TextUtils.isEmpty(nativeAd.c());
    }

    private boolean b(NativeAd nativeAd) {
        if (nativeAd.g() == null) {
            return false;
        }
        for (NativeAd adCoverImage : nativeAd.g()) {
            if (adCoverImage.getAdCoverImage() == null) {
                return false;
            }
        }
        return true;
    }

    public boolean isAutoplay() {
        return this.g;
    }

    public void setAutoplay(boolean z) {
        this.g = z;
        this.d.setAutoplay(z);
    }

    public void setAutoplayOnMobile(boolean z) {
        this.h = z;
        this.d.setAutoplayOnMobile(z);
    }

    public void setNativeAd(NativeAd nativeAd) {
        nativeAd.b(true);
        nativeAd.setMediaViewAutoplay(this.g);
        if (this.f) {
            this.c.a(null, null);
            this.d.setVideoURI(null);
            this.f = false;
        }
        String url = nativeAd.getAdCoverImage() != null ? nativeAd.getAdCoverImage().getUrl() : null;
        this.d.getPlaceholderView().setImageDrawable(null);
        if (b(nativeAd)) {
            this.c.setVisibility(8);
            this.d.setVisibility(8);
            this.e.setVisibility(0);
            bringChildToFront(this.e);
            this.e.setCurrentPosition(0);
            this.e.setAdapter(new g(this.e, nativeAd.g()));
        } else if (a(nativeAd)) {
            String c = nativeAd.c();
            String d = nativeAd.d();
            this.c.setVisibility(8);
            this.d.setVisibility(0);
            this.e.setVisibility(8);
            bringChildToFront(this.d);
            this.f = true;
            try {
                this.d.setAutoplay(this.g);
                this.d.setAutoplayOnMobile(this.h);
                this.d.setVideoPlayReportURI(nativeAd.e());
                this.d.setVideoTimeReportURI(nativeAd.f());
                this.d.setVideoMPD(d);
                this.d.setVideoURI(c);
                this.d.d();
                if (url != null) {
                    new l(this.d.getPlaceholderView()).a(url);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (url != null) {
            this.c.setVisibility(0);
            this.d.setVisibility(8);
            this.e.setVisibility(8);
            bringChildToFront(this.c);
            this.f = true;
            new l(this.c).a(url);
        }
    }
}
