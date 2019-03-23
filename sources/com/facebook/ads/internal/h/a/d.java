package com.facebook.ads.internal.h.a;

import android.content.Context;
import android.text.TextUtils.TruncateAt;
import android.util.DisplayMetrics;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.h.k;

public class d extends LinearLayout {
    public d(Context context, NativeAd nativeAd, NativeAdViewAttributes nativeAdViewAttributes) {
        super(context);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.setVerticalGravity(16);
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        layoutParams.setMargins(Math.round(displayMetrics.density * 15.0f), Math.round(displayMetrics.density * 15.0f), Math.round(displayMetrics.density * 15.0f), Math.round(displayMetrics.density * 15.0f));
        linearLayout.setLayoutParams(layoutParams);
        addView(linearLayout);
        TextView textView = new TextView(getContext());
        textView.setText(nativeAd.getAdSubtitle());
        k.a(textView, nativeAdViewAttributes);
        textView.setEllipsize(TruncateAt.END);
        textView.setSingleLine(true);
        linearLayout.addView(textView);
        textView = new TextView(getContext());
        textView.setText(nativeAd.getAdBody());
        k.b(textView, nativeAdViewAttributes);
        textView.setEllipsize(TruncateAt.END);
        textView.setMaxLines(2);
        linearLayout.addView(textView);
    }
}
