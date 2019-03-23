package com.google.android.gms.c;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.d;
import com.google.android.gms.ads.internal.overlay.g;
import com.google.android.gms.ads.internal.v;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@pa
public final class kq {
    public static final kr a = new kr() {
        public void a(tr trVar, Map<String, String> map) {
        }
    };
    public static final kr b = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            String str = (String) map.get("urls");
            if (TextUtils.isEmpty(str)) {
                sz.e("URLs missing in canOpenURLs GMSG.");
                return;
            }
            String[] split = str.split(",");
            Map hashMap = new HashMap();
            PackageManager packageManager = trVar.getContext().getPackageManager();
            for (String str2 : split) {
                String[] split2 = str2.split(";", 2);
                hashMap.put(str2, Boolean.valueOf(packageManager.resolveActivity(new Intent(split2.length > 1 ? split2[1].trim() : "android.intent.action.VIEW", Uri.parse(split2[0].trim())), 65536) != null));
            }
            trVar.a("openableURLs", hashMap);
        }
    };
    public static final kr c = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            PackageManager packageManager = trVar.getContext().getPackageManager();
            try {
                try {
                    JSONArray jSONArray = new JSONObject((String) map.get("data")).getJSONArray("intents");
                    JSONObject jSONObject = new JSONObject();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            String optString = jSONObject2.optString("id");
                            String optString2 = jSONObject2.optString("u");
                            String optString3 = jSONObject2.optString("i");
                            String optString4 = jSONObject2.optString("m");
                            String optString5 = jSONObject2.optString("p");
                            String optString6 = jSONObject2.optString("c");
                            jSONObject2.optString("f");
                            jSONObject2.optString("e");
                            Intent intent = new Intent();
                            if (!TextUtils.isEmpty(optString2)) {
                                intent.setData(Uri.parse(optString2));
                            }
                            if (!TextUtils.isEmpty(optString3)) {
                                intent.setAction(optString3);
                            }
                            if (!TextUtils.isEmpty(optString4)) {
                                intent.setType(optString4);
                            }
                            if (!TextUtils.isEmpty(optString5)) {
                                intent.setPackage(optString5);
                            }
                            if (!TextUtils.isEmpty(optString6)) {
                                String[] split = optString6.split("/", 2);
                                if (split.length == 2) {
                                    intent.setComponent(new ComponentName(split[0], split[1]));
                                }
                            }
                            try {
                                jSONObject.put(optString, packageManager.resolveActivity(intent, 65536) != null);
                            } catch (JSONException e) {
                                sz.b("Error constructing openable urls response.", e);
                            }
                        } catch (JSONException e2) {
                            sz.b("Error parsing the intent data.", e2);
                        }
                    }
                    trVar.b("openableIntents", jSONObject);
                } catch (JSONException e3) {
                    trVar.b("openableIntents", new JSONObject());
                }
            } catch (JSONException e4) {
                trVar.b("openableIntents", new JSONObject());
            }
        }
    };
    public static final kr d = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            String str = (String) map.get("u");
            if (str == null) {
                sz.e("URL missing from click GMSG.");
                return;
            }
            Uri a;
            Uri parse = Uri.parse(str);
            try {
                cm n = trVar.n();
                if (n != null && n.c(parse)) {
                    a = n.a(parse, trVar.getContext(), trVar.b());
                    new st(trVar.getContext(), trVar.o().b, a.toString()).e();
                }
            } catch (cn e) {
                String str2 = "Unable to append parameter to URL: ";
                str = String.valueOf(str);
                sz.e(str.length() != 0 ? str2.concat(str) : new String(str2));
            }
            a = parse;
            new st(trVar.getContext(), trVar.o().b, a.toString()).e();
        }
    };
    public static final kr e = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            g i = trVar.i();
            if (i != null) {
                i.a();
                return;
            }
            i = trVar.j();
            if (i != null) {
                i.a();
            } else {
                sz.e("A GMSG tried to close something that wasn't an overlay.");
            }
        }
    };
    public static final kr f = new kr() {
        private void a(tr trVar) {
            sz.d("Received support message, responding.");
            d h = trVar.h();
            if (!(h == null || h.c == null)) {
                trVar.getContext();
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("event", "checkSupport");
                jSONObject.put("supports", false);
                trVar.b("appStreaming", jSONObject);
            } catch (Throwable th) {
            }
        }

        public void a(tr trVar, Map<String, String> map) {
            if ("checkSupport".equals(map.get("action"))) {
                a(trVar);
                return;
            }
            g i = trVar.i();
            if (i != null) {
                i.a(trVar, (Map) map);
            }
        }
    };
    public static final kr g = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            trVar.b("1".equals(map.get("custom_close")));
        }
    };
    public static final kr h = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            String str = (String) map.get("u");
            if (str == null) {
                sz.e("URL missing from httpTrack GMSG.");
            } else {
                new st(trVar.getContext(), trVar.o().b, str).e();
            }
        }
    };
    public static final kr i = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            String str = "Received log message: ";
            String valueOf = String.valueOf((String) map.get("string"));
            sz.d(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
    };
    public static final kr j = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            jo E = trVar.E();
            if (E != null) {
                E.a();
            }
        }
    };
    public static final kr k = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            String str = (String) map.get("ty");
            String str2 = (String) map.get("td");
            try {
                int parseInt = Integer.parseInt((String) map.get("tx"));
                int parseInt2 = Integer.parseInt(str);
                int parseInt3 = Integer.parseInt(str2);
                cm n = trVar.n();
                if (n != null) {
                    n.a().a(parseInt, parseInt2, parseInt3);
                }
            } catch (NumberFormatException e) {
                sz.e("Could not parse touch parameters from gmsg.");
            }
        }
    };
    public static final kr l = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            if (((Boolean) is.bh.c()).booleanValue()) {
                trVar.c(!Boolean.parseBoolean((String) map.get("disabled")));
            }
        }
    };
    public static final kr m = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            String str = (String) map.get("action");
            if ("pause".equals(str)) {
                trVar.H();
            } else if ("resume".equals(str)) {
                trVar.I();
            }
        }
    };
    public static final kr n = new lc();
    public static final kr o = new ld();
    public static final kr p = new lh();
    public static final kr q = new kp();
    public static final la r = new la();
    public static final kr s = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            if (map.keySet().contains("start")) {
                trVar.l().i();
            } else if (map.keySet().contains("stop")) {
                trVar.l().j();
            } else if (map.keySet().contains("cancel")) {
                trVar.l().k();
            }
        }
    };
    public static final kr t = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            if (map.keySet().contains("start")) {
                trVar.d(true);
            }
            if (map.keySet().contains("stop")) {
                trVar.d(false);
            }
        }
    };
    public static final kr u = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            trVar.a("locationReady", v.e().a((View) trVar, (WindowManager) trVar.getContext().getSystemService("window")));
            sz.e("GET LOCATION COMPILED");
        }
    };
}
