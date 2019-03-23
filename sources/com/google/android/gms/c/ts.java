package com.google.android.gms.c;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.media.TransportMediator;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.g;
import com.google.android.gms.ads.internal.overlay.h;
import com.google.android.gms.ads.internal.overlay.j;
import com.google.android.gms.ads.internal.overlay.s;
import com.google.android.gms.ads.internal.v;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.http.HttpHost;

@pa
public class ts extends WebViewClient {
    private static final String[] c = new String[]{"UNKNOWN", "HOST_LOOKUP", "UNSUPPORTED_AUTH_SCHEME", "AUTHENTICATION", "PROXY_AUTHENTICATION", "CONNECT", "IO", "TIMEOUT", "REDIRECT_LOOP", "UNSUPPORTED_SCHEME", "FAILED_SSL_HANDSHAKE", "BAD_URL", "FILE", "FILE_NOT_FOUND", "TOO_MANY_REQUESTS"};
    private static final String[] d = new String[]{"NOT_YET_VALID", "EXPIRED", "ID_MISMATCH", "UNTRUSTED", "DATE_INVALID", "INVALID"};
    private boolean A;
    private boolean B;
    private boolean C;
    private int D;
    protected tr a;
    @Nullable
    protected rp b;
    private final HashMap<String, List<kr>> e;
    private final Object f;
    private gq g;
    private j h;
    private a i;
    private b j;
    private kn k;
    private c l;
    private boolean m;
    private kt n;
    private kw o;
    private boolean p;
    private boolean q;
    private OnGlobalLayoutListener r;
    private OnScrollChangedListener s;
    private boolean t;
    private s u;
    private final nk v;
    private com.google.android.gms.ads.internal.e w;
    private ng x;
    private nm y;
    private e z;

    public interface e {
        void a();
    }

    public interface c {
        void a();
    }

    public interface a {
        void a(tr trVar, boolean z);
    }

    public interface b {
        void a(tr trVar);
    }

    private static class d implements j {
        private tr a;
        private j b;

        public d(tr trVar, j jVar) {
            this.a = trVar;
            this.b = jVar;
        }

        public void a() {
            this.b.a();
            this.a.c();
        }

        public void b() {
        }

        public void c() {
        }

        public void d() {
            this.b.d();
            this.a.d();
        }
    }

    public ts(tr trVar, boolean z) {
        this(trVar, z, new nk(trVar, trVar.g(), new ik(trVar.getContext())), null);
    }

    ts(tr trVar, boolean z, nk nkVar, ng ngVar) {
        this.e = new HashMap();
        this.f = new Object();
        this.m = false;
        this.a = trVar;
        this.p = z;
        this.v = nkVar;
        this.x = ngVar;
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        Uri parse = Uri.parse(str);
        return parse.getHost() != null ? parse.getHost() : "";
    }

    private void a(Context context, String str, String str2, String str3) {
        if (((Boolean) is.bc.c()).booleanValue()) {
            Bundle bundle = new Bundle();
            bundle.putString("err", str);
            bundle.putString("code", str2);
            bundle.putString("host", a(str3));
            v.e().a(context, this.a.o().b, "gmob-apps", bundle, true);
        }
    }

    private static boolean b(Uri uri) {
        String scheme = uri.getScheme();
        return HttpHost.DEFAULT_SCHEME_NAME.equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme);
    }

    private void p() {
        if (this.j != null) {
            this.j.a(this.a);
            this.j = null;
        }
    }

    public com.google.android.gms.ads.internal.e a() {
        return this.w;
    }

    public void a(int i, int i2) {
        if (this.x != null) {
            this.x.c(i, i2);
        }
    }

    public void a(int i, int i2, boolean z) {
        this.v.a(i, i2);
        if (this.x != null) {
            this.x.a(i, i2, z);
        }
    }

    public void a(Uri uri) {
        String path = uri.getPath();
        List<kr> list = (List) this.e.get(path);
        if (list != null) {
            Map a = v.e().a(uri);
            if (sz.a(2)) {
                String str = "Received GMSG: ";
                path = String.valueOf(path);
                sf.a(path.length() != 0 ? str.concat(path) : new String(str));
                for (String path2 : a.keySet()) {
                    str = (String) a.get(path2);
                    sf.a(new StringBuilder((String.valueOf(path2).length() + 4) + String.valueOf(str).length()).append("  ").append(path2).append(": ").append(str).toString());
                }
            }
            for (kr a2 : list) {
                a2.a(this.a, a);
            }
            return;
        }
        String valueOf = String.valueOf(uri);
        sf.a(new StringBuilder(String.valueOf(valueOf).length() + 32).append("No GMSG handler found for GMSG: ").append(valueOf).toString());
    }

    public final void a(OnGlobalLayoutListener onGlobalLayoutListener, OnScrollChangedListener onScrollChangedListener) {
        synchronized (this.f) {
            this.q = true;
            this.a.B();
            this.r = onGlobalLayoutListener;
            this.s = onScrollChangedListener;
        }
    }

    public void a(AdOverlayInfoParcel adOverlayInfoParcel) {
        boolean z = false;
        boolean b = this.x != null ? this.x.b() : false;
        h c = v.c();
        Context context = this.a.getContext();
        if (!b) {
            z = true;
        }
        c.a(context, adOverlayInfoParcel, z);
        if (this.b != null && adOverlayInfoParcel.m == null && adOverlayInfoParcel.b != null) {
            String str = adOverlayInfoParcel.b.c;
        }
    }

    public final void a(com.google.android.gms.ads.internal.overlay.e eVar) {
        j jVar = null;
        boolean p = this.a.p();
        gq gqVar = (!p || this.a.k().e) ? this.g : null;
        if (!p) {
            jVar = this.h;
        }
        a(new AdOverlayInfoParcel(eVar, gqVar, jVar, this.u, this.a.o()));
    }

    public void a(gq gqVar, j jVar, kn knVar, s sVar, boolean z, kt ktVar, @Nullable kw kwVar, com.google.android.gms.ads.internal.e eVar, nm nmVar, @Nullable rp rpVar) {
        if (eVar == null) {
            eVar = new com.google.android.gms.ads.internal.e(this.a.getContext());
        }
        this.x = new ng(this.a, nmVar);
        this.b = rpVar;
        a("/appEvent", new km(knVar));
        a("/backButton", kq.l);
        a("/refresh", kq.m);
        a("/canOpenURLs", kq.b);
        a("/canOpenIntents", kq.c);
        a("/click", kq.d);
        a("/close", kq.e);
        a("/customClose", kq.g);
        a("/instrument", kq.q);
        a("/delayPageLoaded", kq.s);
        a("/delayPageClosed", kq.t);
        a("/getLocationInfo", kq.u);
        a("/httpTrack", kq.h);
        a("/log", kq.i);
        a("/mraid", new ky(eVar, this.x));
        a("/mraidLoaded", this.v);
        a("/open", new kz(ktVar, eVar, this.x));
        a("/precache", kq.p);
        a("/touch", kq.k);
        a("/video", kq.n);
        a("/videoMeta", kq.o);
        a("/appStreaming", kq.f);
        if (kwVar != null) {
            a("/setInterstitialProperties", new kv(kwVar));
        }
        this.g = gqVar;
        this.h = jVar;
        this.k = knVar;
        this.n = ktVar;
        this.u = sVar;
        this.w = eVar;
        this.y = nmVar;
        this.o = kwVar;
        a(z);
    }

    public void a(tr trVar) {
        this.a = trVar;
    }

    public void a(a aVar) {
        this.i = aVar;
    }

    public void a(b bVar) {
        this.j = bVar;
    }

    public void a(c cVar) {
        this.l = cVar;
    }

    public void a(e eVar) {
        this.z = eVar;
    }

    public void a(String str, kr krVar) {
        synchronized (this.f) {
            List list = (List) this.e.get(str);
            if (list == null) {
                list = new CopyOnWriteArrayList();
                this.e.put(str, list);
            }
            list.add(krVar);
        }
    }

    public void a(boolean z) {
        this.m = z;
    }

    public final void a(boolean z, int i) {
        gq gqVar = (!this.a.p() || this.a.k().e) ? this.g : null;
        a(new AdOverlayInfoParcel(gqVar, this.h, this.u, this.a, z, i, this.a.o()));
    }

    public final void a(boolean z, int i, String str) {
        j jVar = null;
        boolean p = this.a.p();
        gq gqVar = (!p || this.a.k().e) ? this.g : null;
        if (!p) {
            jVar = new d(this.a, this.h);
        }
        a(new AdOverlayInfoParcel(gqVar, jVar, this.k, this.u, this.a, z, i, str, this.a.o(), this.n));
    }

    public final void a(boolean z, int i, String str, String str2) {
        boolean p = this.a.p();
        gq gqVar = (!p || this.a.k().e) ? this.g : null;
        a(new AdOverlayInfoParcel(gqVar, p ? null : new d(this.a, this.h), this.k, this.u, this.a, z, i, str, str2, this.a.o(), this.n));
    }

    public void b(String str, kr krVar) {
        synchronized (this.f) {
            List list = (List) this.e.get(str);
            if (list == null) {
                return;
            }
            list.remove(krVar);
        }
    }

    public boolean b() {
        boolean z;
        synchronized (this.f) {
            z = this.p;
        }
        return z;
    }

    public boolean c() {
        boolean z;
        synchronized (this.f) {
            z = this.q;
        }
        return z;
    }

    public OnGlobalLayoutListener d() {
        OnGlobalLayoutListener onGlobalLayoutListener;
        synchronized (this.f) {
            onGlobalLayoutListener = this.r;
        }
        return onGlobalLayoutListener;
    }

    public OnScrollChangedListener e() {
        OnScrollChangedListener onScrollChangedListener;
        synchronized (this.f) {
            onScrollChangedListener = this.s;
        }
        return onScrollChangedListener;
    }

    public boolean f() {
        boolean z;
        synchronized (this.f) {
            z = this.t;
        }
        return z;
    }

    public void g() {
        synchronized (this.f) {
            sf.a("Loading blank page in WebView, 2...");
            this.A = true;
            this.a.a("about:blank");
        }
    }

    public void h() {
        if (this.b != null) {
            sj.a.post(new Runnable() {
                public void run() {
                    if (ts.this.b != null) {
                        rp rpVar = ts.this.b;
                        tr trVar = ts.this.a;
                    }
                }
            });
        }
    }

    public void i() {
        synchronized (this.f) {
            this.t = true;
        }
        this.D++;
        l();
    }

    public void j() {
        this.D--;
        l();
    }

    public void k() {
        this.C = true;
        l();
    }

    public final void l() {
        if (this.i != null && ((this.B && this.D <= 0) || this.C)) {
            this.i.a(this.a, !this.C);
            this.i = null;
        }
        this.a.C();
    }

    public final void m() {
        if (this.b != null) {
            this.b = null;
        }
        synchronized (this.f) {
            this.e.clear();
            this.g = null;
            this.h = null;
            this.i = null;
            this.j = null;
            this.k = null;
            this.m = false;
            this.p = false;
            this.q = false;
            this.t = false;
            this.n = null;
            this.u = null;
            this.l = null;
            if (this.x != null) {
                this.x.a(true);
                this.x = null;
            }
        }
    }

    public e n() {
        return this.z;
    }

    public final void o() {
        synchronized (this.f) {
            this.m = false;
            this.p = true;
            v.e().a(new Runnable() {
                public void run() {
                    ts.this.a.B();
                    g i = ts.this.a.i();
                    if (i != null) {
                        i.m();
                    }
                    if (ts.this.l != null) {
                        ts.this.l.a();
                        ts.this.l = null;
                    }
                }
            });
        }
    }

    public final void onLoadResource(WebView webView, String str) {
        String str2 = "Loading resource: ";
        String valueOf = String.valueOf(str);
        sf.a(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            a(parse);
        }
    }

    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.f) {
            if (this.A) {
                sf.a("Blank page loaded, 1...");
                this.a.s();
                return;
            }
            this.B = true;
            p();
            l();
        }
    }

    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        String valueOf = (i >= 0 || (-i) - 1 >= c.length) ? String.valueOf(i) : c[(-i) - 1];
        a(this.a.getContext(), "http_err", valueOf, str2);
        super.onReceivedError(webView, i, str, str2);
    }

    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslError != null) {
            int primaryError = sslError.getPrimaryError();
            String valueOf = (primaryError < 0 || primaryError >= d.length) ? String.valueOf(primaryError) : d[primaryError];
            a(this.a.getContext(), "ssl_err", valueOf, v.g().a(sslError));
        }
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    @TargetApi(11)
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        try {
            gl a = gl.a(str);
            if (a == null) {
                return null;
            }
            gi a2 = v.j().a(a);
            return (a2 == null || !a2.a()) ? null : new WebResourceResponse("", "", a2.b());
        } catch (Throwable th) {
            return null;
        }
    }

    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        switch (keyEvent.getKeyCode()) {
            case 79:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case TransportMediator.KEYCODE_MEDIA_PLAY /*126*/:
            case TransportMediator.KEYCODE_MEDIA_PAUSE /*127*/:
            case 128:
            case 129:
            case TransportMediator.KEYCODE_MEDIA_RECORD /*130*/:
            case 222:
                return true;
            default:
                return false;
        }
    }

    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        String str2 = "AdWebView shouldOverrideUrlLoading: ";
        String valueOf = String.valueOf(str);
        sf.a(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            a(parse);
        } else if (this.m && webView == this.a.a() && b(parse)) {
            if (this.g != null && ((Boolean) is.as.c()).booleanValue()) {
                this.g.e();
                this.g = null;
            }
            return super.shouldOverrideUrlLoading(webView, str);
        } else if (this.a.a().willNotDraw()) {
            str2 = "AdWebView unable to handle URL: ";
            valueOf = String.valueOf(str);
            sz.e(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        } else {
            Uri uri;
            try {
                cm n = this.a.n();
                if (n != null && n.c(parse)) {
                    parse = n.a(parse, this.a.getContext(), this.a.b());
                }
                uri = parse;
            } catch (cn e) {
                String str3 = "Unable to append parameter to URL: ";
                str2 = String.valueOf(str);
                sz.e(str2.length() != 0 ? str3.concat(str2) : new String(str3));
                uri = parse;
            }
            if (this.w == null || this.w.b()) {
                a(new com.google.android.gms.ads.internal.overlay.e("android.intent.action.VIEW", uri.toString(), null, null, null, null, null));
            } else {
                this.w.a(str);
            }
        }
        return true;
    }
}
