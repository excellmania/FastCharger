package com.google.android.gms.c;

import com.google.android.gms.ads.internal.v;
import com.google.android.gms.common.internal.k;
import java.util.Map;

@pa
public class lh implements kr {
    public void a(tr trVar, Map<String, String> map) {
        lf B = v.B();
        if (!map.containsKey("abort")) {
            String str = (String) map.get("src");
            if (str == null) {
                sz.e("Precache video action is missing the src parameter.");
                return;
            }
            int parseInt;
            try {
                parseInt = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException e) {
                parseInt = 0;
            }
            String str2 = map.containsKey("mimetype") ? (String) map.get("mimetype") : "";
            if (B.b(trVar)) {
                sz.e("Precache task already running.");
                return;
            }
            k.a(trVar.h());
            new le(trVar, trVar.h().a.a(trVar, parseInt, str2), str).e();
        } else if (!B.a(trVar)) {
            sz.e("Precache abort but no preload task running.");
        }
    }
}
