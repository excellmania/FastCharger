package com.facebook.ads.internal.a;

import android.content.Context;
import android.net.Uri;
import java.util.Map;

public class b {
    public static a a(Context context, Uri uri, Map<String, String> map) {
        String authority = uri.getAuthority();
        return "store".equals(authority) ? uri.getQueryParameter("video_url") != null ? null : new c(context, uri, map) : "open_link".equals(authority) ? new d(context, uri, map) : null;
    }
}
