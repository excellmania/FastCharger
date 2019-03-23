package com.google.android.gms.c;

import android.text.TextUtils;
import java.util.Map;

@pa
public class lb implements kr {
    private final a a;

    public interface a {
        void O();

        void b(rk rkVar);
    }

    public lb(a aVar) {
        this.a = aVar;
    }

    public static void a(tr trVar, a aVar) {
        trVar.l().a("/reward", new lb(aVar));
    }

    private void a(Map<String, String> map) {
        rk rkVar;
        try {
            int parseInt = Integer.parseInt((String) map.get("amount"));
            String str = (String) map.get("type");
            if (!TextUtils.isEmpty(str)) {
                rkVar = new rk(str, parseInt);
                this.a.b(rkVar);
            }
        } catch (NumberFormatException e) {
            sz.c("Unable to parse reward amount.", e);
        }
        rkVar = null;
        this.a.b(rkVar);
    }

    private void b(Map<String, String> map) {
        this.a.O();
    }

    public void a(tr trVar, Map<String, String> map) {
        String str = (String) map.get("action");
        if ("grant".equals(str)) {
            a(map);
        } else if ("video_start".equals(str)) {
            b(map);
        }
    }
}
