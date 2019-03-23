package com.google.android.gms.c;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;

@TargetApi(11)
@pa
public class tz extends ub {
    public tz(tr trVar, boolean z) {
        super(trVar, z);
    }

    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return a(webView, str, null);
    }
}
