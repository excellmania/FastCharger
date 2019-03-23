package com.facebook.ads.internal.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.internal.util.b.a;
import com.facebook.ads.internal.util.f;
import com.facebook.ads.internal.util.j;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class c extends a {
    private static final String a = c.class.getSimpleName();
    private final Context b;
    private final Uri c;
    private final Map<String, String> d;

    public c(Context context, Uri uri, Map<String, String> map) {
        this.b = context;
        this.c = uri;
        this.d = map;
    }

    private Intent a(j jVar) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        if (!(TextUtils.isEmpty(jVar.a()) || TextUtils.isEmpty(jVar.b()))) {
            intent.setComponent(new ComponentName(jVar.a(), jVar.b()));
        }
        if (!TextUtils.isEmpty(jVar.c())) {
            intent.setData(Uri.parse(jVar.c()));
        }
        return intent;
    }

    private Intent b(j jVar) {
        if (TextUtils.isEmpty(jVar.a())) {
            return null;
        }
        if (!f.a(this.b, jVar.a())) {
            return null;
        }
        String c = jVar.c();
        if (!TextUtils.isEmpty(c) && (c.startsWith("tel:") || c.startsWith("telprompt:"))) {
            return new Intent("android.intent.action.CALL", Uri.parse(c));
        }
        PackageManager packageManager = this.b.getPackageManager();
        if (TextUtils.isEmpty(jVar.b()) && TextUtils.isEmpty(c)) {
            return packageManager.getLaunchIntentForPackage(jVar.a());
        }
        Intent a = a(jVar);
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(a, 65536);
        if (a.getComponent() == null) {
            for (ResolveInfo resolveInfo : queryIntentActivities) {
                if (resolveInfo.activityInfo.packageName.equals(jVar.a())) {
                    a.setComponent(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name));
                    break;
                }
            }
        }
        return (queryIntentActivities.isEmpty() || a.getComponent() == null) ? null : a;
    }

    private List<j> f() {
        String queryParameter = this.c.getQueryParameter("appsite_data");
        if (TextUtils.isEmpty(queryParameter) || "[]".equals(queryParameter)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray optJSONArray = new JSONObject(queryParameter).optJSONArray("android");
            if (optJSONArray == null) {
                return arrayList;
            }
            for (int i = 0; i < optJSONArray.length(); i++) {
                j a = j.a(optJSONArray.optJSONObject(i));
                if (a != null) {
                    arrayList.add(a);
                }
            }
            return arrayList;
        } catch (JSONException e) {
            Log.w(a, "Error parsing appsite_data", e);
            return arrayList;
        }
    }

    public a a() {
        return a.OPEN_STORE;
    }

    public void b() {
        a(this.b, this.c, this.d);
        List<Intent> d = d();
        if (d != null) {
            for (Intent startActivity : d) {
                try {
                    this.b.startActivity(startActivity);
                    return;
                } catch (Exception e) {
                    Log.d(a, "Failed to open app intent, falling back", e);
                }
            }
        }
        e();
    }

    /* Access modifiers changed, original: protected */
    public Uri c() {
        String queryParameter = this.c.getQueryParameter("store_url");
        if (!TextUtils.isEmpty(queryParameter)) {
            return Uri.parse(queryParameter);
        }
        queryParameter = this.c.getQueryParameter("store_id");
        return Uri.parse(String.format("market://details?id=%s", new Object[]{queryParameter}));
    }

    /* Access modifiers changed, original: protected */
    public List<Intent> d() {
        List<j> f = f();
        ArrayList arrayList = new ArrayList();
        if (f != null) {
            for (j b : f) {
                Intent b2 = b(b);
                if (b2 != null) {
                    arrayList.add(b2);
                }
            }
        }
        return arrayList;
    }

    public void e() {
        Intent intent = new Intent("android.intent.action.VIEW", c());
        intent.addFlags(268435456);
        try {
            this.b.startActivity(intent);
        } catch (Exception e) {
            Log.d(a, "Failed to open market url: " + this.c.toString(), e);
            String queryParameter = this.c.getQueryParameter("store_url_web_fallback");
            if (queryParameter != null && queryParameter.length() > 0) {
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(queryParameter));
                intent2.addFlags(268435456);
                try {
                    this.b.startActivity(intent2);
                } catch (Exception e2) {
                    Log.d(a, "Failed to open fallback url: " + queryParameter, e2);
                }
            }
        }
    }
}
