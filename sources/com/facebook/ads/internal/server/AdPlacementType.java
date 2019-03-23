package com.facebook.ads.internal.server;

import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;
import java.util.Locale;

public enum AdPlacementType {
    UNKNOWN(EnvironmentCompat.MEDIA_UNKNOWN),
    BANNER("banner"),
    INTERSTITIAL("interstitial"),
    NATIVE("native");
    
    private String a;

    private AdPlacementType(String str) {
        this.a = str;
    }

    public static AdPlacementType fromString(String str) {
        if (TextUtils.isEmpty(str)) {
            return UNKNOWN;
        }
        try {
            return valueOf(str.toUpperCase(Locale.US));
        } catch (Exception e) {
            return UNKNOWN;
        }
    }

    public String toString() {
        return this.a;
    }
}
