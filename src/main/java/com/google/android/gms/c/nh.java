package com.google.android.gms.c;

import com.google.android.gms.ads.internal.v;
import java.util.Map;

@pa
public class nh {
    private final tr a;
    private final boolean b;
    private final String c;

    public nh(tr trVar, Map<String, String> map) {
        this.a = trVar;
        this.c = (String) map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            this.b = Boolean.parseBoolean((String) map.get("allowOrientationChange"));
        } else {
            this.b = true;
        }
    }

    public void a() {
        if (this.a == null) {
            sz.e("AdWebView is null");
            return;
        }
        int b = "portrait".equalsIgnoreCase(this.c) ? v.g().b() : "landscape".equalsIgnoreCase(this.c) ? v.g().a() : this.b ? -1 : v.g().c();
        this.a.b(b);
    }
}
