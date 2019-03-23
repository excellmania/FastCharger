package com.google.android.gms.c;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.os.Process;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.common.util.k;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@TargetApi(14)
@pa
public class fy extends Thread {
    private boolean a = false;
    private boolean b = false;
    private boolean c = false;
    private final Object d;
    private final fv e;
    private final oz f;
    private final int g;
    private final int h;
    private final int i;
    private final int j;
    private final int k;
    private final int l;
    private final int m;
    private final int n;
    private final String o;

    @pa
    class a {
        final int a;
        final int b;

        a(fy fyVar, int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    public fy(fv fvVar, oz ozVar) {
        this.e = fvVar;
        this.f = ozVar;
        this.d = new Object();
        this.h = ((Integer) is.Z.c()).intValue();
        this.i = ((Integer) is.aa.c()).intValue();
        this.j = ((Integer) is.ab.c()).intValue();
        this.k = ((Integer) is.ac.c()).intValue();
        this.l = ((Integer) is.af.c()).intValue();
        this.m = ((Integer) is.ah.c()).intValue();
        this.n = ((Integer) is.ai.c()).intValue();
        this.g = ((Integer) is.ad.c()).intValue();
        this.o = (String) is.ak.c();
        setName("ContentFetchTask");
    }

    /* Access modifiers changed, original: 0000 */
    public a a(@Nullable View view, fu fuVar) {
        int i = 0;
        if (view == null) {
            return new a(this, 0, 0);
        }
        Context b = v.h().b();
        if (b != null) {
            String str = (String) view.getTag(b.getResources().getIdentifier((String) is.aj.c(), "id", b.getPackageName()));
            if (!(TextUtils.isEmpty(this.o) || str == null || !str.equals(this.o))) {
                return new a(this, 0, 0);
            }
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new a(this, 0, 0);
            }
            fuVar.b(text.toString(), globalVisibleRect, view.getX(), view.getY(), (float) view.getWidth(), (float) view.getHeight());
            return new a(this, 1, 0);
        } else if ((view instanceof WebView) && !(view instanceof tr)) {
            fuVar.g();
            return a((WebView) view, fuVar, globalVisibleRect) ? new a(this, 0, 1) : new a(this, 0, 0);
        } else if (!(view instanceof ViewGroup)) {
            return new a(this, 0, 0);
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            int i2 = 0;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                a a = a(viewGroup.getChildAt(i3), fuVar);
                i2 += a.a;
                i += a.b;
            }
            return new a(this, i2, i);
        }
    }

    public void a() {
        synchronized (this.d) {
            if (this.a) {
                sz.b("Content hash thread already started, quiting...");
                return;
            }
            this.a = true;
            start();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(@Nullable Activity activity) {
        if (activity != null) {
            View view = null;
            try {
                if (!(activity.getWindow() == null || activity.getWindow().getDecorView() == null)) {
                    view = activity.getWindow().getDecorView().findViewById(16908290);
                }
            } catch (Throwable th) {
                sz.b("Failed getting root view of activity. Content not extracted.");
            }
            if (view != null) {
                a(view);
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(fu fuVar, WebView webView, String str, boolean z) {
        fuVar.f();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (TextUtils.isEmpty(webView.getTitle())) {
                    fuVar.a(optString, z, webView.getX(), webView.getY(), (float) webView.getWidth(), (float) webView.getHeight());
                } else {
                    String valueOf = String.valueOf(webView.getTitle());
                    fuVar.a(new StringBuilder((String.valueOf(valueOf).length() + 1) + String.valueOf(optString).length()).append(valueOf).append("\n").append(optString).toString(), z, webView.getX(), webView.getY(), (float) webView.getWidth(), (float) webView.getHeight());
                }
            }
            if (fuVar.a()) {
                this.e.b(fuVar);
            }
        } catch (JSONException e) {
            sz.b("Json string may be malformed.");
        } catch (Throwable th) {
            sz.a("Failed to get webview content.", th);
            this.f.a(th, "ContentFetchTask.processWebViewContent");
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean a(RunningAppProcessInfo runningAppProcessInfo) {
        return runningAppProcessInfo.importance == 100;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean a(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        return powerManager == null ? false : powerManager.isScreenOn();
    }

    /* Access modifiers changed, original: 0000 */
    public boolean a(@Nullable final View view) {
        if (view == null) {
            return false;
        }
        view.post(new Runnable() {
            public void run() {
                fy.this.b(view);
            }
        });
        return true;
    }

    /* Access modifiers changed, original: 0000 */
    @TargetApi(19)
    public boolean a(final WebView webView, final fu fuVar, final boolean z) {
        if (!k.g()) {
            return false;
        }
        fuVar.g();
        webView.post(new Runnable() {
            ValueCallback<String> a = new ValueCallback<String>() {
                /* renamed from: a */
                public void onReceiveValue(String str) {
                    fy.this.a(fuVar, webView, str, z);
                }
            };

            public void run() {
                if (webView.getSettings().getJavaScriptEnabled()) {
                    try {
                        webView.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.a);
                    } catch (Throwable th) {
                        this.a.onReceiveValue("");
                    }
                }
            }
        });
        return true;
    }

    /* Access modifiers changed, original: 0000 */
    public void b(View view) {
        try {
            fu fuVar = new fu(this.h, this.i, this.j, this.k, this.l, this.m, this.n);
            a a = a(view, fuVar);
            fuVar.h();
            if (a.a != 0 || a.b != 0) {
                if (a.b != 0 || fuVar.j() != 0) {
                    if (a.b != 0 || !this.e.a(fuVar)) {
                        this.e.c(fuVar);
                    }
                }
            }
        } catch (Exception e) {
            sz.b("Exception in fetchContentOnUIThread", e);
            this.f.a(e, "ContentFetchTask.fetchContent");
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean b() {
        try {
            Context b = v.h().b();
            if (b == null) {
                return false;
            }
            ActivityManager activityManager = (ActivityManager) b.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) b.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null) {
                return false;
            }
            List<RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                return false;
            }
            for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (a(runningAppProcessInfo) && !keyguardManager.inKeyguardRestrictedInputMode() && a(b)) {
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

    public fu c() {
        return this.e.a();
    }

    public void d() {
        synchronized (this.d) {
            this.b = false;
            this.d.notifyAll();
            sz.b("ContentFetchThread: wakeup");
        }
    }

    public void e() {
        synchronized (this.d) {
            this.b = true;
            sz.b("ContentFetchThread: paused, mPause = " + this.b);
        }
    }

    public boolean f() {
        return this.b;
    }

    public void run() {
        while (true) {
            try {
                if (b()) {
                    Activity a = v.h().a();
                    if (a == null) {
                        sz.b("ContentFetchThread: no activity. Sleeping.");
                        e();
                    } else {
                        a(a);
                    }
                } else {
                    sz.b("ContentFetchTask: sleeping");
                    e();
                }
                Thread.sleep((long) (this.g * 1000));
            } catch (InterruptedException e) {
                sz.b("Error in ContentFetchTask", e);
            } catch (Throwable th) {
                sz.b("Error in ContentFetchTask", th);
                this.f.a(th, "ContentFetchTask.run");
            }
            synchronized (this.d) {
                while (this.b) {
                    try {
                        sz.b("ContentFetchTask: waiting");
                        this.d.wait();
                    } catch (InterruptedException e2) {
                    }
                }
            }
        }
    }
}
