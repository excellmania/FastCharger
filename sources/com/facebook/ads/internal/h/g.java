package com.facebook.ads.internal.h;

import android.content.Context;
import android.webkit.WebView;
import com.facebook.ads.internal.util.i;

public class g extends b {
    public g(Context context) {
        super(context);
    }

    public void destroy() {
        i.a((WebView) this);
        super.destroy();
    }
}
