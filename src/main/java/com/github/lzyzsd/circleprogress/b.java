package com.github.lzyzsd.circleprogress;

import android.content.res.Resources;

public class b {
    public static float a(Resources resources, float f) {
        return (resources.getDisplayMetrics().density * f) + 0.5f;
    }

    public static float b(Resources resources, float f) {
        return resources.getDisplayMetrics().scaledDensity * f;
    }
}
