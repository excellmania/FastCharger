package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.internal.h.b;
import com.facebook.ads.internal.util.r;
import java.util.Collections;
import java.util.Map;

public class m extends a {
    private static final String b = m.class.getSimpleName();
    private final b c;
    private l d;
    private boolean e;

    public m(Context context, b bVar, b bVar2) {
        super(context, bVar2);
        this.c = bVar;
    }

    private void a(Map<String, String> map) {
        if (this.d != null) {
            if (!TextUtils.isEmpty(this.d.c())) {
                new r(map).execute(new String[]{r0});
            }
        }
    }

    public void a(l lVar) {
        this.d = lVar;
    }

    /* Access modifiers changed, original: protected */
    public void b() {
        if (this.d != null) {
            if (!(this.c == null || TextUtils.isEmpty(this.d.d()))) {
                if (this.c.a()) {
                    Log.w(b, "Webview already destroyed, cannot send impression");
                } else {
                    this.c.loadUrl("javascript:" + this.d.d());
                }
            }
            a(Collections.singletonMap("evt", "native_imp"));
        }
    }

    public synchronized void c() {
        if (!(this.e || this.d == null)) {
            this.e = true;
            if (!(this.c == null || TextUtils.isEmpty(this.d.b()))) {
                this.c.post(new Runnable() {
                    public void run() {
                        if (m.this.c.a()) {
                            Log.w(m.b, "Webview already destroyed, cannot activate");
                        } else {
                            m.this.c.loadUrl("javascript:" + m.this.d.b());
                        }
                    }
                });
            }
        }
    }

    public void d() {
        a(Collections.singletonMap("evt", "interstitial_displayed"));
    }
}
