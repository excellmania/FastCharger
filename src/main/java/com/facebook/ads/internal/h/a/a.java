package com.facebook.ads.internal.h.a;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.h.k;
import com.facebook.ads.internal.h.l;

public class a extends LinearLayout {
    private l a = new l(getContext(), 2);
    private int b;

    public a(Context context, NativeAd nativeAd, NativeAdViewAttributes nativeAdViewAttributes) {
        int i = 21;
        super(context);
        setOrientation(1);
        setVerticalGravity(16);
        this.a.setMinTextSize((float) (nativeAdViewAttributes.getTitleTextSize() - 2));
        this.a.setText(nativeAd.getAdTitle());
        k.a(this.a, nativeAdViewAttributes);
        this.a.setLayoutParams(new LayoutParams(-2, -2));
        addView(this.a);
        if (nativeAd.getAdTitle() != null) {
            i = Math.min(nativeAd.getAdTitle().length(), 21);
        }
        this.b = i;
        addView(k.a(context, nativeAd, nativeAdViewAttributes));
    }

    public int getMinVisibleTitleCharacters() {
        return this.b;
    }

    public TextView getTitleTextView() {
        return this.a;
    }
}
