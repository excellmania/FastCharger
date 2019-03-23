package com.facebook.ads.internal.server;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.ads.AdSettings;
import com.facebook.ads.internal.AdErrorType;
import com.facebook.ads.internal.b;
import com.facebook.ads.internal.d.d;
import com.facebook.ads.internal.d.f;
import com.facebook.ads.internal.g.a.m;
import com.facebook.ads.internal.g.a.n;
import com.facebook.ads.internal.h;
import com.facebook.ads.internal.util.q;
import com.facebook.ads.internal.util.s;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONException;

public class a {
    private static final s i = new s();
    private static final ThreadPoolExecutor j = ((ThreadPoolExecutor) Executors.newCachedThreadPool(i));
    Map<String, String> a;
    private final Context b;
    private final b c = b.a();
    private final h d = new h(this.b);
    private a e;
    private f f;
    private com.facebook.ads.internal.g.a.a g;
    private final String h;

    public interface a {
        void a(b bVar);

        void a(d dVar);
    }

    public a(Context context) {
        String str;
        this.b = context.getApplicationContext();
        if (TextUtils.isEmpty(AdSettings.getUrlPrefix())) {
            str = "https://graph.facebook.com/network_ads_common/";
        } else {
            str = String.format("https://graph.%s.facebook.com/network_ads_common/", new Object[]{AdSettings.getUrlPrefix()});
        }
        this.h = str;
    }

    private void a(b bVar) {
        if (this.e != null) {
            this.e.a(bVar);
        }
        a();
    }

    private void a(d dVar) {
        if (this.e != null) {
            this.e.a(dVar);
        }
        a();
    }

    private void a(String str) {
        try {
            c a = this.c.a(str);
            d b = a.b();
            if (b != null) {
                this.d.a(b.b());
                com.facebook.ads.internal.util.d.a(b.a().c(), this.f);
            }
            switch (a.a()) {
                case ADS:
                    d dVar = (d) a;
                    if (b != null && b.a().d()) {
                        com.facebook.ads.internal.util.d.a(str, this.f);
                    }
                    a(dVar);
                    return;
                case ERROR:
                    e eVar = (e) a;
                    String c = eVar.c();
                    AdErrorType adErrorTypeFromCode = AdErrorType.adErrorTypeFromCode(eVar.d(), AdErrorType.ERROR_MESSAGE);
                    if (c != null) {
                        str = c;
                    }
                    a(adErrorTypeFromCode.getAdErrorWrapper(str));
                    return;
                default:
                    a(AdErrorType.UNKNOWN_RESPONSE.getAdErrorWrapper(str));
                    return;
            }
        } catch (Exception e) {
            a(AdErrorType.PARSER_FAILURE.getAdErrorWrapper(e.getMessage()));
        }
        a(AdErrorType.PARSER_FAILURE.getAdErrorWrapper(e.getMessage()));
    }

    private com.facebook.ads.internal.g.a.b b() {
        return new com.facebook.ads.internal.g.a.b() {
            public void a(m mVar) {
                com.facebook.ads.internal.util.d.b(a.this.f);
                a.this.g = null;
                try {
                    n a = mVar.a();
                    if (a != null) {
                        String e = a.e();
                        c a2 = a.this.c.a(e);
                        if (a2.a() == com.facebook.ads.internal.server.c.a.ERROR) {
                            e eVar = (e) a2;
                            String c = eVar.c();
                            a.this.a(AdErrorType.adErrorTypeFromCode(eVar.d(), AdErrorType.ERROR_MESSAGE).getAdErrorWrapper(c == null ? e : c));
                            return;
                        }
                    }
                } catch (JSONException e2) {
                }
                a.this.a(new b(AdErrorType.NETWORK_ERROR, mVar.getMessage()));
            }

            public void a(n nVar) {
                if (nVar != null) {
                    String e = nVar.e();
                    com.facebook.ads.internal.util.d.b(a.this.f);
                    a.this.g = null;
                    a.this.a(e);
                }
            }

            public void a(Exception exception) {
                if (m.class.equals(exception.getClass())) {
                    a((m) exception);
                } else {
                    a.this.a(new b(AdErrorType.NETWORK_ERROR, exception.getMessage()));
                }
            }
        };
    }

    public void a() {
        if (this.g != null) {
            this.g.c(1);
            this.g.b(1);
            this.g = null;
        }
    }

    public void a(final f fVar) {
        a();
        if (q.a(this.b) == com.facebook.ads.internal.util.q.a.NONE) {
            a(new b(AdErrorType.NETWORK_ERROR, "No network connection"));
            return;
        }
        this.f = fVar;
        com.facebook.ads.internal.util.a.a(this.b);
        if (com.facebook.ads.internal.util.d.a(fVar)) {
            String c = com.facebook.ads.internal.util.d.c(fVar);
            if (c != null) {
                a(c);
                return;
            } else {
                a(AdErrorType.LOAD_TOO_FREQUENTLY.getAdErrorWrapper(null));
                return;
            }
        }
        j.submit(new Runnable() {
            public void run() {
                com.facebook.ads.internal.d.h.b(a.this.b);
                a.this.a = fVar.e();
                try {
                    a.this.g = new com.facebook.ads.internal.g.a.a(a.this.b, fVar.e);
                    a.this.g.a(a.this.h, a.this.g.b().a(a.this.a), a.this.b());
                } catch (Exception e) {
                    a.this.a(AdErrorType.AD_REQUEST_FAILED.getAdErrorWrapper(e.getMessage()));
                }
            }
        });
    }

    public void a(a aVar) {
        this.e = aVar;
    }
}
