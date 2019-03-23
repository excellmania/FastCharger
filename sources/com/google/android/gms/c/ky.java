package com.google.android.gms.c;

import com.google.android.gms.ads.internal.e;
import com.google.android.gms.common.util.d;
import java.util.Map;

@pa
public class ky implements kr {
    static final Map<String, Integer> a = d.a("resize", Integer.valueOf(1), "playVideo", Integer.valueOf(2), "storePicture", Integer.valueOf(3), "createCalendarEvent", Integer.valueOf(4), "setOrientationProperties", Integer.valueOf(5), "closeResizedAd", Integer.valueOf(6));
    private final e b;
    private final ng c;

    public ky(e eVar, ng ngVar) {
        this.b = eVar;
        this.c = ngVar;
    }

    public void a(tr trVar, Map<String, String> map) {
        int intValue = ((Integer) a.get((String) map.get("a"))).intValue();
        if (intValue == 5 || this.b == null || this.b.b()) {
            switch (intValue) {
                case 1:
                    this.c.a((Map) map);
                    return;
                case 3:
                    new ni(trVar, map).a();
                    return;
                case 4:
                    new nf(trVar, map).a();
                    return;
                case 5:
                    new nh(trVar, map).a();
                    return;
                case 6:
                    this.c.a(true);
                    return;
                default:
                    sz.d("Unknown MRAID command called.");
                    return;
            }
        }
        this.b.a(null);
    }
}
