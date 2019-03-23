package com.google.android.gms.c;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.Nullable;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.v;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.http.HttpHeaders;
import org.apache.http.protocol.HTTP;

@TargetApi(11)
@pa
public class ub extends ts {
    public ub(tr trVar, boolean z) {
        super(trVar, z);
    }

    /* Access modifiers changed, original: protected */
    public WebResourceResponse a(Context context, String str, String str2) {
        Map hashMap = new HashMap();
        hashMap.put("User-Agent", v.e().a(context, str));
        hashMap.put(HttpHeaders.CACHE_CONTROL, "max-stale=3600");
        String str3 = (String) new sq(context).a(str2, hashMap).get(60, TimeUnit.SECONDS);
        return str3 == null ? null : new WebResourceResponse("application/javascript", HTTP.UTF_8, new ByteArrayInputStream(str3.getBytes(HTTP.UTF_8)));
    }

    /* Access modifiers changed, original: protected */
    public WebResourceResponse a(WebView webView, String str, @Nullable Map<String, String> map) {
        if (webView instanceof tr) {
            tr trVar = (tr) webView;
            if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
                return super.shouldInterceptRequest(webView, str);
            }
            if (trVar.l() != null) {
                trVar.l().o();
            }
            String str2 = trVar.k().e ? (String) is.T.c() : trVar.p() ? (String) is.S.c() : (String) is.R.c();
            try {
                return a(trVar.getContext(), trVar.o().b, str2);
            } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
                str2 = "Could not fetch MRAID JS. ";
                String valueOf = String.valueOf(e.getMessage());
                sz.e(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
                return null;
            }
        }
        sz.e("Tried to intercept request from a WebView that wasn't an AdWebView.");
        return null;
    }
}
