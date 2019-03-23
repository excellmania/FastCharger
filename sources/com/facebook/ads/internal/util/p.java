package com.facebook.ads.internal.util;

import com.facebook.ads.internal.adapters.e;

public class p {
    public static String a(e eVar) {
        switch (eVar) {
            case ADMOB:
                return "AdMob";
            case YAHOO:
                return "Flurry";
            case INMOBI:
                return "InMobi";
            case AN:
                return "Audience Network";
            default:
                return "";
        }
    }
}
