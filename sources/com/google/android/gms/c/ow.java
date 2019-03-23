package com.google.android.gms.c;

import android.support.v4.util.SimpleArrayMap;
import com.google.android.gms.c.os.a;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONObject;

@pa
public class ow implements a<jn> {
    private final boolean a;

    public ow(boolean z) {
        this.a = z;
    }

    private <K, V> SimpleArrayMap<K, V> a(SimpleArrayMap<K, Future<V>> simpleArrayMap) {
        SimpleArrayMap simpleArrayMap2 = new SimpleArrayMap();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= simpleArrayMap.size()) {
                return simpleArrayMap2;
            }
            simpleArrayMap2.put(simpleArrayMap.keyAt(i2), ((Future) simpleArrayMap.valueAt(i2)).get());
            i = i2 + 1;
        }
    }

    private void a(os osVar, JSONObject jSONObject, SimpleArrayMap<String, Future<jk>> simpleArrayMap) {
        simpleArrayMap.put(jSONObject.getString("name"), osVar.a(jSONObject, "image_value", this.a));
    }

    private void a(JSONObject jSONObject, SimpleArrayMap<String, String> simpleArrayMap) {
        simpleArrayMap.put(jSONObject.getString("name"), jSONObject.getString("string_value"));
    }

    /* renamed from: b */
    public jn a(os osVar, JSONObject jSONObject) {
        SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
        SimpleArrayMap simpleArrayMap2 = new SimpleArrayMap();
        th b = osVar.b(jSONObject);
        JSONArray jSONArray = jSONObject.getJSONArray("custom_assets");
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            String string = jSONObject2.getString("type");
            if ("string".equals(string)) {
                a(jSONObject2, simpleArrayMap2);
            } else if ("image".equals(string)) {
                a(osVar, jSONObject2, simpleArrayMap);
            } else {
                String str = "Unknown custom asset type: ";
                String valueOf = String.valueOf(string);
                sz.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
        }
        return new jn(jSONObject.getString("custom_template_id"), a(simpleArrayMap), simpleArrayMap2, (ji) b.get());
    }
}
