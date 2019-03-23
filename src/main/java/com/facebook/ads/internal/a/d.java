package com.facebook.ads.internal.a;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.facebook.ads.internal.util.b.a;
import com.facebook.ads.internal.util.h;
import java.util.Map;

public class d extends a {
    private static final String a = d.class.getSimpleName();
    private final Context b;
    private final Uri c;
    private final Map<String, String> d;

    public d(Context context, Uri uri, Map<String, String> map) {
        this.b = context;
        this.c = uri;
        this.d = map;
    }

    public a a() {
        return a.OPEN_LINK;
    }

    public void b() {
        a(this.b, this.c, this.d);
        try {
            h.a(this.b, Uri.parse(this.c.getQueryParameter("link")));
        } catch (Exception e) {
            Log.d(a, "Failed to open link url: " + this.c.toString(), e);
        }
    }
}
