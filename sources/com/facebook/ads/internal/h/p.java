package com.facebook.ads.internal.h;

import android.content.Context;
import android.view.View.MeasureSpec;
import android.widget.ImageView;

public class p extends ImageView {
    public p(Context context) {
        super(context);
    }

    /* Access modifiers changed, original: protected */
    public void onMeasure(int i, int i2) {
        if (MeasureSpec.getMode(i) == 1073741824) {
            i2 = i;
        } else if (MeasureSpec.getMode(i2) == 1073741824) {
            i = i2;
        }
        super.onMeasure(i, i2);
    }
}