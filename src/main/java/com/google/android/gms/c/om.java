package com.google.android.gms.c;

import android.content.Context;
import com.google.android.gms.c.ts.a;
import org.apache.http.protocol.HTTP;

@pa
public class om extends oh implements a {
    om(Context context, rv.a aVar, tr trVar, ol.a aVar2) {
        super(context, aVar, trVar, aVar2);
    }

    /* Access modifiers changed, original: protected */
    public void b() {
        if (this.e.e == -2) {
            this.c.l().a((a) this);
            f();
            sz.b("Loading HTML in WebView.");
            this.c.loadDataWithBaseURL(this.e.b, this.e.c, "text/html", HTTP.UTF_8, null);
        }
    }

    /* Access modifiers changed, original: protected */
    public void f() {
    }
}
