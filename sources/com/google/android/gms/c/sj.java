package com.google.android.gms.c;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningTaskInfo;
import android.app.AlertDialog.Builder;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Debug;
import android.os.Debug.MemoryInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import com.google.android.gms.ads.internal.ClientApi;
import com.google.android.gms.ads.internal.p;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.common.util.i;
import com.google.android.gms.common.util.k;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.apache.http.protocol.HTTP;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@pa
public class sj {
    public static final Handler a = new sg(Looper.getMainLooper());
    private final Object b = new Object();
    private boolean c = true;
    private String d;
    private boolean e = false;
    private lw f;

    private final class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(sj sjVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                sj.this.c = true;
            } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                sj.this.c = false;
            }
        }
    }

    private JSONArray a(Collection<?> collection) {
        JSONArray jSONArray = new JSONArray();
        for (Object a : collection) {
            a(jSONArray, a);
        }
        return jSONArray;
    }

    private JSONObject a(Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            a(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    private void a(JSONArray jSONArray, Object obj) {
        if (obj instanceof Bundle) {
            jSONArray.put(a((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONArray.put(a((Map) obj));
        } else if (obj instanceof Collection) {
            jSONArray.put(a((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONArray.put(a((Object[]) obj));
        } else {
            jSONArray.put(obj);
        }
    }

    private void a(JSONObject jSONObject, String str, Object obj) {
        if (obj instanceof Bundle) {
            jSONObject.put(str, a((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONObject.put(str, a((Map) obj));
        } else if (obj instanceof Collection) {
            if (str == null) {
                str = "null";
            }
            jSONObject.put(str, a((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONObject.put(str, a(Arrays.asList((Object[]) obj)));
        } else {
            jSONObject.put(str, obj);
        }
    }

    private boolean a(KeyguardManager keyguardManager) {
        return keyguardManager == null ? false : keyguardManager.inKeyguardRestrictedInputMode();
    }

    private boolean a(PowerManager powerManager) {
        return powerManager == null || powerManager.isScreenOn();
    }

    public static void b(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            si.a(runnable);
        }
    }

    private Bitmap c(@NonNull View view) {
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width == 0 || height == 0) {
                sz.e("Width or height of view is zero");
                return null;
            }
            Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Config.RGB_565);
            Canvas canvas = new Canvas(createBitmap);
            view.layout(0, 0, width, height);
            view.draw(canvas);
            return createBitmap;
        } catch (RuntimeException e) {
            sz.b("Fail to capture the webview", e);
            return null;
        }
    }

    private Bitmap d(@NonNull View view) {
        Bitmap drawingCache;
        Throwable e;
        try {
            boolean isDrawingCacheEnabled = view.isDrawingCacheEnabled();
            view.setDrawingCacheEnabled(true);
            drawingCache = view.getDrawingCache();
            drawingCache = drawingCache != null ? Bitmap.createBitmap(drawingCache) : null;
            try {
                view.setDrawingCacheEnabled(isDrawingCacheEnabled);
            } catch (RuntimeException e2) {
                e = e2;
                sz.b("Fail to capture the web view", e);
                return drawingCache;
            }
        } catch (RuntimeException e3) {
            Throwable th = e3;
            drawingCache = null;
            e = th;
            sz.b("Fail to capture the web view", e);
            return drawingCache;
        }
        return drawingCache;
    }

    private boolean n(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        return powerManager == null ? false : powerManager.isScreenOn();
    }

    public Bitmap a(View view) {
        view.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(view.getDrawingCache());
        view.setDrawingCacheEnabled(false);
        return createBitmap;
    }

    public Bundle a(fy fyVar) {
        if (fyVar == null) {
            return null;
        }
        if (!((Boolean) is.ae.c()).booleanValue() && !((Boolean) is.ag.c()).booleanValue()) {
            return null;
        }
        if (v.i().b() && v.i().c()) {
            return null;
        }
        String c;
        String str;
        Object obj;
        if (fyVar.f()) {
            fyVar.d();
        }
        fu c2 = fyVar.c();
        if (c2 != null) {
            String b = c2.b();
            c = c2.c();
            String d = c2.d();
            if (b != null) {
                v.i().a(b);
            }
            if (d != null) {
                v.i().b(d);
                str = b;
                obj = c;
                c = d;
            } else {
                str = b;
                b = c;
                c = d;
            }
        } else {
            obj = null;
            str = v.i().j();
            c = v.i().k();
        }
        Bundle bundle = new Bundle(1);
        if (!(c == null || !((Boolean) is.ag.c()).booleanValue() || v.i().c())) {
            bundle.putString("v_fp_vertical", c);
        }
        if (!(str == null || !((Boolean) is.ae.c()).booleanValue() || v.i().b())) {
            bundle.putString("fingerprint", str);
            if (!str.equals(obj)) {
                bundle.putString("v_fp", obj);
            }
        }
        return !bundle.isEmpty() ? bundle : null;
    }

    public DisplayMetrics a(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public PopupWindow a(View view, int i, int i2, boolean z) {
        return new PopupWindow(view, i, i2, z);
    }

    public lw a(Context context, tc tcVar) {
        lw lwVar;
        synchronized (this.b) {
            if (this.f == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.f = new lw(context, tcVar, (String) is.b.c());
            }
            lwVar = this.f;
        }
        return lwVar;
    }

    public String a(Context context, View view, ha haVar) {
        if (!((Boolean) is.av.c()).booleanValue()) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("width", haVar.f);
            jSONObject2.put("height", haVar.c);
            jSONObject.put("size", jSONObject2);
            jSONObject.put("activity", f(context));
            if (!haVar.e) {
                JSONArray jSONArray = new JSONArray();
                while (view != null) {
                    ViewParent parent = view.getParent();
                    if (parent != null) {
                        int i = -1;
                        if (parent instanceof ViewGroup) {
                            i = ((ViewGroup) parent).indexOfChild(view);
                        }
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("type", parent.getClass().getName());
                        jSONObject3.put("index_of_child", i);
                        jSONArray.put(jSONObject3);
                    }
                    View view2 = (parent == null || !(parent instanceof View)) ? null : (View) parent;
                    view = view2;
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("parents", jSONArray);
                }
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            sz.c("Fail to get view hierarchy json", e);
            return null;
        }
    }

    public String a(Context context, cm cmVar, String str, View view) {
        if (cmVar == null) {
            return str;
        }
        try {
            Uri parse = Uri.parse(str);
            if (cmVar.d(parse)) {
                parse = cmVar.a(parse, context, view);
            }
            return parse.toString();
        } catch (Exception e) {
            return str;
        }
    }

    public String a(final Context context, String str) {
        String str2;
        synchronized (this.b) {
            if (this.d != null) {
                str2 = this.d;
            } else if (str == null) {
                str2 = b();
            } else {
                try {
                    this.d = v.g().a(context);
                } catch (Exception e) {
                }
                if (TextUtils.isEmpty(this.d)) {
                    if (hf.a().b()) {
                        try {
                            this.d = c(context);
                        } catch (Exception e2) {
                            this.d = b();
                        }
                    } else {
                        this.d = null;
                        a.post(new Runnable() {
                            public void run() {
                                synchronized (sj.this.b) {
                                    sj.this.d = sj.this.c(context);
                                    sj.this.b.notifyAll();
                                }
                            }
                        });
                        while (this.d == null) {
                            try {
                                this.b.wait();
                            } catch (InterruptedException e3) {
                                this.d = b();
                                String str3 = "Interrupted, use default user agent: ";
                                str2 = String.valueOf(this.d);
                                sz.e(str2.length() != 0 ? str3.concat(str2) : new String(str3));
                            }
                        }
                    }
                }
                str2 = String.valueOf(this.d);
                this.d = new StringBuilder((String.valueOf(str2).length() + 11) + String.valueOf(str).length()).append(str2).append(" (Mobile; ").append(str).append(")").toString();
                str2 = this.d;
            }
        }
        return str2;
    }

    public String a(tr trVar, String str) {
        return a(trVar.getContext(), trVar.n(), str, trVar.b());
    }

    public String a(InputStreamReader inputStreamReader) {
        StringBuilder stringBuilder = new StringBuilder(8192);
        char[] cArr = new char[2048];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read == -1) {
                return stringBuilder.toString();
            }
            stringBuilder.append(cArr, 0, read);
        }
    }

    public String a(String str) {
        return Uri.parse(str).buildUpon().query(null).build().toString();
    }

    public String a(String str, Map<String, String> map) {
        for (String str2 : map.keySet()) {
            str = str.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{str2}), String.format("$1%s$2", new Object[]{Uri.encode((String) map.get(str2))}));
        }
        return str.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[]{"[^@]+"}), String.format("$1%s$2", new Object[]{""})).replaceAll("@@", "@");
    }

    public Map<String, String> a(Uri uri) {
        if (uri == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str : v.g().a(uri)) {
            hashMap.put(str, uri.getQueryParameter(str));
        }
        return hashMap;
    }

    public Map<String, Integer> a(View view, WindowManager windowManager) {
        DisplayMetrics a = a(windowManager);
        int i = a.widthPixels;
        int i2 = a.heightPixels;
        int[] iArr = new int[2];
        HashMap hashMap = new HashMap();
        view.getLocationInWindow(iArr);
        hashMap.put("xInPixels", Integer.valueOf(iArr[0]));
        hashMap.put("yInPixels", Integer.valueOf(iArr[1]));
        hashMap.put("windowWidthInPixels", Integer.valueOf(i));
        hashMap.put("windowHeightInPixels", Integer.valueOf(i2));
        return hashMap;
    }

    /* Access modifiers changed, original: 0000 */
    public JSONArray a(Object[] objArr) {
        JSONArray jSONArray = new JSONArray();
        for (Object a : objArr) {
            a(jSONArray, a);
        }
        return jSONArray;
    }

    public JSONObject a(Map<String, ?> map) {
        String valueOf;
        try {
            JSONObject jSONObject = new JSONObject();
            for (String valueOf2 : map.keySet()) {
                a(jSONObject, valueOf2, map.get(valueOf2));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            String str = "Could not convert map to JSON: ";
            valueOf2 = String.valueOf(e.getMessage());
            throw new JSONException(valueOf2.length() != 0 ? str.concat(valueOf2) : new String(str));
        }
    }

    public void a(Activity activity, OnGlobalLayoutListener onGlobalLayoutListener) {
        Window window = activity.getWindow();
        if (window != null && window.getDecorView() != null && window.getDecorView().getViewTreeObserver() != null) {
            window.getDecorView().getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    public void a(Activity activity, OnScrollChangedListener onScrollChangedListener) {
        Window window = activity.getWindow();
        if (window != null && window.getDecorView() != null && window.getDecorView().getViewTreeObserver() != null) {
            window.getDecorView().getViewTreeObserver().addOnScrollChangedListener(onScrollChangedListener);
        }
    }

    public void a(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable th) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    @TargetApi(18)
    public void a(Context context, Uri uri) {
        try {
            Bundle bundle = new Bundle();
            if (((Boolean) is.cZ.c()).booleanValue() && k.f()) {
                bundle.putBinder("android.support.customtabs.extra.SESSION", null);
            }
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(new Intent("android.intent.action.VIEW", uri).putExtras(bundle));
            String valueOf = String.valueOf(uri.toString());
            sz.b(new StringBuilder(String.valueOf(valueOf).length() + 26).append("Opening ").append(valueOf).append(" in a new browser.").toString());
        } catch (ActivityNotFoundException e) {
            sz.b("No browser is found.", e);
        }
    }

    public void a(Context context, String str, WebSettings webSettings) {
        webSettings.setUserAgentString(a(context, str));
    }

    public void a(Context context, String str, String str2) {
        List arrayList = new ArrayList();
        arrayList.add(str2);
        a(context, str, arrayList);
    }

    public void a(final Context context, @Nullable final String str, String str2, Bundle bundle, boolean z) {
        if (z) {
            bundle.putString("device", v.e().e());
            bundle.putString("eids", TextUtils.join(",", is.a()));
        }
        hf.a().a(context, str, str2, bundle, z, new com.google.android.gms.c.sy.a(this) {
            public void a(String str) {
                v.e().a(context, str, str);
            }
        });
    }

    public void a(Context context, String str, List<String> list) {
        for (String stVar : list) {
            new st(context, str, stVar).e();
        }
    }

    public void a(Context context, String str, boolean z, HttpURLConnection httpURLConnection) {
        a(context, str, z, httpURLConnection, false);
    }

    public void a(Context context, String str, boolean z, HttpURLConnection httpURLConnection, boolean z2) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(z);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setRequestProperty("User-Agent", a(context, str));
        httpURLConnection.setUseCaches(z2);
    }

    public void a(final Context context, final List<String> list) {
        if (!(context instanceof Activity) || TextUtils.isEmpty(ev.a((Activity) context))) {
            return;
        }
        if (list == null) {
            sf.a("Cannot ping urls: empty list.");
        } else if (jh.a(context)) {
            final jh jhVar = new jh();
            jhVar.a(new com.google.android.gms.c.jh.a(this) {
            });
            jhVar.b((Activity) context);
        } else {
            sf.a("Cannot ping url because custom tabs is not supported");
        }
    }

    public void a(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            runnable.run();
        } else {
            a.post(runnable);
        }
    }

    public void a(List<String> list, String str) {
        for (String stVar : list) {
            new st(stVar, str).e();
        }
    }

    public boolean a() {
        return this.c;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean a(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }

    @TargetApi(24)
    public boolean a(Activity activity, Configuration configuration) {
        sy a = hf.a();
        int a2 = a.a((Context) activity, configuration.screenHeightDp);
        int a3 = a.a((Context) activity, configuration.screenWidthDp);
        DisplayMetrics a4 = a((WindowManager) activity.getApplicationContext().getSystemService("window"));
        int i = a4.heightPixels;
        int i2 = a4.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        identifier = ((Integer) is.dh.c()).intValue() * ((int) Math.round(((double) activity.getResources().getDisplayMetrics().density) + 0.5d));
        return a(i, dimensionPixelSize + a2, identifier) && a(i2, a3, identifier);
    }

    public boolean a(Context context) {
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
        if (resolveActivity == null || resolveActivity.activityInfo == null) {
            sz.e("Could not find com.google.android.gms.ads.AdActivity, please make sure it is declared in AndroidManifest.xml.");
            return false;
        }
        boolean z;
        String str = "com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".";
        if ((resolveActivity.activityInfo.configChanges & 16) == 0) {
            sz.e(String.format(str, new Object[]{"keyboard"}));
            z = false;
        } else {
            z = true;
        }
        if ((resolveActivity.activityInfo.configChanges & 32) == 0) {
            sz.e(String.format(str, new Object[]{"keyboardHidden"}));
            z = false;
        }
        if ((resolveActivity.activityInfo.configChanges & 128) == 0) {
            sz.e(String.format(str, new Object[]{"orientation"}));
            z = false;
        }
        if ((resolveActivity.activityInfo.configChanges & 256) == 0) {
            sz.e(String.format(str, new Object[]{"screenLayout"}));
            z = false;
        }
        if ((resolveActivity.activityInfo.configChanges & 512) == 0) {
            sz.e(String.format(str, new Object[]{"uiMode"}));
            z = false;
        }
        if ((resolveActivity.activityInfo.configChanges & 1024) == 0) {
            sz.e(String.format(str, new Object[]{"screenSize"}));
            z = false;
        }
        if ((resolveActivity.activityInfo.configChanges & 2048) != 0) {
            return z;
        }
        sz.e(String.format(str, new Object[]{"smallestScreenSize"}));
        return false;
    }

    public boolean a(PackageManager packageManager, String str, String str2) {
        return packageManager.checkPermission(str2, str) == 0;
    }

    public boolean a(View view, Context context) {
        KeyguardManager keyguardManager = null;
        Context applicationContext = context.getApplicationContext();
        PowerManager powerManager = applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null;
        Object systemService = context.getSystemService("keyguard");
        if (systemService != null && (systemService instanceof KeyguardManager)) {
            keyguardManager = (KeyguardManager) systemService;
        }
        return a(view, powerManager, keyguardManager);
    }

    public boolean a(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z = v.e().a() || !a(keyguardManager);
        return view.getVisibility() == 0 && view.isShown() && a(powerManager) && z && (!((Boolean) is.aW.c()).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect()));
    }

    public boolean a(ClassLoader classLoader, Class<?> cls, String str) {
        boolean z = false;
        try {
            return cls.isAssignableFrom(Class.forName(str, false, classLoader));
        } catch (Throwable th) {
            return z;
        }
    }

    public int[] a(Activity activity) {
        Window window = activity.getWindow();
        if (window == null || window.findViewById(16908290) == null) {
            return f();
        }
        return new int[]{window.findViewById(16908290).getWidth(), window.findViewById(16908290).getHeight()};
    }

    public int b(@Nullable View view) {
        if (view == null) {
            return -1;
        }
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof AdapterView)) {
            parent = parent.getParent();
        }
        return parent == null ? -1 : ((AdapterView) parent).getPositionForView(view);
    }

    public int b(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(e);
            sz.e(new StringBuilder(String.valueOf(valueOf).length() + 22).append("Could not parse value:").append(valueOf).toString());
            return 0;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public String b() {
        StringBuffer stringBuffer = new StringBuffer(256);
        stringBuffer.append("Mozilla/5.0 (Linux; U; Android");
        if (VERSION.RELEASE != null) {
            stringBuffer.append(" ").append(VERSION.RELEASE);
        }
        stringBuffer.append("; ").append(Locale.getDefault());
        if (Build.DEVICE != null) {
            stringBuffer.append("; ").append(Build.DEVICE);
            if (Build.DISPLAY != null) {
                stringBuffer.append(" Build/").append(Build.DISPLAY);
            }
        }
        stringBuffer.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return stringBuffer.toString();
    }

    public String b(Context context, String str) {
        try {
            return new String(i.a(context.openFileInput(str), true), HTTP.UTF_8);
        } catch (IOException e) {
            sz.b("Error reading from internal storage.", e);
            return "";
        }
    }

    public void b(Activity activity, OnScrollChangedListener onScrollChangedListener) {
        Window window = activity.getWindow();
        if (window != null && window.getDecorView() != null && window.getDecorView().getViewTreeObserver() != null) {
            window.getDecorView().getViewTreeObserver().removeOnScrollChangedListener(onScrollChangedListener);
        }
    }

    public void b(Context context, String str, String str2) {
        try {
            FileOutputStream openFileOutput = context.openFileOutput(str, 0);
            openFileOutput.write(str2.getBytes(HTTP.UTF_8));
            openFileOutput.close();
        } catch (Exception e) {
            sz.b("Error writing to file in internal storage.", e);
        }
    }

    public void b(Context context, String str, String str2, Bundle bundle, boolean z) {
        if (((Boolean) is.bb.c()).booleanValue()) {
            a(context, str, str2, bundle, z);
        }
    }

    public boolean b(Context context) {
        if (this.e) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new a(this, null), intentFilter);
        this.e = true;
        return true;
    }

    public int[] b(Activity activity) {
        int[] a = a(activity);
        return new int[]{hf.a().b((Context) activity, a[0]), hf.a().b((Context) activity, a[1])};
    }

    public String c() {
        return UUID.randomUUID().toString();
    }

    /* Access modifiers changed, original: protected */
    public String c(Context context) {
        return new WebView(context).getSettings().getUserAgentString();
    }

    public boolean c(String str) {
        return TextUtils.isEmpty(str) ? false : str.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
    }

    public int[] c(Activity activity) {
        Window window = activity.getWindow();
        if (window == null || window.findViewById(16908290) == null) {
            return f();
        }
        return new int[]{window.findViewById(16908290).getTop(), window.findViewById(16908290).getBottom()};
    }

    public Builder d(Context context) {
        return new Builder(context);
    }

    public String d() {
        UUID randomUUID = UUID.randomUUID();
        byte[] toByteArray = BigInteger.valueOf(randomUUID.getLeastSignificantBits()).toByteArray();
        byte[] toByteArray2 = BigInteger.valueOf(randomUUID.getMostSignificantBits()).toByteArray();
        String bigInteger = new BigInteger(1, toByteArray).toString();
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                instance.update(toByteArray);
                instance.update(toByteArray2);
                byte[] bArr = new byte[8];
                System.arraycopy(instance.digest(), 0, bArr, 0, 8);
                bigInteger = new BigInteger(1, bArr).toString();
            } catch (NoSuchAlgorithmException e) {
            }
        }
        return bigInteger;
    }

    public int[] d(Activity activity) {
        int[] c = c(activity);
        return new int[]{hf.a().b((Context) activity, c[0]), hf.a().b((Context) activity, c[1])};
    }

    public ik e(Context context) {
        return new ik(context);
    }

    public String e() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        return str2.startsWith(str) ? str2 : new StringBuilder((String.valueOf(str).length() + 1) + String.valueOf(str2).length()).append(str).append(" ").append(str2).toString();
    }

    public String f(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager == null) {
                return null;
            }
            List runningTasks = activityManager.getRunningTasks(1);
            if (!(runningTasks == null || runningTasks.isEmpty())) {
                RunningTaskInfo runningTaskInfo = (RunningTaskInfo) runningTasks.get(0);
                if (!(runningTaskInfo == null || runningTaskInfo.topActivity == null)) {
                    return runningTaskInfo.topActivity.getClassName();
                }
            }
            return null;
        } catch (Exception e) {
        }
    }

    /* Access modifiers changed, original: protected */
    public int[] f() {
        return new int[]{0, 0};
    }

    public float g() {
        p a = v.y().a();
        return (a == null || !a.d()) ? 1.0f : a.c();
    }

    public boolean g(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null) {
                return false;
            }
            List<RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                return false;
            }
            for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance == 100 && !keyguardManager.inKeyguardRestrictedInputMode() && n(context)) {
                        return true;
                    }
                    return false;
                }
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    public Bitmap h(Context context) {
        if (!(context instanceof Activity)) {
            return null;
        }
        Bitmap d;
        try {
            if (((Boolean) is.bU.c()).booleanValue()) {
                Window window = ((Activity) context).getWindow();
                if (window != null) {
                    d = d(window.getDecorView().getRootView());
                }
                d = null;
            } else {
                d = c(((Activity) context).getWindow().getDecorView());
            }
        } catch (RuntimeException e) {
            sz.b("Fail to capture screen shot", e);
        }
        return d;
    }

    public boolean h() {
        p a = v.y().a();
        return a != null ? a.e() : false;
    }

    public AudioManager i(Context context) {
        return (AudioManager) context.getSystemService("audio");
    }

    public Bundle i() {
        Bundle bundle = new Bundle();
        try {
            if (((Boolean) is.G.c()).booleanValue()) {
                MemoryInfo memoryInfo = new MemoryInfo();
                Debug.getMemoryInfo(memoryInfo);
                bundle.putParcelable("debug_memory_info", memoryInfo);
            }
            if (((Boolean) is.H.c()).booleanValue()) {
                Runtime runtime = Runtime.getRuntime();
                bundle.putLong("runtime_free_memory", runtime.freeMemory());
                bundle.putLong("runtime_max_memory", runtime.maxMemory());
                bundle.putLong("runtime_total_memory", runtime.totalMemory());
            }
        } catch (Exception e) {
            sz.c("Unable to gather memory stats", e);
        }
        return bundle;
    }

    public float j(Context context) {
        AudioManager i = i(context);
        if (i == null) {
            return 0.0f;
        }
        int streamMaxVolume = i.getStreamMaxVolume(3);
        return streamMaxVolume != 0 ? ((float) i.getStreamVolume(3)) / ((float) streamMaxVolume) : 0.0f;
    }

    public int k(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo == null ? 0 : applicationInfo.targetSdkVersion;
    }

    public boolean l(Context context) {
        try {
            context.getClassLoader().loadClass(ClientApi.class.getName());
            return false;
        } catch (ClassNotFoundException e) {
            return true;
        }
    }

    public Bundle m(Context context) {
        fy a = v.i().a(context);
        return a == null ? null : a(a);
    }
}
