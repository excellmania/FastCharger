package com.google.android.gms.c;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

@pa
public class kx implements kr {
    final HashMap<String, te<JSONObject>> a = new HashMap();

    public Future<JSONObject> a(String str) {
        te teVar = new te();
        this.a.put(str, teVar);
        return teVar;
    }

    public void a(tr trVar, Map<String, String> map) {
        a((String) map.get("request_id"), (String) map.get("fetched_ad"));
    }

    public void a(String str, String str2) {
        sz.b("Received ad from the cache.");
        te teVar = (te) this.a.get(str);
        if (teVar == null) {
            sz.c("Could not find the ad request for the corresponding ad response.");
            return;
        }
        try {
            teVar.b(new JSONObject(str2));
        } catch (JSONException e) {
            sz.b("Failed constructing JSON object from value passed from javascript", e);
            teVar.b(null);
        } finally {
            this.a.remove(str);
        }
    }

    public void b(String str) {
        te teVar = (te) this.a.get(str);
        if (teVar == null) {
            sz.c("Could not find the ad request for the corresponding ad response.");
            return;
        }
        if (!teVar.isDone()) {
            teVar.cancel(true);
        }
        this.a.remove(str);
    }
}
