package com.facebook.ads.internal.h;

import android.content.Context;
import android.net.http.SslError;
import android.support.annotation.NonNull;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.internal.util.h;
import com.facebook.ads.internal.util.i;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class d extends b {
    private final b a;
    private com.facebook.ads.internal.i.a b;
    private final long c;
    private boolean d = false;
    private long e = System.currentTimeMillis();

    public interface b {
        void a();

        void a(int i);

        void a(String str, Map<String, String> map);

        void b();
    }

    public class a {
        private final String b = a.class.getSimpleName();

        @JavascriptInterface
        public void alert(String str) {
            Log.e(this.b, str);
        }

        @JavascriptInterface
        public String getAnalogInfo() {
            return h.a(com.facebook.ads.internal.util.a.a());
        }

        @JavascriptInterface
        public void onPageInitialized() {
            if (!d.this.a()) {
                d.this.a.a();
                if (d.this.b != null) {
                    d.this.b.a();
                }
            }
        }
    }

    public d(Context context, final b bVar, int i) {
        super(context);
        this.a = bVar;
        addJavascriptInterface(new a(), "AdControl");
        this.c = com.facebook.ads.internal.h.b(context);
        this.b = new com.facebook.ads.internal.i.a(this, i, new com.facebook.ads.internal.i.a.a() {
            public void a() {
                if (!d.this.d) {
                    d.this.e = System.currentTimeMillis();
                    d.this.d = true;
                }
                bVar.b();
            }
        });
    }

    public void a(int i, int i2) {
        this.b.a(i);
        this.b.b(i2);
    }

    public void destroy() {
        if (this.b != null) {
            this.b.b();
            this.b = null;
        }
        i.a((WebView) this);
        super.destroy();
    }

    /* Access modifiers changed, original: protected */
    public WebViewClient getWebViewClient() {
        return new WebViewClient() {
            public void onReceivedSslError(WebView webView, @NonNull SslErrorHandler sslErrorHandler, SslError sslError) {
                sslErrorHandler.cancel();
            }

            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (System.currentTimeMillis() - d.this.e >= d.this.c) {
                    com.facebook.ads.internal.i.b c = d.this.b.c();
                    HashMap hashMap = new HashMap(3);
                    hashMap.put("vrc", String.valueOf(c.b()));
                    hashMap.put("vp", String.valueOf(c.c()));
                    hashMap.put("vh", new JSONObject(d.this.b.d()).toString());
                    d.this.a.a(str, hashMap);
                }
                return true;
            }
        };
    }

    /* Access modifiers changed, original: protected */
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (this.a != null) {
            this.a.a(i);
        }
        if (this.b == null) {
            return;
        }
        if (i == 0) {
            this.b.a();
        } else if (i == 8) {
            this.b.b();
        }
    }
}
