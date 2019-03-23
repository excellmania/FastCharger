package com.google.android.gms.c;

import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.common.internal.b;
import java.net.URI;
import java.net.URISyntaxException;

@pa
public class ud extends WebViewClient {
    private final String a;
    private boolean b = false;
    private final tr c;
    private final oi d;

    public ud(oi oiVar, tr trVar, String str) {
        this.a = b(str);
        this.c = trVar;
        this.d = oiVar;
    }

    private String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return str.endsWith("/") ? str.substring(0, str.length() - 1) : str;
        } catch (IndexOutOfBoundsException e) {
            sz.c(e.getMessage());
            return str;
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean a(String str) {
        String b = b(str);
        if (TextUtils.isEmpty(b)) {
            return false;
        }
        try {
            URI uri = new URI(b);
            if ("passback".equals(uri.getScheme())) {
                sz.b("Passback received");
                this.d.b();
                return true;
            } else if (TextUtils.isEmpty(this.a)) {
                return false;
            } else {
                URI uri2 = new URI(this.a);
                String host = uri2.getHost();
                String host2 = uri.getHost();
                b = uri2.getPath();
                String path = uri.getPath();
                if (!b.a(host, host2) || !b.a(b, path)) {
                    return false;
                }
                sz.b("Passback received");
                this.d.b();
                return true;
            }
        } catch (URISyntaxException e) {
            sz.c(e.getMessage());
            return false;
        }
    }

    public void onLoadResource(WebView webView, String str) {
        String str2 = "JavascriptAdWebViewClient::onLoadResource: ";
        String valueOf = String.valueOf(str);
        sz.b(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        if (!a(str)) {
            this.c.l().onLoadResource(this.c.a(), str);
        }
    }

    public void onPageFinished(WebView webView, String str) {
        String str2 = "JavascriptAdWebViewClient::onPageFinished: ";
        String valueOf = String.valueOf(str);
        sz.b(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        if (!this.b) {
            this.d.a();
            this.b = true;
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        String str2 = "JavascriptAdWebViewClient::shouldOverrideUrlLoading: ";
        String valueOf = String.valueOf(str);
        sz.b(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        if (!a(str)) {
            return this.c.l().shouldOverrideUrlLoading(this.c.a(), str);
        }
        sz.b("shouldOverrideUrlLoading: received passback url");
        return true;
    }
}
