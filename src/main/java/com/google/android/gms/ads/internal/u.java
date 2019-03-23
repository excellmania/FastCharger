package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.c.fd;
import com.google.android.gms.c.fe;
import com.google.android.gms.c.gv;
import com.google.android.gms.c.ha;
import com.google.android.gms.c.hf;
import com.google.android.gms.c.hi;
import com.google.android.gms.c.hj;
import com.google.android.gms.c.hp;
import com.google.android.gms.c.hr;
import com.google.android.gms.c.hu;
import com.google.android.gms.c.ii;
import com.google.android.gms.c.is;
import com.google.android.gms.c.jf;
import com.google.android.gms.c.nw;
import com.google.android.gms.c.ob;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.qt;
import com.google.android.gms.c.si;
import com.google.android.gms.c.sz;
import com.google.android.gms.c.tc;
import com.google.android.gms.common.internal.c;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@pa
public class u extends com.google.android.gms.c.hn.a {
    private final tc a;
    private final ha b;
    private final Future<fd> c = d();
    private final Context d;
    private final b e;
    @Nullable
    private WebView f = new WebView(this.d);
    @Nullable
    private hj g;
    @Nullable
    private fd h;
    private AsyncTask<Void, Void, String> i;

    private class a extends AsyncTask<Void, Void, String> {
        private a() {
        }

        /* synthetic */ a(u uVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        /* Access modifiers changed, original: protected|varargs */
        /* renamed from: a */
        public String doInBackground(Void... voidArr) {
            try {
                u.this.h = (fd) u.this.c.get(((Long) is.cJ.c()).longValue(), TimeUnit.MILLISECONDS);
            } catch (InterruptedException | ExecutionException e) {
                sz.c("Failed to load ad data", e);
            } catch (TimeoutException e2) {
                sz.e("Timed out waiting for ad data");
            }
            return u.this.a();
        }

        /* Access modifiers changed, original: protected */
        /* renamed from: a */
        public void onPostExecute(String str) {
            if (u.this.f != null && str != null) {
                u.this.f.loadUrl(str);
            }
        }
    }

    private static class b {
        private final String a;
        private final Map<String, String> b = new TreeMap();
        private String c;
        private String d;

        public b(String str) {
            this.a = str;
        }

        public String a() {
            return this.d;
        }

        public void a(gv gvVar) {
            this.c = gvVar.j.o;
            Bundle bundle = gvVar.m != null ? gvVar.m.getBundle(AdMobAdapter.class.getName()) : null;
            if (bundle != null) {
                String str = (String) is.cI.c();
                for (String str2 : bundle.keySet()) {
                    if (str.equals(str2)) {
                        this.d = bundle.getString(str2);
                    } else if (str2.startsWith("csa_")) {
                        this.b.put(str2.substring("csa_".length()), bundle.getString(str2));
                    }
                }
            }
        }

        public String b() {
            return this.c;
        }

        public String c() {
            return this.a;
        }

        public Map<String, String> d() {
            return this.b;
        }
    }

    public u(Context context, ha haVar, String str, tc tcVar) {
        this.d = context;
        this.a = tcVar;
        this.b = haVar;
        this.e = new b(str);
        c();
    }

    private String c(String str) {
        if (this.h == null) {
            return str;
        }
        Uri parse = Uri.parse(str);
        try {
            parse = this.h.b(parse, this.d);
        } catch (RemoteException e) {
            sz.c("Unable to process ad data", e);
        } catch (fe e2) {
            sz.c("Unable to parse ad click url", e2);
        }
        return parse.toString();
    }

    private void c() {
        a(0);
        this.f.setVerticalScrollBarEnabled(false);
        this.f.getSettings().setJavaScriptEnabled(true);
        this.f.setWebViewClient(new WebViewClient() {
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                if (u.this.g != null) {
                    try {
                        u.this.g.a(0);
                    } catch (RemoteException e) {
                        sz.c("Could not call AdListener.onAdFailedToLoad().", e);
                    }
                }
            }

            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (str.startsWith(u.this.b())) {
                    return false;
                }
                if (str.startsWith((String) is.cE.c())) {
                    if (u.this.g != null) {
                        try {
                            u.this.g.a(3);
                        } catch (RemoteException e) {
                            sz.c("Could not call AdListener.onAdFailedToLoad().", e);
                        }
                    }
                    u.this.a(0);
                    return true;
                } else if (str.startsWith((String) is.cF.c())) {
                    if (u.this.g != null) {
                        try {
                            u.this.g.a(0);
                        } catch (RemoteException e2) {
                            sz.c("Could not call AdListener.onAdFailedToLoad().", e2);
                        }
                    }
                    u.this.a(0);
                    return true;
                } else if (str.startsWith((String) is.cG.c())) {
                    if (u.this.g != null) {
                        try {
                            u.this.g.c();
                        } catch (RemoteException e22) {
                            sz.c("Could not call AdListener.onAdLoaded().", e22);
                        }
                    }
                    u.this.a(u.this.b(str));
                    return true;
                } else if (str.startsWith("gmsg://")) {
                    return true;
                } else {
                    if (u.this.g != null) {
                        try {
                            u.this.g.b();
                        } catch (RemoteException e222) {
                            sz.c("Could not call AdListener.onAdLeftApplication().", e222);
                        }
                    }
                    u.this.d(u.this.c(str));
                    return true;
                }
            }
        });
        this.f.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (u.this.h != null) {
                    try {
                        u.this.h.a(motionEvent);
                    } catch (RemoteException e) {
                        sz.c("Unable to process ad data", e);
                    }
                }
                return false;
            }
        });
    }

    private Future<fd> d() {
        return si.a(new Callable<fd>() {
            /* renamed from: a */
            public fd call() {
                return new fd(u.this.a.b, u.this.d, false);
            }
        });
    }

    private void d(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        this.d.startActivity(intent);
    }

    @Nullable
    public String F() {
        return null;
    }

    public void G() {
        throw new IllegalStateException("Unused method");
    }

    /* Access modifiers changed, original: 0000 */
    public String a() {
        String valueOf;
        Uri a;
        String valueOf2;
        Builder builder = new Builder();
        builder.scheme("https://").appendEncodedPath((String) is.cH.c());
        builder.appendQueryParameter("query", this.e.b());
        builder.appendQueryParameter("pubId", this.e.c());
        Map d = this.e.d();
        for (String valueOf3 : d.keySet()) {
            builder.appendQueryParameter(valueOf3, (String) d.get(valueOf3));
        }
        Uri build = builder.build();
        if (this.h != null) {
            try {
                a = this.h.a(build, this.d);
            } catch (RemoteException | fe e) {
                sz.c("Unable to process ad data", e);
            }
            valueOf2 = String.valueOf(b());
            valueOf3 = String.valueOf(a.getEncodedQuery());
            return new StringBuilder((String.valueOf(valueOf2).length() + 1) + String.valueOf(valueOf3).length()).append(valueOf2).append("#").append(valueOf3).toString();
        }
        a = build;
        valueOf2 = String.valueOf(b());
        valueOf3 = String.valueOf(a.getEncodedQuery());
        return new StringBuilder((String.valueOf(valueOf2).length() + 1) + String.valueOf(valueOf3).length()).append(valueOf2).append("#").append(valueOf3).toString();
    }

    /* Access modifiers changed, original: 0000 */
    public void a(int i) {
        if (this.f != null) {
            this.f.setLayoutParams(new LayoutParams(-1, i));
        }
    }

    public void a(ha haVar) {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    public void a(hi hiVar) {
        throw new IllegalStateException("Unused method");
    }

    public void a(hj hjVar) {
        this.g = hjVar;
    }

    public void a(hp hpVar) {
        throw new IllegalStateException("Unused method");
    }

    public void a(hr hrVar) {
        throw new IllegalStateException("Unused method");
    }

    public void a(ii iiVar) {
        throw new IllegalStateException("Unused method");
    }

    public void a(jf jfVar) {
        throw new IllegalStateException("Unused method");
    }

    public void a(nw nwVar) {
        throw new IllegalStateException("Unused method");
    }

    public void a(ob obVar, String str) {
        throw new IllegalStateException("Unused method");
    }

    public void a(qt qtVar) {
        throw new IllegalStateException("Unused method");
    }

    public void a(String str) {
        throw new IllegalStateException("Unused method");
    }

    public void a(boolean z) {
    }

    public boolean a(gv gvVar) {
        c.a(this.f, (Object) "This Search Ad has already been torn down");
        this.e.a(gvVar);
        this.i = new a(this, null).execute(new Void[0]);
        return true;
    }

    /* Access modifiers changed, original: 0000 */
    public int b(String str) {
        int i = 0;
        String queryParameter = Uri.parse(str).getQueryParameter("height");
        if (TextUtils.isEmpty(queryParameter)) {
            return i;
        }
        try {
            return hf.a().a(this.d, Integer.parseInt(queryParameter));
        } catch (NumberFormatException e) {
            return i;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public String b() {
        Object obj;
        String a = this.e.a();
        if (TextUtils.isEmpty(a)) {
            obj = "www.google.com";
        } else {
            String obj2 = a;
        }
        String valueOf = String.valueOf("https://");
        a = (String) is.cH.c();
        return new StringBuilder(((String.valueOf(valueOf).length() + 0) + String.valueOf(obj2).length()) + String.valueOf(a).length()).append(valueOf).append(obj2).append(a).toString();
    }

    public void i() {
        c.b("destroy must be called on the main UI thread.");
        this.i.cancel(true);
        this.c.cancel(true);
        this.f.destroy();
        this.f = null;
    }

    public com.google.android.gms.a.a j() {
        c.b("getAdFrame must be called on the main UI thread.");
        return com.google.android.gms.a.b.a(this.f);
    }

    public ha k() {
        return this.b;
    }

    public boolean l() {
        return false;
    }

    public void m() {
        throw new IllegalStateException("Unused method");
    }

    public void n() {
        c.b("pause must be called on the main UI thread.");
    }

    public void o() {
        c.b("resume must be called on the main UI thread.");
    }

    public void p() {
    }

    public boolean q() {
        return false;
    }

    @Nullable
    public hu r() {
        return null;
    }
}
