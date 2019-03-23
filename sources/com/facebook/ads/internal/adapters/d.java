package com.facebook.ads.internal.adapters;

import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.v;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class d {
    private static final Set<f> a = new HashSet();
    private static final Map<AdPlacementType, String> b = new ConcurrentHashMap();

    static {
        for (f fVar : f.a()) {
            Class cls;
            switch (fVar.j) {
                case BANNER:
                    cls = BannerAdapter.class;
                    break;
                case INTERSTITIAL:
                    cls = InterstitialAdapter.class;
                    break;
                case NATIVE:
                    cls = r.class;
                    break;
                default:
                    cls = null;
                    break;
            }
            if (cls != null) {
                Class cls2 = fVar.g;
                if (cls2 == null) {
                    try {
                        cls2 = Class.forName(fVar.h);
                    } catch (ClassNotFoundException e) {
                    }
                }
                if (cls2 != null && cls.isAssignableFrom(cls2)) {
                    a.add(fVar);
                }
            }
        }
    }

    public static AdAdapter a(e eVar, AdPlacementType adPlacementType) {
        try {
            f b = b(eVar, adPlacementType);
            if (b != null && a.contains(b)) {
                Class cls = b.g;
                if (cls == null) {
                    cls = Class.forName(b.h);
                }
                return (AdAdapter) cls.newInstance();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static AdAdapter a(String str, AdPlacementType adPlacementType) {
        return a(e.a(str), adPlacementType);
    }

    public static String a(AdPlacementType adPlacementType) {
        if (b.containsKey(adPlacementType)) {
            return (String) b.get(adPlacementType);
        }
        HashSet hashSet = new HashSet();
        for (f fVar : a) {
            if (fVar.j == adPlacementType) {
                hashSet.add(fVar.i.toString());
            }
        }
        String a = v.a(hashSet, ",");
        b.put(adPlacementType, a);
        return a;
    }

    private static f b(e eVar, AdPlacementType adPlacementType) {
        for (f fVar : a) {
            if (fVar.i == eVar && fVar.j == adPlacementType) {
                return fVar;
            }
        }
        return null;
    }
}
