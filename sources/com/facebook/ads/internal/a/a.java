package com.facebook.ads.internal.a;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.ads.internal.util.h;
import com.facebook.ads.internal.util.r;
import java.util.Map;

public abstract class a {
    public abstract com.facebook.ads.internal.util.b.a a();

    /* Access modifiers changed, original: protected */
    public void a(Context context, Uri uri, Map<String, String> map) {
        if (!TextUtils.isEmpty(uri.getQueryParameter("native_click_report_url"))) {
            new r(map).execute(new String[]{r0});
            h.a(context, "Click logged");
        }
    }

    public abstract void b();
}
