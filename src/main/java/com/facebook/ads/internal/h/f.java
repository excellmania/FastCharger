package com.facebook.ads.internal.h;

import android.content.Intent;
import android.os.Bundle;
import android.widget.RelativeLayout.LayoutParams;
import com.facebook.ads.InterstitialAdActivity;
import com.facebook.ads.internal.h.j.a;
import com.facebook.ads.internal.util.i;

public class f implements j {
    private static final String a = f.class.getSimpleName();
    private final g b;
    private String c;

    public f(InterstitialAdActivity interstitialAdActivity, a aVar) {
        this.b = new g(interstitialAdActivity);
        this.b.setLayoutParams(new LayoutParams(-1, -1));
        aVar.a(this.b);
    }

    public void a() {
        this.b.onPause();
    }

    public void a(Intent intent, Bundle bundle) {
        String stringExtra = (bundle == null || !bundle.containsKey("url")) ? intent.getStringExtra("url") : bundle.getString("url");
        this.c = stringExtra;
        this.b.loadUrl(this.c != null ? this.c : "about:blank");
    }

    public void a(Bundle bundle) {
        bundle.putString("url", this.c);
    }

    public void b() {
        this.b.onResume();
    }

    public void c() {
        i.a(this.b);
        this.b.destroy();
    }
}
