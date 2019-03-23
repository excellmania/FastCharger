package com.google.android.gms.c;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.http.protocol.HTTP;

@pa
public class nu implements ns {
    final Set<WebView> a = Collections.synchronizedSet(new HashSet());
    private final Context b;

    public nu(Context context) {
        this.b = context;
    }

    public WebView a() {
        WebView webView = new WebView(this.b);
        webView.getSettings().setJavaScriptEnabled(true);
        return webView;
    }

    public void a(String str, final String str2, final String str3) {
        sz.b("Fetching assets for the given html");
        sj.a.post(new Runnable() {
            public void run() {
                final WebView a = nu.this.a();
                a.setWebViewClient(new WebViewClient() {
                    public void onPageFinished(WebView webView, String str) {
                        sz.b("Loading assets have finished");
                        nu.this.a.remove(a);
                    }

                    public void onReceivedError(WebView webView, int i, String str, String str2) {
                        sz.e("Loading assets have failed.");
                        nu.this.a.remove(a);
                    }
                });
                nu.this.a.add(a);
                a.loadDataWithBaseURL(str2, str3, "text/html", HTTP.UTF_8, null);
                sz.b("Fetching assets finished.");
            }
        });
    }
}
