package com.onesignal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.HandlerThread;
import com.onesignal.t.d;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.HttpStatus;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class w {
    static HashMap<Integer, b> a = new HashMap();
    static boolean b;
    private static boolean c = false;
    private static boolean d = false;
    private static c e;
    private static c f;
    private static final Object g = new Object() {
    };
    private static Context h;
    private static final String[] i = new String[]{"lat", "long", "loc_acc", "loc_type"};
    private static final Set<String> j = new HashSet(Arrays.asList(i));
    private static final Object k = new Object() {
    };

    static class a {
        public boolean a;
        public JSONObject b;

        a(boolean z, JSONObject jSONObject) {
            this.a = z;
            this.b = jSONObject;
        }
    }

    static class b extends HandlerThread {
        int a;
        Handler b = null;
        int c;

        b(int i) {
            super("OSH_NetworkHandlerThread");
            this.a = i;
            start();
            this.b = new Handler(getLooper());
        }

        private Runnable d() {
            switch (this.a) {
                case 0:
                    return new Runnable() {
                        public void run() {
                            w.a(false);
                        }
                    };
                default:
                    return null;
            }
        }

        public void a() {
            this.c = 0;
            this.b.removeCallbacksAndMessages(null);
            this.b.postDelayed(d(), 5000);
        }

        /* Access modifiers changed, original: 0000 */
        public void b() {
            this.b.removeCallbacksAndMessages(null);
        }

        /* Access modifiers changed, original: 0000 */
        public void c() {
            if (this.c < 3 && !this.b.hasMessages(0)) {
                this.c++;
                this.b.postDelayed(d(), (long) (this.c * 15000));
            }
        }
    }

    class c {
        JSONObject a;
        JSONObject b;
        private final int d;
        private String e;

        private c(String str, boolean z) {
            this.d = -2;
            this.e = str;
            if (z) {
                c();
                return;
            }
            this.a = new JSONObject();
            this.b = new JSONObject();
        }

        /* synthetic */ c(w wVar, String str, boolean z, AnonymousClass1 anonymousClass1) {
            this(str, z);
        }

        private c a(String str) {
            c cVar = new c(str, false);
            try {
                cVar.a = new JSONObject(this.a.toString());
                cVar.b = new JSONObject(this.b.toString());
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return cVar;
        }

        private JSONObject a(c cVar, boolean z) {
            a();
            cVar.a();
            JSONObject a = w.b(this.b, cVar.b, null, b(this.b, cVar.b));
            if (!z && a.toString().equals("{}")) {
                return null;
            }
            try {
                if (!a.has("app_id")) {
                    a.put("app_id", (String) this.b.opt("app_id"));
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return a;
        }

        private void a() {
            try {
                this.b.put("notification_types", b());
            } catch (JSONException e) {
            }
        }

        private int b() {
            int optInt = this.a.optInt("subscribableStatus", 1);
            return optInt < -2 ? optInt : this.a.optBoolean("userSubscribePref", true) ? 1 : -2;
        }

        private Set<String> b(JSONObject jSONObject, JSONObject jSONObject2) {
            try {
                return (jSONObject.getDouble("lat") == jSONObject2.getDouble("lat") && jSONObject.getDouble("long") == jSONObject2.getDouble("long") && jSONObject.getDouble("loc_acc") == jSONObject2.getDouble("loc_acc") && jSONObject.getDouble("loc_type") == jSONObject2.getDouble("loc_type")) ? null : w.j;
            } catch (Throwable th) {
                return w.j;
            }
        }

        private void b(String str) {
            int i = 0;
            if (this.b.has(str + "_d") || !this.b.has(str + "_d")) {
                try {
                    JSONArray jSONArray = this.b.has(str) ? this.b.getJSONArray(str) : new JSONArray();
                    JSONArray jSONArray2 = new JSONArray();
                    if (this.b.has(str + "_d")) {
                        String a = w.b(this.b.getJSONArray(str + "_d"));
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            if (!a.contains(jSONArray.getString(i2))) {
                                jSONArray2.put(jSONArray.get(i2));
                            }
                        }
                    } else {
                        jSONArray2 = jSONArray;
                    }
                    if (this.b.has(str + "_a")) {
                        jSONArray = this.b.getJSONArray(str + "_a");
                        while (i < jSONArray.length()) {
                            jSONArray2.put(jSONArray.get(i));
                            i++;
                        }
                    }
                    this.b.put(str, jSONArray2);
                    this.b.remove(str + "_a");
                    this.b.remove(str + "_d");
                } catch (Throwable th) {
                }
            }
        }

        private void c() {
            int i = 1;
            SharedPreferences e = t.e(w.h);
            String string = e.getString("ONESIGNAL_USERSTATE_DEPENDVALYES_" + this.e, null);
            if (string == null) {
                this.a = new JSONObject();
                try {
                    boolean z;
                    int i2 = this.e.equals("CURRENT_STATE") ? e.getInt("ONESIGNAL_SUBSCRIPTION", 1) : e.getInt("ONESIGNAL_SYNCED_SUBSCRIPTION", 1);
                    if (i2 == -2) {
                        z = false;
                    } else {
                        i = i2;
                        z = true;
                    }
                    this.a.put("subscribableStatus", i);
                    this.a.put("userSubscribePref", z);
                } catch (JSONException e2) {
                }
            } else {
                try {
                    this.a = new JSONObject(string);
                } catch (JSONException e3) {
                    e3.printStackTrace();
                }
            }
            string = e.getString("ONESIGNAL_USERSTATE_SYNCVALYES_" + this.e, null);
            if (string == null) {
                try {
                    this.b = new JSONObject();
                    this.b.put("identifier", e.getString("GT_REGISTRATION_ID", null));
                    return;
                } catch (JSONException e32) {
                    e32.printStackTrace();
                    return;
                }
            }
            this.b = new JSONObject(string);
        }

        private void c(JSONObject jSONObject, JSONObject jSONObject2) {
            if (jSONObject != null) {
                w.b(this.a, jSONObject, this.a, null);
            }
            if (jSONObject2 != null) {
                w.b(this.b, jSONObject2, this.b, null);
                a(jSONObject2, null);
            }
            if (jSONObject != null || jSONObject2 != null) {
                d();
            }
        }

        private void d() {
            synchronized (w.k) {
                b("pkgs");
                Editor edit = t.e(w.h).edit();
                edit.putString("ONESIGNAL_USERSTATE_SYNCVALYES_" + this.e, this.b.toString());
                edit.putString("ONESIGNAL_USERSTATE_DEPENDVALYES_" + this.e, this.a.toString());
                edit.commit();
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void a(String str, Object obj) {
            try {
                this.b.put(str, obj);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void a(JSONObject jSONObject, JSONObject jSONObject2) {
            synchronized (w.k) {
                if (jSONObject.has("tags")) {
                    JSONObject jSONObject3;
                    if (this.b.has("tags")) {
                        try {
                            jSONObject3 = new JSONObject(this.b.optString("tags"));
                        } catch (JSONException e) {
                            jSONObject3 = new JSONObject();
                        }
                    } else {
                        jSONObject3 = new JSONObject();
                    }
                    JSONObject optJSONObject = jSONObject.optJSONObject("tags");
                    Iterator keys = optJSONObject.keys();
                    while (keys.hasNext()) {
                        try {
                            String str = (String) keys.next();
                            if ("".equals(optJSONObject.optString(str))) {
                                jSONObject3.remove(str);
                            } else {
                                if (jSONObject2 != null) {
                                    if (jSONObject2.has(str)) {
                                    }
                                }
                                jSONObject3.put(str, optJSONObject.optString(str));
                            }
                        } catch (Throwable th) {
                        }
                    }
                    if (jSONObject3.toString().equals("{}")) {
                        this.b.remove("tags");
                    } else {
                        this.b.put("tags", jSONObject3);
                    }
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void b(String str, Object obj) {
            try {
                this.a.put(str, obj);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    w() {
    }

    private static JSONObject a(JSONObject jSONObject) {
        if (!jSONObject.has("tags")) {
            return null;
        }
        JSONObject jSONObject2 = new JSONObject();
        synchronized (k) {
            JSONObject optJSONObject = jSONObject.optJSONObject("tags");
            Iterator keys = optJSONObject.keys();
            while (keys.hasNext()) {
                String str = (String) keys.next();
                try {
                    Object obj = optJSONObject.get(str);
                    if (!"".equals(obj)) {
                        jSONObject2.put(str, obj);
                    }
                } catch (Throwable th) {
                }
            }
        }
        return jSONObject2;
    }

    public static void a() {
        for (Entry value : a.entrySet()) {
            ((b) value.getValue()).b();
        }
        if (f != null) {
            f.d();
        }
    }

    static void a(Context context) {
        h = context;
        synchronized (k) {
            w wVar;
            if (e == null) {
                wVar = new w();
                wVar.getClass();
                e = new c(wVar, "CURRENT_STATE", true, null);
            }
            if (f == null) {
                wVar = new w();
                wVar.getClass();
                f = new c(wVar, "TOSYNC_STATE", true, null);
            }
        }
    }

    static void a(c cVar, boolean z) {
        JSONObject jSONObject = l().b;
        b(jSONObject, cVar.b, jSONObject, null);
        jSONObject = l().a;
        b(jSONObject, cVar.a, jSONObject, null);
        boolean z2 = c || z || t.e() == null;
        c = z2;
    }

    private static void a(String str, JSONArray jSONArray, JSONArray jSONArray2, JSONObject jSONObject) {
        int i = 0;
        if (str.endsWith("_a") || str.endsWith("_d")) {
            jSONObject.put(str, jSONArray);
            return;
        }
        String str2;
        String b = b(jSONArray);
        JSONArray jSONArray3 = new JSONArray();
        JSONArray jSONArray4 = new JSONArray();
        String b2 = jSONArray2 == null ? null : b(jSONArray2);
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            str2 = (String) jSONArray.get(i2);
            if (jSONArray2 == null || !b2.contains(str2)) {
                jSONArray3.put(str2);
            }
        }
        if (jSONArray2 != null) {
            while (i < jSONArray2.length()) {
                str2 = jSONArray2.getString(i);
                if (!b.contains(str2)) {
                    jSONArray4.put(str2);
                }
                i++;
            }
        }
        if (!jSONArray3.toString().equals("[]")) {
            jSONObject.put(str + "_a", jSONArray3);
        }
        if (!jSONArray4.toString().equals("[]")) {
            jSONObject.put(str + "_d", jSONArray4);
        }
    }

    static void a(boolean z) {
        String e = t.e();
        boolean z2 = e == null || (c && !d);
        final JSONObject a = e.a(f, z2);
        final JSONObject b = b(e.a, f.a, null, null);
        if (a == null) {
            e.c(b, null);
            return;
        }
        f.d();
        if (e == null && !c) {
            return;
        }
        if (!z2 || z) {
            v.c("players/" + e, a, new a() {
                /* Access modifiers changed, original: 0000 */
                public void a(int i, String str, Throwable th) {
                    t.a(d.WARN, "Failed last request. statusCode: " + i + "\nresponse: " + str);
                    if (w.b(i, str, "No user with this id found")) {
                        w.f();
                    } else {
                        w.b(Integer.valueOf(0)).c();
                    }
                }

                /* Access modifiers changed, original: 0000 */
                public void a(String str) {
                    w.e.c(b, a);
                }
            });
            return;
        }
        String str = e == null ? "players" : "players/" + e + "/on_session";
        d = true;
        v.d(str, a, new a() {
            /* Access modifiers changed, original: 0000 */
            public void a(int i, String str, Throwable th) {
                w.d = false;
                t.a(d.WARN, "Failed last request. statusCode: " + i + "\nresponse: " + str);
                if (w.b(i, str, "not a valid device_type")) {
                    w.f();
                } else {
                    w.b(Integer.valueOf(0)).c();
                }
            }

            /* Access modifiers changed, original: 0000 */
            public void a(String str) {
                w.c = w.d = false;
                w.e.c(b, a);
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.has("id")) {
                        String optString = jSONObject.optString("id");
                        t.b(optString);
                        t.a(d.INFO, "Device registered, UserId = " + optString);
                    } else {
                        t.a(d.INFO, "session sent, UserId = " + t.e());
                    }
                    t.j();
                } catch (Throwable th) {
                    t.a(d.ERROR, "ERROR parsing on_session or create JSON Response.", th);
                }
            }
        });
    }

    static a b(boolean z) {
        if (z) {
            v.b("players/" + t.e(), new a() {
                /* Access modifiers changed, original: 0000 */
                public void a(String str) {
                    w.b = true;
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        if (jSONObject.has("tags")) {
                            JSONObject a = w.b(w.e.b.optJSONObject("tags"), w.f.b.optJSONObject("tags"), null, null);
                            w.e.b.put("tags", jSONObject.optJSONObject("tags"));
                            w.e.d();
                            w.f.a(jSONObject, a);
                            w.f.d();
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            });
        }
        return new a(b, a(f.b));
    }

    private static b b(Integer num) {
        b bVar;
        synchronized (g) {
            if (!a.containsKey(num)) {
                a.put(num, new b(num.intValue()));
            }
            bVar = (b) a.get(num);
        }
        return bVar;
    }

    static c b() {
        w wVar = new w();
        wVar.getClass();
        return new c(wVar, "nonPersist", false, null);
    }

    private static String b(JSONArray jSONArray) {
        String str = "[";
        int i = 0;
        while (i < jSONArray.length()) {
            try {
                str = str + "\"" + jSONArray.getString(i) + "\"";
                i++;
            } catch (Throwable th) {
            }
        }
        return str + "]";
    }

    private static JSONObject b(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, Set<String> set) {
        JSONObject c;
        synchronized (k) {
            c = c(jSONObject, jSONObject2, jSONObject3, set);
        }
        return c;
    }

    private static boolean b(int i, String str, String str2) {
        if (i != HttpStatus.SC_BAD_REQUEST || str == null) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            return jSONObject.has("errors") && jSONObject.optString("errors").contains(str2);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    private static JSONObject c(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, Set<String> set) {
        if (jSONObject == null) {
            return null;
        }
        if (jSONObject2 == null) {
            return jSONObject3;
        }
        Iterator keys = jSONObject2.keys();
        JSONObject jSONObject4 = jSONObject3 != null ? jSONObject3 : new JSONObject();
        while (keys.hasNext()) {
            try {
                String str = (String) keys.next();
                Object obj = jSONObject2.get(str);
                if (jSONObject.has(str)) {
                    if (obj instanceof JSONObject) {
                        JSONObject jSONObject5 = jSONObject.getJSONObject(str);
                        JSONObject jSONObject6 = (jSONObject3 == null || !jSONObject3.has(str)) ? null : jSONObject3.getJSONObject(str);
                        String jSONObject7 = c(jSONObject5, (JSONObject) obj, jSONObject6, set).toString();
                        if (!jSONObject7.equals("{}")) {
                            jSONObject4.put(str, new JSONObject(jSONObject7));
                        }
                    } else if (obj instanceof JSONArray) {
                        a(str, (JSONArray) obj, jSONObject.getJSONArray(str), jSONObject4);
                    } else if (set == null || !set.contains(str)) {
                        Object obj2 = jSONObject.get(str);
                        if (!obj.equals(obj2)) {
                            if (!(obj2 instanceof Integer) || "".equals(obj)) {
                                jSONObject4.put(str, obj);
                            } else if (((Number) obj2).doubleValue() != ((Number) obj).doubleValue()) {
                                jSONObject4.put(str, obj);
                            }
                        }
                    } else {
                        jSONObject4.put(str, obj);
                    }
                } else if (obj instanceof JSONObject) {
                    jSONObject4.put(str, new JSONObject(obj.toString()));
                } else if (obj instanceof JSONArray) {
                    a(str, (JSONArray) obj, null, jSONObject4);
                } else {
                    jSONObject4.put(str, obj);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jSONObject4;
    }

    static boolean c() {
        return f.b() > 0;
    }

    static String d() {
        return f.b.optString("identifier", null);
    }

    static void e() {
        t.a(null);
        e.b = new JSONObject();
        e.d();
        t.a(-3660);
    }

    static void f() {
        e();
        c = true;
        m();
    }

    private static c l() {
        if (f == null) {
            f = e.a("TOSYNC_STATE");
        }
        m();
        return f;
    }

    private static void m() {
        b(Integer.valueOf(0)).a();
    }
}
