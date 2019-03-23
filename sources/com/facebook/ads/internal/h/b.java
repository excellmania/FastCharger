package com.facebook.ads.internal.h;

import android.content.Context;
import android.os.Build.VERSION;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.internal.util.i;

public abstract class b extends WebView {
    private boolean a;

    public b(Context context) {
        super(context);
        setWebChromeClient(getWebChromeClient());
        setWebViewClient(getWebViewClient());
        i.b(this);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setSupportZoom(false);
        if (VERSION.SDK_INT >= 17) {
            getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
    }

    public boolean a() {
        return this.a;
    }

    public void destroy() {
        this.a = true;
        super.destroy();
    }

    /* Access modifiers changed, original: protected */
    public WebChromeClient getWebChromeClient() {
        return new WebChromeClient();
    }

    /* Access modifiers changed, original: protected */
    public WebViewClient getWebViewClient() {
        return new WebViewClient();
    }
}
