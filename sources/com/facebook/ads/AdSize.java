package com.facebook.ads;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;

public class AdSize {
    @Deprecated
    public static final AdSize BANNER_320_50 = new AdSize(320, 50);
    public static final AdSize BANNER_HEIGHT_50 = new AdSize(-1, 50);
    public static final AdSize BANNER_HEIGHT_90 = new AdSize(-1, 90);
    public static final AdSize INTERSTITIAL = new AdSize(0, 0);
    public static final AdSize RECTANGLE_HEIGHT_250 = new AdSize(-1, Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
    private final int a;
    private final int b;

    public AdSize(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public static AdSize fromWidthAndHeight(int i, int i2) {
        return (INTERSTITIAL.b == i2 && INTERSTITIAL.a == i) ? INTERSTITIAL : (BANNER_320_50.b == i2 && BANNER_320_50.a == i) ? BANNER_320_50 : (BANNER_HEIGHT_50.b == i2 && BANNER_HEIGHT_50.a == i) ? BANNER_HEIGHT_50 : (BANNER_HEIGHT_90.b == i2 && BANNER_HEIGHT_90.a == i) ? BANNER_HEIGHT_90 : (RECTANGLE_HEIGHT_250.b == i2 && RECTANGLE_HEIGHT_250.a == i) ? RECTANGLE_HEIGHT_250 : null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        return this.a != adSize.a ? false : this.b == adSize.b;
    }

    public int getHeight() {
        return this.b;
    }

    public int getWidth() {
        return this.a;
    }

    public int hashCode() {
        return (this.a * 31) + this.b;
    }
}
