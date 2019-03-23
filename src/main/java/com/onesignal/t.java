package com.onesignal;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Base64;
import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONObject;

public class t {
    private static Double A;
    private static Double B;
    private static Float C;
    private static Integer D;
    private static boolean E = true;
    private static b F;
    private static boolean G;
    private static boolean H;
    private static boolean I;
    private static JSONObject J;
    private static int K = 0;
    static String a;
    static String b;
    static Context c;
    static boolean d;
    public static String e = "native";
    static a f;
    static Collection<JSONArray> g = new ArrayList();
    static boolean h;
    private static d i = d.NONE;
    private static d j = d.WARN;
    private static String k = null;
    private static int l;
    private static boolean m;
    private static c n;
    private static long o = 1;
    private static long p = -1;
    private static ad q;
    private static ac r;
    private static d s = new c();
    private static int t;
    private static s u;
    private static String v;
    private static boolean w;
    private static boolean x;
    private static boolean y;
    private static boolean z;

    public interface c {
        void a(String str, String str2);
    }

    public static class a {
        Context a;
        e b;
        f c;
        boolean d;
        boolean e;
        g f;

        private a() {
            this.f = g.InAppAlert;
        }

        private a(Context context) {
            this.f = g.InAppAlert;
            this.a = context;
        }

        /* synthetic */ a(Context context, AnonymousClass1 anonymousClass1) {
            this(context);
        }

        public void a() {
            t.b(this);
        }
    }

    public interface b {
        void a(JSONObject jSONObject);
    }

    public enum d {
        NONE,
        FATAL,
        ERROR,
        WARN,
        INFO,
        DEBUG,
        VERBOSE
    }

    public interface e {
        void a(q qVar);
    }

    public interface f {
        void a(o oVar);
    }

    public enum g {
        None,
        InAppAlert,
        Notification
    }

    private static void D() {
        boolean z = false;
        if (!H) {
            H = true;
            w = false;
            if (I) {
                x = false;
            }
            E();
            G();
            if (z || f.d) {
                z = true;
            }
            z = z;
        }
    }

    private static void E() {
        boolean z = true;
        if (E) {
            Context context = c;
            if (!f.d || z) {
                z = false;
            }
            i.a(context, z, new b() {
                public void a(Double d, Double d2, Float f, Integer num) {
                    t.A = d;
                    t.B = d2;
                    t.C = f;
                    t.D = num;
                    t.x = true;
                    t.J();
                }
            });
            return;
        }
        x = true;
        J();
    }

    private static void F() {
        (t == 2 ? new y() : new z()).a(c, b, new com.onesignal.x.a() {
            public void a(String str, int i) {
                if (i < 1) {
                    if (w.d() == null && (t.l == 1 || t.l < -6)) {
                        t.l = i;
                    }
                } else if (t.l < -6) {
                    t.l = i;
                }
                t.v = str;
                t.w = true;
                t.J();
            }
        });
    }

    private static void G() {
        if (y) {
            F();
            return;
        }
        AnonymousClass5 anonymousClass5 = new a() {
            /* Access modifiers changed, original: 0000 */
            public void a(int i, String str, Throwable th) {
                Thread thread = new Thread(new Runnable() {
                    public void run() {
                        try {
                            Thread.sleep((long) ((t.K * 10000) + 30000));
                        } catch (Throwable th) {
                        }
                        t.n();
                        t.G();
                    }
                }, "OS_PARAMS_REQUEST");
            }

            /* Access modifiers changed, original: 0000 */
            public void a(String str) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.has("android_sender_id")) {
                        t.b = jSONObject.getString("android_sender_id");
                    }
                    t.J = jSONObject.getJSONObject("awl_list");
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                t.y = true;
                t.F();
            }
        };
        String str = "apps/" + a + "/android_params.js";
        String e = e();
        if (e != null) {
            str = str + "?player_id=" + e;
        }
        v.a(str, anonymousClass5);
    }

    private static void H() {
        for (JSONArray b : g) {
            b(b, true, false);
        }
        g.clear();
    }

    private static int I() {
        TimeZone timeZone = Calendar.getInstance().getTimeZone();
        int rawOffset = timeZone.getRawOffset();
        if (timeZone.inDaylightTime(new Date())) {
            rawOffset += timeZone.getDSTSavings();
        }
        return rawOffset / 1000;
    }

    private static void J() {
        a(d.DEBUG, "registerUser: registerForPushFired:" + w + ", locationFired: " + x + ", awlFired: " + y);
        if (w && x && y) {
            new Thread(new Runnable() {
                public void run() {
                    c b = w.b();
                    Object packageName = t.c.getPackageName();
                    PackageManager packageManager = t.c.getPackageManager();
                    b.a("app_id", t.a);
                    b.a("identifier", t.v);
                    Object a = t.s.a(t.c);
                    if (a != null) {
                        b.a("ad_id", a);
                    }
                    b.a("device_os", VERSION.RELEASE);
                    b.a("timezone", Integer.valueOf(t.I()));
                    b.a("language", s.d());
                    b.a("sdk", (Object) "030403");
                    b.a("sdk_type", t.e);
                    b.a("android_package", packageName);
                    b.a("device_model", Build.MODEL);
                    b.a("device_type", Integer.valueOf(t.t));
                    b.b("subscribableStatus", Integer.valueOf(t.l));
                    try {
                        b.a("game_version", Integer.valueOf(packageManager.getPackageInfo(packageName, 0).versionCode));
                    } catch (NameNotFoundException e) {
                    }
                    try {
                        List installedPackages = packageManager.getInstalledPackages(0);
                        Object jSONArray = new JSONArray();
                        MessageDigest instance = MessageDigest.getInstance("SHA-256");
                        for (int i = 0; i < installedPackages.size(); i++) {
                            instance.update(((PackageInfo) installedPackages.get(i)).packageName.getBytes());
                            String encodeToString = Base64.encodeToString(instance.digest(), 2);
                            if (t.J.has(encodeToString)) {
                                jSONArray.put(encodeToString);
                            }
                        }
                        b.a("pkgs", jSONArray);
                    } catch (Throwable th) {
                    }
                    b.a("net_type", t.u.b());
                    b.a("carrier", t.u.c());
                    b.a("rooted", Boolean.valueOf(ab.a()));
                    b.a("lat", t.A);
                    b.a("long", t.B);
                    b.a("loc_acc", t.C);
                    b.a("loc_type", t.D);
                    w.a(b, t.I);
                    t.H = false;
                }
            }, "OS_REG_USER").start();
        }
    }

    private static void K() {
        if (n != null) {
            String d = w.d();
            if (!w.c()) {
                d = null;
            }
            String e = e();
            if (e != null) {
                n.a(e, d);
                if (d != null) {
                    n = null;
                }
            }
        }
    }

    private static boolean L() {
        return (System.currentTimeMillis() - d(c)) / 1000 >= 30;
    }

    private static void M() {
        if (!h) {
            h = true;
            c.startService(new Intent(c, SyncService.class));
        }
    }

    public static a a(Context context) {
        return new a(context, null);
    }

    static String a(Bundle bundle) {
        if (bundle.isEmpty()) {
            return null;
        }
        try {
            if (bundle.containsKey("custom")) {
                JSONObject jSONObject = new JSONObject(bundle.getString("custom"));
                if (jSONObject.has("i")) {
                    return jSONObject.optString("i", null);
                }
                a(d.DEBUG, "Not a OneSignal formatted GCM message. No 'i' field in custom.");
                return null;
            }
            a(d.DEBUG, "Not a OneSignal formatted GCM message. No 'custom' field in the bundle.");
            return null;
        } catch (Throwable th) {
            a(d.DEBUG, "Could not parse bundle, probably not a OneSignal notification.", th);
            return null;
        }
    }

    static String a(JSONObject jSONObject) {
        String str = null;
        try {
            return new JSONObject(jSONObject.optString("custom")).optString("i", null);
        } catch (Throwable th) {
            return str;
        }
    }

    static void a() {
        M();
        m = true;
        o = SystemClock.elapsedRealtime();
        I = L();
        a(System.currentTimeMillis());
        D();
        if (q != null) {
            q.a();
        }
        n.a(c);
    }

    static void a(long j) {
        Editor edit = e(c).edit();
        edit.putLong("OS_LAST_SESSION_TIME", j);
        edit.apply();
    }

    static void a(long j, boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_id", a);
            jSONObject.put("type", 1);
            jSONObject.put("state", "ping");
            jSONObject.put("active_time", j);
            c(jSONObject);
            String str = "players/" + e() + "/on_focus";
            AnonymousClass7 anonymousClass7 = new a() {
                /* Access modifiers changed, original: 0000 */
                public void a(int i, String str, Throwable th) {
                    t.b("sending on_focus Failed", i, th, str);
                }

                /* Access modifiers changed, original: 0000 */
                public void a(String str) {
                    t.c(0);
                }
            };
            if (z) {
                v.d(str, jSONObject, anonymousClass7);
            } else {
                v.b(str, jSONObject, anonymousClass7);
            }
        } catch (Throwable th) {
            a(d.ERROR, "Generating on_focus:JSON Failed.", th);
        }
    }

    public static void a(Context context, String str, String str2, e eVar, f fVar) {
        if (f == null) {
            f = new a();
        }
        f.b = eVar;
        f.c = fVar;
        b = str;
        u = new s();
        t = u.a();
        l = u.a(t, str2);
        if (l != -999) {
            if (d) {
                if (context != null) {
                    c = context.getApplicationContext();
                }
                if (f.b != null) {
                    H();
                    return;
                }
                return;
            }
            boolean z = context instanceof Activity;
            m = z;
            a = str2;
            c = context.getApplicationContext();
            if (z) {
                a.b = (Activity) context;
                n.a(c);
                M();
            } else {
                a.a = true;
            }
            o = SystemClock.elapsedRealtime();
            w.a(c);
            if (VERSION.SDK_INT > 13) {
                ((Application) c).registerActivityLifecycleCallbacks(new b());
            } else {
                ActivityLifecycleListenerCompat.startListener();
            }
            try {
                Class.forName("com.amazon.device.iap.PurchasingListener");
                r = new ac(c);
            } catch (ClassNotFoundException e) {
            }
            String d = d();
            if (d == null) {
                f.a(0, c);
                d(a);
            } else if (!d.equals(a)) {
                a(d.DEBUG, "APP ID changed, clearing user id as it is no longer valid.");
                d(a);
                w.e();
            }
            if (m || e() == null) {
                I = L();
                a(System.currentTimeMillis());
                D();
            }
            if (f.b != null) {
                H();
            }
            if (ad.a(c)) {
                q = new ad(c);
            }
            d = true;
        }
    }

    public static void a(Context context, JSONArray jSONArray, boolean z) {
        b(context, jSONArray);
        boolean z2 = false;
        boolean equals = "DISABLE".equals(s.a(context, "com.onesignal.NotificationOpened.DEFAULT"));
        if (!equals) {
            z2 = a(context, jSONArray);
        }
        b(jSONArray, true, z);
        if (!z && !z2 && !equals) {
            f(context);
        }
    }

    private static void a(final q qVar) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            f.b.a(qVar);
        } else {
            a(new Runnable() {
                public void run() {
                    t.f.b.a(qVar);
                }
            });
        }
    }

    private static void a(final b bVar) {
        if (bVar != null) {
            new Thread(new Runnable() {
                public void run() {
                    a b = w.b(!t.G);
                    if (b.a) {
                        t.G = true;
                    }
                    if (b.b == null || b.toString().equals("{}")) {
                        bVar.a(null);
                    } else {
                        bVar.a(b.b);
                    }
                }
            }, "OS_GETTAGS_CALLBACK").start();
        }
    }

    public static void a(c cVar) {
        n = cVar;
        if (e() != null) {
            K();
        }
    }

    static void a(d dVar, String str) {
        a(dVar, str, null);
    }

    static void a(final d dVar, String str, Throwable th) {
        if (dVar.compareTo(j) < 1) {
            if (dVar == d.VERBOSE) {
                Log.v("OneSignal", str, th);
            } else if (dVar == d.DEBUG) {
                Log.d("OneSignal", str, th);
            } else if (dVar == d.INFO) {
                Log.i("OneSignal", str, th);
            } else if (dVar == d.WARN) {
                Log.w("OneSignal", str, th);
            } else if (dVar == d.ERROR || dVar == d.FATAL) {
                Log.e("OneSignal", str, th);
            }
        }
        if (dVar.compareTo(i) < 1 && a.b != null) {
            try {
                String str2 = str + "\n";
                if (th != null) {
                    str2 = str2 + th.getMessage();
                    StringWriter stringWriter = new StringWriter();
                    th.printStackTrace(new PrintWriter(stringWriter));
                    str2 = str2 + stringWriter.toString();
                }
                a(new Runnable() {
                    public void run() {
                        if (a.b != null) {
                            new Builder(a.b).setTitle(dVar.toString()).setMessage(str2).show();
                        }
                    }
                });
            } catch (Throwable th2) {
                Log.e("OneSignal", "Error showing logging message.", th2);
            }
        }
    }

    static void a(Runnable runnable) {
        new Handler(Looper.getMainLooper()).post(runnable);
    }

    static void a(String str) {
        k = str;
        if (c != null) {
            Editor edit = e(c).edit();
            edit.putString("GT_PLAYER_ID", k);
            edit.commit();
        }
    }

    static void a(JSONArray jSONArray, boolean z, a aVar) {
        if (e() != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("app_id", a);
                if (z) {
                    jSONObject.put("existing", true);
                }
                jSONObject.put("purchases", jSONArray);
                v.b("players/" + e() + "/on_purchase", jSONObject, aVar);
            } catch (Throwable th) {
                a(d.ERROR, "Failed to generate JSON for sendPurchases.", th);
            }
        }
    }

    static void a(JSONArray jSONArray, boolean z, boolean z2) {
        if (f != null && f.c != null) {
            f.c.a(c(jSONArray, z, z2).a);
        }
    }

    static void a(boolean z) {
        m = false;
        if (d) {
            if (r != null) {
                r.a();
            }
            if (o != -1) {
                long elapsedRealtime = (long) ((((double) (SystemClock.elapsedRealtime() - o)) / 1000.0d) + 0.5d);
                o = SystemClock.elapsedRealtime();
                if (elapsedRealtime >= 0 && elapsedRealtime <= 86400) {
                    if (c == null) {
                        a(d.ERROR, "Android Context not found, please call OneSignal.init when your app starts.");
                        return;
                    }
                    a(System.currentTimeMillis());
                    elapsedRealtime += h();
                    if (z || elapsedRealtime < 60 || e() == null) {
                        c(elapsedRealtime);
                    } else {
                        a(elapsedRealtime, true);
                    }
                }
            }
        }
    }

    private static boolean a(Context context, JSONArray jSONArray) {
        boolean z = false;
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if (jSONObject.has("custom")) {
                    JSONObject jSONObject2 = new JSONObject(jSONObject.optString("custom"));
                    if (jSONObject2.has("u")) {
                        String optString = jSONObject2.optString("u", null);
                        if (!optString.contains("://")) {
                            optString = "http://" + optString;
                        }
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(optString));
                        intent.addFlags(1476919296);
                        context.startActivity(intent);
                        z = true;
                    }
                }
            } catch (Throwable th) {
                a(d.ERROR, "Error parsing JSON item " + i + "/" + length + " for launching a web URL.", th);
            }
        }
        return z;
    }

    static boolean a(Context context, JSONObject jSONObject) {
        String a = a(jSONObject);
        return a == null || a(a, context);
    }

    private static boolean a(d dVar) {
        return dVar.compareTo(i) < 1 || dVar.compareTo(j) < 1;
    }

    static boolean a(String str, Context context) {
        if (str == null || "".equals(str)) {
            return false;
        }
        Cursor query = u.a(context).getReadableDatabase().query("notification", new String[]{"notification_id"}, "notification_id = ?", new String[]{str}, null, null, null);
        boolean moveToFirst = query.moveToFirst();
        query.close();
        if (!moveToFirst) {
            return false;
        }
        a(d.DEBUG, "Duplicate GCM message received, skip processing of " + str);
        return true;
    }

    private static void b(Context context, JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if (jSONObject.has("custom")) {
                    JSONObject jSONObject2 = new JSONObject(jSONObject.optString("custom", null));
                    if (jSONObject2.has("i")) {
                        String optString = jSONObject2.optString("i", null);
                        jSONObject2 = new JSONObject();
                        jSONObject2.put("app_id", g(context));
                        jSONObject2.put("player_id", h(context));
                        jSONObject2.put("opened", true);
                        v.a("notifications/" + optString, jSONObject2, new a() {
                            /* Access modifiers changed, original: 0000 */
                            public void a(int i, String str, Throwable th) {
                                t.b("sending Notification Opened Failed", i, th, str);
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                a(d.ERROR, "Failed to generate JSON to send notification opened.", th);
            }
        }
    }

    private static void b(a aVar) {
        f = aVar;
        Context context = f.a;
        f.a = null;
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            String string = bundle.getString("onesignal_google_project_number");
            if (string != null && string.length() > 4) {
                string = string.substring(4);
            }
            a(context, string, bundle.getString("onesignal_app_id"), f.b, f.c);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    static void b(String str) {
        a(str);
        c();
        a(F);
    }

    private static void b(String str, int i, Throwable th, String str2) {
        String str3 = "";
        if (str2 != null && a(d.INFO)) {
            str3 = "\n" + str2 + "\n";
        }
        a(d.WARN, "HTTP code: " + i + " " + str + str3, th);
    }

    private static void b(JSONArray jSONArray, boolean z, boolean z2) {
        if (f == null || f.b == null) {
            g.add(jSONArray);
        } else {
            a(c(jSONArray, z, z2));
        }
    }

    static boolean b() {
        return m;
    }

    static boolean b(Context context) {
        return e(context).getBoolean("GT_VIBRATE_ENABLED", true);
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0058 A:{SYNTHETIC, Splitter:B:14:0x0058} */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x004e  */
    @android.support.annotation.NonNull
    private static com.onesignal.q c(org.json.JSONArray r12, boolean r13, boolean r14) {
        /*
        r3 = 0;
        r1 = 0;
        r5 = r12.length();
        r0 = 1;
        r6 = new com.onesignal.q;
        r6.<init>();
        r7 = new com.onesignal.o;
        r7.<init>();
        r2 = i();
        r7.a = r2;
        r7.b = r13;
        r2 = r12.optJSONObject(r1);
        r4 = "notificationId";
        r2 = r2.optInt(r4);
        r7.c = r2;
        r4 = r1;
    L_0x0026:
        if (r4 >= r5) goto L_0x0098;
    L_0x0028:
        r2 = r12.getJSONObject(r4);	 Catch:{ Throwable -> 0x00c0 }
        r8 = "custom";
        r8 = r2.has(r8);	 Catch:{ Throwable -> 0x00c0 }
        if (r8 == 0) goto L_0x00c5;
    L_0x0034:
        r8 = com.onesignal.j.a(r2);	 Catch:{ Throwable -> 0x00c0 }
        r7.d = r8;	 Catch:{ Throwable -> 0x00c0 }
        if (r3 != 0) goto L_0x00c5;
    L_0x003c:
        r8 = "actionSelected";
        r8 = r2.has(r8);	 Catch:{ Throwable -> 0x00c0 }
        if (r8 == 0) goto L_0x00c5;
    L_0x0044:
        r8 = "actionSelected";
        r9 = 0;
        r3 = r2.optString(r8, r9);	 Catch:{ Throwable -> 0x00c0 }
        r2 = r3;
    L_0x004c:
        if (r0 == 0) goto L_0x0058;
    L_0x004e:
        r0 = r1;
    L_0x004f:
        r11 = r2;
        r2 = r0;
        r0 = r11;
    L_0x0052:
        r3 = r4 + 1;
        r4 = r3;
        r3 = r0;
        r0 = r2;
        goto L_0x0026;
    L_0x0058:
        r3 = r7.f;	 Catch:{ Throwable -> 0x006b }
        if (r3 != 0) goto L_0x0063;
    L_0x005c:
        r3 = new java.util.ArrayList;	 Catch:{ Throwable -> 0x006b }
        r3.<init>();	 Catch:{ Throwable -> 0x006b }
        r7.f = r3;	 Catch:{ Throwable -> 0x006b }
    L_0x0063:
        r3 = r7.f;	 Catch:{ Throwable -> 0x006b }
        r8 = r7.d;	 Catch:{ Throwable -> 0x006b }
        r3.add(r8);	 Catch:{ Throwable -> 0x006b }
        goto L_0x004f;
    L_0x006b:
        r3 = move-exception;
    L_0x006c:
        r8 = com.onesignal.t.d.ERROR;
        r9 = new java.lang.StringBuilder;
        r9.<init>();
        r10 = "Error parsing JSON item ";
        r9 = r9.append(r10);
        r9 = r9.append(r4);
        r10 = "/";
        r9 = r9.append(r10);
        r9 = r9.append(r5);
        r10 = " for callback.";
        r9 = r9.append(r10);
        r9 = r9.toString();
        a(r8, r9, r3);
        r11 = r2;
        r2 = r0;
        r0 = r11;
        goto L_0x0052;
    L_0x0098:
        r6.a = r7;
        r0 = new com.onesignal.p;
        r0.<init>();
        r6.b = r0;
        r0 = r6.b;
        r0.b = r3;
        r1 = r6.b;
        if (r3 == 0) goto L_0x00b6;
    L_0x00a9:
        r0 = com.onesignal.p.a.ActionTaken;
    L_0x00ab:
        r1.a = r0;
        if (r14 == 0) goto L_0x00b9;
    L_0x00af:
        r0 = r6.a;
        r1 = com.onesignal.o.a.InAppAlert;
        r0.e = r1;
    L_0x00b5:
        return r6;
    L_0x00b6:
        r0 = com.onesignal.p.a.Opened;
        goto L_0x00ab;
    L_0x00b9:
        r0 = r6.a;
        r1 = com.onesignal.o.a.Notification;
        r0.e = r1;
        goto L_0x00b5;
    L_0x00c0:
        r2 = move-exception;
        r11 = r2;
        r2 = r3;
        r3 = r11;
        goto L_0x006c;
    L_0x00c5:
        r2 = r3;
        goto L_0x004c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onesignal.t.c(org.json.JSONArray, boolean, boolean):com.onesignal.q");
    }

    static void c() {
        if (n != null) {
            a(new Runnable() {
                public void run() {
                    t.K();
                }
            });
        }
    }

    private static void c(long j) {
        p = j;
        if (c != null) {
            a(d.INFO, "SaveUnsentActiveTime: " + p);
            Editor edit = e(c).edit();
            edit.putLong("GT_UNSENT_ACTIVE_TIME", j);
            edit.commit();
        }
    }

    private static void c(JSONObject jSONObject) {
        try {
            jSONObject.put("net_type", u.b());
        } catch (Throwable th) {
        }
    }

    static boolean c(Context context) {
        return e(context).getBoolean("GT_SOUND_ENABLED", true);
    }

    static long d(Context context) {
        return e(context).getLong("OS_LAST_SESSION_TIME", -31000);
    }

    static String d() {
        return g(c);
    }

    private static void d(String str) {
        if (c != null) {
            Editor edit = e(c).edit();
            edit.putString("GT_APP_ID", str);
            edit.commit();
        }
    }

    static SharedPreferences e(Context context) {
        return context.getSharedPreferences(t.class.getSimpleName(), 0);
    }

    static String e() {
        if (k == null && c != null) {
            k = e(c).getString("GT_PLAYER_ID", null);
        }
        return k;
    }

    private static void f(Context context) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        if (launchIntentForPackage != null) {
            launchIntentForPackage.setFlags(268566528);
            context.startActivity(launchIntentForPackage);
        }
    }

    static boolean f() {
        return f == null || f.f == g.Notification;
    }

    private static String g(Context context) {
        return context == null ? "" : e(context).getString("GT_APP_ID", null);
    }

    static boolean g() {
        return f != null && f.f == g.InAppAlert;
    }

    static long h() {
        if (p == -1 && c != null) {
            p = e(c).getLong("GT_UNSENT_ACTIVE_TIME", 0);
        }
        a(d.INFO, "GetUnsentActiveTime: " + p);
        return p;
    }

    private static String h(Context context) {
        return context == null ? "" : e(context).getString("GT_PLAYER_ID", null);
    }

    static boolean i() {
        return d && b();
    }

    static void j() {
        I = false;
        a(System.currentTimeMillis());
    }

    static /* synthetic */ int n() {
        int i = K;
        K = i + 1;
        return i;
    }
}
