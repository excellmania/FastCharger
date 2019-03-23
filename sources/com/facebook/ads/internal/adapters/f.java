package com.facebook.ads.internal.adapters;

import com.facebook.ads.internal.f.a;
import com.facebook.ads.internal.server.AdPlacementType;
import java.util.ArrayList;
import java.util.List;

public enum f {
    ANBANNER(h.class, e.AN, AdPlacementType.BANNER),
    ANINTERSTITIAL(i.class, e.AN, AdPlacementType.INTERSTITIAL),
    ADMOBNATIVE(c.class, e.ADMOB, AdPlacementType.NATIVE),
    ANNATIVE(j.class, e.AN, AdPlacementType.NATIVE),
    INMOBINATIVE(n.class, e.INMOBI, AdPlacementType.NATIVE),
    YAHOONATIVE(k.class, e.YAHOO, AdPlacementType.NATIVE);
    
    private static List<f> k;
    public Class<?> g;
    public String h;
    public e i;
    public AdPlacementType j;

    private f(Class<?> cls, e eVar, AdPlacementType adPlacementType) {
        this.g = cls;
        this.i = eVar;
        this.j = adPlacementType;
    }

    public static List<f> a() {
        if (k == null) {
            synchronized (f.class) {
                k = new ArrayList();
                k.add(ANBANNER);
                k.add(ANINTERSTITIAL);
                k.add(ANNATIVE);
                if (a.a(e.YAHOO)) {
                    k.add(YAHOONATIVE);
                }
                if (a.a(e.INMOBI)) {
                    k.add(INMOBINATIVE);
                }
                if (a.a(e.ADMOB)) {
                    k.add(ADMOBNATIVE);
                }
            }
        }
        return k;
    }
}
