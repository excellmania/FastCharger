package com.google.android.gms.c;

import java.util.Map;

@pa
public class kv implements kr {
    private final kw a;

    public kv(kw kwVar) {
        this.a = kwVar;
    }

    public void a(tr trVar, Map<String, String> map) {
        float parseFloat;
        boolean equals = "1".equals(map.get("transparentBackground"));
        boolean equals2 = "1".equals(map.get("blur"));
        try {
            if (map.get("blurRadius") != null) {
                parseFloat = Float.parseFloat((String) map.get("blurRadius"));
                this.a.b(equals);
                this.a.a(equals2, parseFloat);
            }
        } catch (NumberFormatException e) {
            sz.b("Fail to parse float", e);
        }
        parseFloat = 0.0f;
        this.a.b(equals);
        this.a.a(equals2, parseFloat);
    }
}
