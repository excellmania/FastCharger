package com.facebook.ads.internal;

import org.json.JSONArray;

public enum d {
    APP_AD(0),
    LINK_AD(1),
    APP_AD_V2(2),
    LINK_AD_V2(3),
    APP_ENGAGEMENT_AD(4),
    AD_CHOICES(5),
    JS_TRIGGER(6),
    JS_TRIGGER_NO_AUTO_IMP_LOGGING(7),
    VIDEO_AD(8),
    INLINE_VIDEO_AD(9),
    BANNER_TO_INTERSTITIAL(10),
    NATIVE_CLOSE_BUTTON(11);
    
    public static final d[] m = null;
    private static final String o = null;
    private final int n;

    static {
        m = new d[]{LINK_AD_V2, APP_ENGAGEMENT_AD, AD_CHOICES, JS_TRIGGER_NO_AUTO_IMP_LOGGING, NATIVE_CLOSE_BUTTON};
        JSONArray jSONArray = new JSONArray();
        d[] dVarArr = m;
        int length = dVarArr.length;
        int i;
        while (i < length) {
            jSONArray.put(dVarArr[i].a());
            i++;
        }
        o = jSONArray.toString();
    }

    private d(int i) {
        this.n = i;
    }

    public static String b() {
        return o;
    }

    /* Access modifiers changed, original: 0000 */
    public int a() {
        return this.n;
    }

    public String toString() {
        return String.valueOf(this.n);
    }
}
