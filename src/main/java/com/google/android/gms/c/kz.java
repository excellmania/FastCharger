package com.google.android.gms.c;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.e;
import com.google.android.gms.ads.internal.v;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpHost;

@pa
public final class kz implements kr {
    private final kt a;
    private final e b;
    private final ng c;

    public static class a {
        private final tr a;

        public a(tr trVar) {
            this.a = trVar;
        }

        public Intent a(Context context, Map<String, String> map) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            String str = (String) map.get("u");
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (this.a != null) {
                str = v.e().a(this.a, str);
            }
            Uri parse = Uri.parse(str);
            boolean parseBoolean = Boolean.parseBoolean((String) map.get("use_first_package"));
            boolean parseBoolean2 = Boolean.parseBoolean((String) map.get("use_running_process"));
            Uri build = HttpHost.DEFAULT_SCHEME_NAME.equalsIgnoreCase(parse.getScheme()) ? parse.buildUpon().scheme("https").build() : "https".equalsIgnoreCase(parse.getScheme()) ? parse.buildUpon().scheme(HttpHost.DEFAULT_SCHEME_NAME).build() : null;
            ArrayList arrayList = new ArrayList();
            Intent a = a(parse);
            Intent a2 = a(build);
            ResolveInfo a3 = a(context, a, arrayList);
            if (a3 != null) {
                return a(a, a3);
            }
            if (a2 != null) {
                ResolveInfo a4 = a(context, a2);
                if (a4 != null) {
                    Intent a5 = a(a, a4);
                    if (a(context, a5) != null) {
                        return a5;
                    }
                }
            }
            if (arrayList.size() == 0) {
                return a;
            }
            if (parseBoolean2 && activityManager != null) {
                List<RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
                if (runningAppProcesses != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ResolveInfo resolveInfo = (ResolveInfo) it.next();
                        for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                            if (runningAppProcessInfo.processName.equals(resolveInfo.activityInfo.packageName)) {
                                return a(a, resolveInfo);
                            }
                        }
                    }
                }
            }
            return parseBoolean ? a(a, (ResolveInfo) arrayList.get(0)) : a;
        }

        public Intent a(Intent intent, ResolveInfo resolveInfo) {
            Intent intent2 = new Intent(intent);
            intent2.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
            return intent2;
        }

        public Intent a(Uri uri) {
            if (uri == null) {
                return null;
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setData(uri);
            intent.setAction("android.intent.action.VIEW");
            return intent;
        }

        public ResolveInfo a(Context context, Intent intent) {
            return a(context, intent, new ArrayList());
        }

        public ResolveInfo a(Context context, Intent intent, ArrayList<ResolveInfo> arrayList) {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            ResolveInfo resolveInfo;
            List queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
            if (queryIntentActivities != null && resolveActivity != null) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= queryIntentActivities.size()) {
                        break;
                    }
                    resolveInfo = (ResolveInfo) queryIntentActivities.get(i2);
                    if (resolveActivity != null && resolveActivity.activityInfo.name.equals(resolveInfo.activityInfo.name)) {
                        resolveInfo = resolveActivity;
                        break;
                    }
                    i = i2 + 1;
                }
            }
            resolveInfo = null;
            arrayList.addAll(queryIntentActivities);
            return resolveInfo;
        }
    }

    public kz(kt ktVar, e eVar, ng ngVar) {
        this.a = ktVar;
        this.b = eVar;
        this.c = ngVar;
    }

    private void a(boolean z) {
        if (this.c != null) {
            this.c.a(z);
        }
    }

    private static boolean a(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    private static int b(Map<String, String> map) {
        String str = (String) map.get("o");
        if (str != null) {
            if ("p".equalsIgnoreCase(str)) {
                return v.g().b();
            }
            if ("l".equalsIgnoreCase(str)) {
                return v.g().a();
            }
            if ("c".equalsIgnoreCase(str)) {
                return v.g().c();
            }
        }
        return -1;
    }

    private static void b(tr trVar, Map<String, String> map) {
        Context context = trVar.getContext();
        if (TextUtils.isEmpty((String) map.get("u"))) {
            sz.e("Destination url cannot be empty.");
            return;
        }
        try {
            trVar.l().a(new com.google.android.gms.ads.internal.overlay.e(new a(trVar).a(context, (Map) map)));
        } catch (ActivityNotFoundException e) {
            sz.e(e.getMessage());
        }
    }

    public void a(tr trVar, Map<String, String> map) {
        String str = (String) map.get("a");
        if (str == null) {
            sz.e("Action missing from an open GMSG.");
        } else if (this.b == null || this.b.b()) {
            ts l = trVar.l();
            if ("expand".equalsIgnoreCase(str)) {
                if (trVar.p()) {
                    sz.e("Cannot expand WebView that is already expanded.");
                    return;
                }
                a(false);
                l.a(a((Map) map), b(map));
            } else if ("webapp".equalsIgnoreCase(str)) {
                str = (String) map.get("u");
                a(false);
                if (str != null) {
                    l.a(a((Map) map), b(map), str);
                } else {
                    l.a(a((Map) map), b(map), (String) map.get("html"), (String) map.get("baseurl"));
                }
            } else if ("in_app_purchase".equalsIgnoreCase(str)) {
                str = (String) map.get("product_id");
                String str2 = (String) map.get("report_urls");
                if (this.a == null) {
                    return;
                }
                if (str2 == null || str2.isEmpty()) {
                    this.a.a(str, new ArrayList());
                } else {
                    this.a.a(str, new ArrayList(Arrays.asList(str2.split(" "))));
                }
            } else if ("app".equalsIgnoreCase(str) && "true".equalsIgnoreCase((String) map.get("system_browser"))) {
                a(true);
                b(trVar, map);
            } else {
                a(true);
                str = (String) map.get("u");
                l.a(new com.google.android.gms.ads.internal.overlay.e((String) map.get("i"), !TextUtils.isEmpty(str) ? v.e().a(trVar, str) : str, (String) map.get("m"), (String) map.get("p"), (String) map.get("c"), (String) map.get("f"), (String) map.get("e")));
            }
        } else {
            this.b.a((String) map.get("u"));
        }
    }
}
