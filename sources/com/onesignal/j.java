package com.onesignal;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.v4.content.WakefulBroadcastReceiver;
import com.onesignal.k.a;
import com.onesignal.r.b;
import com.onesignal.t.d;
import java.util.ArrayList;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class j {
    static int a(Context context, boolean z, JSONObject jSONObject, a aVar) {
        boolean z2 = true;
        if (!(t.g() && t.i())) {
            z2 = false;
        }
        int nextInt = (aVar == null || aVar.b == null) ? new Random().nextInt() : aVar.b.intValue();
        g.a(context, z, nextInt, jSONObject, z2, aVar);
        if (!z) {
            a(context, jSONObject, false, nextInt);
            try {
                JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
                jSONObject2.put("notificationId", nextInt);
                t.a(b(jSONObject2), true, z2);
            } catch (Throwable th) {
            }
        }
        return nextInt;
    }

    static r a(JSONObject jSONObject) {
        r rVar = new r();
        try {
            JSONObject jSONObject2 = new JSONObject(jSONObject.optString("custom"));
            rVar.a = jSONObject2.optString("i");
            rVar.t = jSONObject.toString();
            rVar.d = jSONObject2.optJSONObject("a");
            rVar.i = jSONObject2.optString("u", null);
            rVar.c = jSONObject.optString("alert", null);
            rVar.b = jSONObject.optString("title", null);
            rVar.e = jSONObject.optString("sicon", null);
            rVar.g = jSONObject.optString("bicon", null);
            rVar.f = jSONObject.optString("licon", null);
            rVar.j = jSONObject.optString("sound", null);
            rVar.m = jSONObject.optString("grp", null);
            rVar.n = jSONObject.optString("grp_msg", null);
            rVar.h = jSONObject.optString("bgac", null);
            rVar.k = jSONObject.optString("ledc", null);
            String optString = jSONObject.optString("vis", null);
            if (optString != null) {
                rVar.l = Integer.parseInt(optString);
            }
            rVar.p = jSONObject.optString("from", null);
            rVar.s = jSONObject.optInt("pri", 0);
            optString = jSONObject.optString("collapse_key", null);
            if (!"do_not_collapse".equals(optString)) {
                rVar.r = optString;
            }
            a(rVar);
        } catch (Throwable th) {
            t.a(d.ERROR, "Error assigning OSNotificationPayload values!", th);
        }
        try {
            a(rVar, jSONObject);
        } catch (Throwable th2) {
            t.a(d.ERROR, "Error assigning OSNotificationPayload.backgroundImageLayout values!", th2);
        }
        return rVar;
    }

    static JSONArray a(Bundle bundle) {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(b(bundle));
        return jSONArray;
    }

    static void a(Context context, Bundle bundle, a aVar) {
        try {
            boolean z = bundle.getBoolean("restoring", false);
            String string = bundle.getString("json_payload");
            if (string == null) {
                t.a(d.ERROR, "json_payload key is nonexistent from bundle passed to ProcessFromGCMIntentService: " + bundle);
                return;
            }
            JSONObject jSONObject = new JSONObject(string);
            if (z || !t.a(context, jSONObject)) {
                if (bundle.containsKey("android_notif_id")) {
                    if (aVar == null) {
                        aVar = new a();
                    }
                    aVar.b = Integer.valueOf(bundle.getInt("android_notif_id"));
                }
                a(context, z, jSONObject, aVar);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    static void a(Context context, Bundle bundle, boolean z, int i) {
        a(context, b(bundle), z, i);
    }

    static void a(Context context, JSONObject jSONObject, boolean z, int i) {
        try {
            JSONObject jSONObject2 = new JSONObject(jSONObject.optString("custom"));
            SQLiteDatabase writableDatabase = u.a(context).getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                a(writableDatabase);
                ContentValues contentValues = new ContentValues();
                contentValues.put("notification_id", jSONObject2.optString("i"));
                if (jSONObject.has("grp")) {
                    contentValues.put("group_id", jSONObject.optString("grp"));
                }
                contentValues.put("opened", Integer.valueOf(z ? 1 : 0));
                if (!z) {
                    contentValues.put("android_notification_id", Integer.valueOf(i));
                }
                if (jSONObject.has("title")) {
                    contentValues.put("title", jSONObject.optString("title"));
                }
                contentValues.put("message", jSONObject.optString("alert"));
                contentValues.put("full_data", jSONObject.toString());
                writableDatabase.insertOrThrow("notification", null, contentValues);
                if (!z) {
                    f.a(writableDatabase, context);
                }
                writableDatabase.setTransactionSuccessful();
            } catch (Exception e) {
                t.a(d.ERROR, "Error saving notification record! ", e);
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    static void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.delete("notification", "created_time < " + ((System.currentTimeMillis() / 1000) - 2419200), null);
    }

    private static void a(r rVar) {
        if (rVar.d != null && rVar.d.has("actionButtons")) {
            JSONArray jSONArray = rVar.d.getJSONArray("actionButtons");
            rVar.o = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                r.a aVar = new r.a();
                aVar.a = jSONObject.optString("id", null);
                aVar.b = jSONObject.optString("text", null);
                aVar.c = jSONObject.optString("icon", null);
                rVar.o.add(aVar);
            }
            rVar.d.remove("actionSelected");
            rVar.d.remove("actionButtons");
        }
    }

    private static void a(r rVar, JSONObject jSONObject) {
        String optString = jSONObject.optString("bg_img", null);
        if (optString != null) {
            JSONObject jSONObject2 = new JSONObject(optString);
            rVar.q = new b();
            rVar.q.a = jSONObject2.optString("img");
            rVar.q.b = jSONObject2.optString("tc");
            rVar.q.c = jSONObject2.optString("bc");
        }
    }

    static boolean a(Context context, final Bundle bundle) {
        if (t.a(bundle) == null) {
            return true;
        }
        c(bundle);
        Intent a = k.a(context);
        if (a != null) {
            a.putExtra("json_payload", b(bundle).toString());
            WakefulBroadcastReceiver.startWakefulService(context, a);
            return true;
        }
        boolean z = (bundle.getString("alert") == null || "".equals(bundle.getString("alert"))) ? false : true;
        z = a(z);
        if (!z) {
            if (t.a(context, b(bundle))) {
                return true;
            }
            a(context, bundle, true, -1);
            new Thread(new Runnable() {
                public void run() {
                    t.a(j.a(bundle), false, false);
                }
            }, "OS_PROC_BUNDLE").start();
        }
        return !z;
    }

    static boolean a(boolean z) {
        return z && (t.f() || t.g() || !t.i());
    }

    static JSONArray b(JSONObject jSONObject) {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(jSONObject);
        return jSONArray;
    }

    static JSONObject b(Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            try {
                jSONObject.put(str, bundle.get(str));
            } catch (JSONException e) {
                t.a(d.ERROR, "bundleAsJSONObject error for key: " + str, e);
            }
        }
        return jSONObject;
    }

    static void c(Bundle bundle) {
        if (bundle.containsKey("o")) {
            try {
                JSONObject jSONObject = new JSONObject(bundle.getString("custom"));
                JSONObject jSONObject2 = jSONObject.has("a") ? jSONObject.getJSONObject("a") : new JSONObject();
                JSONArray jSONArray = new JSONArray(bundle.getString("o"));
                bundle.remove("o");
                for (int i = 0; i < jSONArray.length(); i++) {
                    Object string;
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                    String string2 = jSONObject3.getString("n");
                    jSONObject3.remove("n");
                    if (jSONObject3.has("i")) {
                        string = jSONObject3.getString("i");
                        jSONObject3.remove("i");
                    } else {
                        String string3 = string2;
                    }
                    jSONObject3.put("id", string3);
                    jSONObject3.put("text", string2);
                    if (jSONObject3.has("p")) {
                        jSONObject3.put("icon", jSONObject3.getString("p"));
                        jSONObject3.remove("p");
                    }
                }
                jSONObject2.put("actionButtons", jSONArray);
                jSONObject2.put("actionSelected", "__DEFAULT__");
                if (!jSONObject.has("a")) {
                    jSONObject.put("a", jSONObject2);
                }
                bundle.putString("custom", jSONObject.toString());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }
}
