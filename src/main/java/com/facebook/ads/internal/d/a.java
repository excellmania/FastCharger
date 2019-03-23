package com.facebook.ads.internal.d;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class a {
    private final String a;
    private final JSONObject b;
    private final Map<g, List<String>> c = new HashMap();

    public a(String str, JSONObject jSONObject, @Nullable JSONArray jSONArray) {
        int i = 0;
        this.a = str;
        this.b = jSONObject;
        if (jSONArray != null && jSONArray.length() != 0) {
            int i2;
            for (Object put : g.values()) {
                this.c.put(put, new LinkedList());
            }
            while (true) {
                i2 = i;
                if (i2 < jSONArray.length()) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                        String string = jSONObject2.getString("type");
                        String string2 = jSONObject2.getString("url");
                        g valueOf = g.valueOf(string.toUpperCase(Locale.US));
                        if (!(valueOf == null || TextUtils.isEmpty(string2))) {
                            ((List) this.c.get(valueOf)).add(string2);
                        }
                    } catch (Exception e) {
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public String a() {
        return this.a;
    }

    public List<String> a(g gVar) {
        return (List) this.c.get(gVar);
    }

    public JSONObject b() {
        return this.b;
    }
}
