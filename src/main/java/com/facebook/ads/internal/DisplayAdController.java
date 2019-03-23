package com.facebook.ads.internal;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.adapters.BannerAdapter;
import com.facebook.ads.internal.adapters.BannerAdapterListener;
import com.facebook.ads.internal.adapters.InterstitialAdapter;
import com.facebook.ads.internal.adapters.InterstitialAdapterListener;
import com.facebook.ads.internal.adapters.p;
import com.facebook.ads.internal.adapters.r;
import com.facebook.ads.internal.adapters.s;
import com.facebook.ads.internal.d.d;
import com.facebook.ads.internal.d.e;
import com.facebook.ads.internal.d.f;
import com.facebook.ads.internal.d.g;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.h;
import com.facebook.ads.internal.util.y;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DisplayAdController implements com.facebook.ads.internal.server.a.a {
    private static final String b = DisplayAdController.class.getSimpleName();
    private static final Handler h = new Handler(Looper.getMainLooper());
    private static boolean i = false;
    protected a a;
    private final Context c;
    private final String d;
    private final AdPlacementType e;
    private final com.facebook.ads.internal.server.a f;
    private final Handler g = new Handler();
    private final Runnable j;
    private final Runnable k;
    private volatile boolean l;
    private boolean m;
    private volatile boolean n;
    private AdAdapter o;
    private AdAdapter p;
    private View q;
    private d r;
    private f s;
    private e t;
    private c u;
    private AdSize v;
    private int w;
    private final c x;
    private boolean y;

    private static final class a extends y<DisplayAdController> {
        public a(DisplayAdController displayAdController) {
            super(displayAdController);
        }

        public void run() {
            DisplayAdController displayAdController = (DisplayAdController) a();
            if (displayAdController != null) {
                displayAdController.l = false;
                displayAdController.l();
            }
        }
    }

    private static final class b extends y<DisplayAdController> {
        public b(DisplayAdController displayAdController) {
            super(displayAdController);
        }

        public void run() {
            DisplayAdController displayAdController = (DisplayAdController) a();
            if (displayAdController != null) {
                displayAdController.o();
            }
        }
    }

    private class c extends BroadcastReceiver {
        private c() {
        }

        /* synthetic */ c(DisplayAdController displayAdController, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.SCREEN_OFF".equals(action)) {
                DisplayAdController.this.p();
            } else if ("android.intent.action.SCREEN_ON".equals(action)) {
                DisplayAdController.this.o();
            }
        }
    }

    public DisplayAdController(Context context, String str, e eVar, AdPlacementType adPlacementType, AdSize adSize, c cVar, int i, boolean z) {
        this.c = context;
        this.d = str;
        this.t = eVar;
        this.e = adPlacementType;
        this.v = adSize;
        this.u = cVar;
        this.w = i;
        this.x = new c(this, null);
        this.f = new com.facebook.ads.internal.server.a(context);
        this.f.a((com.facebook.ads.internal.server.a.a) this);
        this.j = new a(this);
        this.k = new b(this);
        this.m = z;
        i();
        CookieManager.getInstance();
        if (VERSION.SDK_INT < 21) {
            CookieSyncManager.createInstance(context);
        }
    }

    private Map<String, String> a(long j) {
        HashMap hashMap = new HashMap();
        hashMap.put("delay", String.valueOf(System.currentTimeMillis() - j));
        return hashMap;
    }

    private void a(AdAdapter adAdapter) {
        if (adAdapter != null) {
            adAdapter.onDestroy();
        }
    }

    private void a(final BannerAdapter bannerAdapter, d dVar, Map<String, Object> map) {
        this.o = bannerAdapter;
        final AnonymousClass5 anonymousClass5 = new Runnable() {
            public void run() {
                DisplayAdController.this.a(bannerAdapter);
                DisplayAdController.this.m();
            }
        };
        this.g.postDelayed(anonymousClass5, (long) dVar.a().h());
        bannerAdapter.loadBannerAd(this.c, this.v, new BannerAdapterListener() {
            public void onBannerAdClicked(BannerAdapter bannerAdapter) {
                DisplayAdController.this.a.b();
            }

            public void onBannerAdExpanded(BannerAdapter bannerAdapter) {
                DisplayAdController.this.p();
            }

            public void onBannerAdLoaded(BannerAdapter bannerAdapter, View view) {
                if (bannerAdapter == DisplayAdController.this.o) {
                    DisplayAdController.this.g.removeCallbacks(anonymousClass5);
                    AdAdapter g = DisplayAdController.this.p;
                    DisplayAdController.this.p = bannerAdapter;
                    DisplayAdController.this.q = view;
                    if (DisplayAdController.this.n) {
                        DisplayAdController.this.a.a(view);
                        DisplayAdController.this.a(g);
                        DisplayAdController.this.o();
                        return;
                    }
                    DisplayAdController.this.a.a();
                }
            }

            public void onBannerAdMinimized(BannerAdapter bannerAdapter) {
                DisplayAdController.this.o();
            }

            public void onBannerError(BannerAdapter bannerAdapter, AdError adError) {
                if (bannerAdapter == DisplayAdController.this.o) {
                    DisplayAdController.this.g.removeCallbacks(anonymousClass5);
                    DisplayAdController.this.a((AdAdapter) bannerAdapter);
                    DisplayAdController.this.m();
                }
            }

            public void onBannerLoggingImpression(BannerAdapter bannerAdapter) {
                DisplayAdController.this.a.c();
            }
        }, map);
    }

    private void a(final InterstitialAdapter interstitialAdapter, d dVar, Map<String, Object> map) {
        this.o = interstitialAdapter;
        final AnonymousClass7 anonymousClass7 = new Runnable() {
            public void run() {
                DisplayAdController.this.a(interstitialAdapter);
                DisplayAdController.this.m();
            }
        };
        this.g.postDelayed(anonymousClass7, (long) dVar.a().h());
        interstitialAdapter.loadInterstitialAd(this.c, new InterstitialAdapterListener() {
            public void onInterstitialAdClicked(InterstitialAdapter interstitialAdapter, String str, boolean z) {
                DisplayAdController.this.a.b();
                Object obj = !TextUtils.isEmpty(str) ? 1 : null;
                if (z && obj != null) {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    if (!(DisplayAdController.this.s.d instanceof Activity)) {
                        intent.addFlags(268435456);
                    }
                    intent.setData(Uri.parse(str));
                    DisplayAdController.this.s.d.startActivity(intent);
                }
            }

            public void onInterstitialAdDismissed(InterstitialAdapter interstitialAdapter) {
                DisplayAdController.this.a.e();
            }

            public void onInterstitialAdDisplayed(InterstitialAdapter interstitialAdapter) {
                DisplayAdController.this.a.d();
            }

            public void onInterstitialAdLoaded(InterstitialAdapter interstitialAdapter) {
                if (interstitialAdapter == DisplayAdController.this.o) {
                    DisplayAdController.this.g.removeCallbacks(anonymousClass7);
                    DisplayAdController.this.p = interstitialAdapter;
                    DisplayAdController.this.a.a();
                    DisplayAdController.this.o();
                }
            }

            public void onInterstitialError(InterstitialAdapter interstitialAdapter, AdError adError) {
                if (interstitialAdapter == DisplayAdController.this.o) {
                    DisplayAdController.this.g.removeCallbacks(anonymousClass7);
                    DisplayAdController.this.a((AdAdapter) interstitialAdapter);
                    DisplayAdController.this.m();
                    DisplayAdController.this.a.a(new b(adError.getErrorCode(), adError.getErrorMessage()));
                }
            }

            public void onInterstitialLoggingImpression(InterstitialAdapter interstitialAdapter) {
                DisplayAdController.this.a.c();
            }
        }, map);
    }

    private void a(r rVar, d dVar, com.facebook.ads.internal.d.a aVar, Map<String, Object> map) {
        final long currentTimeMillis = System.currentTimeMillis();
        this.o = rVar;
        final r rVar2 = rVar;
        final com.facebook.ads.internal.d.a aVar2 = aVar;
        AnonymousClass9 anonymousClass9 = new Runnable() {
            public void run() {
                DisplayAdController.this.a(rVar2);
                if (rVar2 instanceof p) {
                    h.a(DisplayAdController.this.c, com.facebook.ads.internal.util.p.a(((p) rVar2).C()) + " Failed. Ad request timed out");
                }
                Map a = DisplayAdController.this.a(currentTimeMillis);
                a.put("error", "-1");
                a.put("msg", "timeout");
                DisplayAdController.this.a(aVar2.a(g.REQUEST), a);
                DisplayAdController.this.m();
            }
        };
        this.g.postDelayed(anonymousClass9, (long) dVar.a().h());
        final AnonymousClass9 anonymousClass92 = anonymousClass9;
        final long j = currentTimeMillis;
        final com.facebook.ads.internal.d.a aVar3 = aVar;
        rVar.a(this.c, new s() {
            boolean a = false;
            boolean b = false;
            boolean c = false;

            public void a(r rVar) {
                if (rVar == DisplayAdController.this.o) {
                    DisplayAdController.this.g.removeCallbacks(anonymousClass92);
                    DisplayAdController.this.p = rVar;
                    DisplayAdController.this.a.a();
                    if (!this.a) {
                        this.a = true;
                        DisplayAdController.this.a(aVar3.a(g.REQUEST), DisplayAdController.this.a(j));
                    }
                }
            }

            public void a(r rVar, AdError adError) {
                if (rVar == DisplayAdController.this.o) {
                    DisplayAdController.this.g.removeCallbacks(anonymousClass92);
                    DisplayAdController.this.a((AdAdapter) rVar);
                    if (!this.a) {
                        this.a = true;
                        Map a = DisplayAdController.this.a(j);
                        a.put("error", String.valueOf(adError.getErrorCode()));
                        a.put("msg", String.valueOf(adError.getErrorMessage()));
                        DisplayAdController.this.a(aVar3.a(g.REQUEST), a);
                    }
                    DisplayAdController.this.m();
                }
            }

            public void b(r rVar) {
                if (!this.b) {
                    this.b = true;
                    DisplayAdController.this.a(aVar3.a(g.IMPRESSION), null);
                }
            }

            public void c(r rVar) {
                if (!this.c) {
                    this.c = true;
                    DisplayAdController.this.a(aVar3.a(g.CLICK), null);
                }
                if (DisplayAdController.this.a != null) {
                    DisplayAdController.this.a.b();
                }
            }
        }, map);
    }

    private void a(List<String> list, Map<String, String> map) {
        if (list != null && !list.isEmpty()) {
            for (String str : list) {
                new com.facebook.ads.internal.util.r(map).execute(new String[]{str});
            }
        }
    }

    private void i() {
        if (!this.m) {
            IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            this.c.registerReceiver(this.x, intentFilter);
            this.y = true;
        }
    }

    private void j() {
        if (this.y) {
            try {
                this.c.unregisterReceiver(this.x);
                this.y = false;
            } catch (Exception e) {
                com.facebook.ads.internal.util.c.a(com.facebook.ads.internal.util.b.a(e, "Error unregistering screen state receiever"));
            }
        }
    }

    private AdPlacementType k() {
        return this.e != null ? this.e : this.v == null ? AdPlacementType.NATIVE : this.v == AdSize.INTERSTITIAL ? AdPlacementType.INTERSTITIAL : AdPlacementType.BANNER;
    }

    private void l() {
        this.s = new f(this.c, this.d, this.v, this.t, this.u, this.w, AdSettings.isTestMode(this.c));
        this.f.a(this.s);
    }

    private synchronized void m() {
        h.post(new Runnable() {
            public void run() {
                try {
                    DisplayAdController.this.n();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    private void n() {
        this.o = null;
        d dVar = this.r;
        com.facebook.ads.internal.d.a d = dVar.d();
        if (d == null) {
            this.a.a(AdErrorType.NO_FILL.getAdErrorWrapper(""));
            o();
            return;
        }
        String a = d.a();
        AdAdapter a2 = com.facebook.ads.internal.adapters.d.a(a, dVar.a().a());
        if (a2 == null) {
            Log.e(b, "Adapter does not exist: " + a);
            m();
        } else if (k() != a2.getPlacementType()) {
            this.a.a(AdErrorType.INTERNAL_ERROR.getAdErrorWrapper(""));
        } else {
            Map hashMap = new HashMap();
            e a3 = dVar.a();
            hashMap.put("data", d.b());
            hashMap.put("definition", a3);
            if (this.s == null) {
                this.a.a(AdErrorType.UNKNOWN_ERROR.getAdErrorWrapper("environment is empty"));
            }
            switch (a2.getPlacementType()) {
                case INTERSTITIAL:
                    a((InterstitialAdapter) a2, dVar, hashMap);
                    return;
                case BANNER:
                    a((BannerAdapter) a2, dVar, hashMap);
                    return;
                case NATIVE:
                    a((r) a2, dVar, d, hashMap);
                    return;
                default:
                    Log.e(b, "attempt unexpected adapter type");
                    return;
            }
        }
    }

    private void o() {
        if (!this.m && !this.l) {
            switch (k()) {
                case INTERSTITIAL:
                    if (!h.a(this.c)) {
                        this.g.postDelayed(this.k, 1000);
                        break;
                    }
                    break;
                case BANNER:
                    boolean a = com.facebook.ads.internal.i.a.a(this.q, this.r == null ? 1 : this.r.a().e()).a();
                    if (!(this.q == null || a)) {
                        this.g.postDelayed(this.k, 1000);
                        return;
                    }
                default:
                    return;
            }
            long b = this.r == null ? 30000 : this.r.a().b();
            if (b > 0) {
                this.g.postDelayed(this.j, b);
                this.l = true;
            }
        }
    }

    private void p() {
        if (this.l) {
            this.g.removeCallbacks(this.j);
            this.l = false;
        }
    }

    private Handler q() {
        return !r() ? this.g : h;
    }

    private static synchronized boolean r() {
        boolean z;
        synchronized (DisplayAdController.class) {
            z = i;
        }
        return z;
    }

    public e a() {
        return this.r == null ? null : this.r.a();
    }

    public void a(a aVar) {
        this.a = aVar;
    }

    public synchronized void a(final b bVar) {
        q().post(new Runnable() {
            public void run() {
                DisplayAdController.this.a.a(bVar);
                if (!DisplayAdController.this.m && !DisplayAdController.this.l) {
                    switch (bVar.a().getErrorCode()) {
                        case 1000:
                        case 1002:
                            switch (AnonymousClass3.a[DisplayAdController.this.k().ordinal()]) {
                                case 2:
                                    DisplayAdController.this.g.postDelayed(DisplayAdController.this.j, 30000);
                                    DisplayAdController.this.l = true;
                                    return;
                                default:
                                    return;
                            }
                        default:
                            return;
                    }
                }
            }
        });
    }

    public synchronized void a(final com.facebook.ads.internal.server.d dVar) {
        q().post(new Runnable() {
            public void run() {
                d b = dVar.b();
                if (b == null || b.a() == null) {
                    throw new IllegalStateException("invalid placement in response");
                }
                DisplayAdController.this.r = b;
                DisplayAdController.this.m();
            }
        });
    }

    public void b() {
        l();
    }

    public void c() {
        if (this.p == null) {
            throw new IllegalStateException("no adapter ready to start");
        } else if (this.n) {
            throw new IllegalStateException("ad already started");
        } else {
            this.n = true;
            switch (this.p.getPlacementType()) {
                case INTERSTITIAL:
                    ((InterstitialAdapter) this.p).show();
                    return;
                case BANNER:
                    if (this.q != null) {
                        this.a.a(this.q);
                        o();
                        return;
                    }
                    return;
                case NATIVE:
                    r rVar = (r) this.p;
                    if (rVar.b()) {
                        this.a.a(rVar);
                        return;
                    }
                    throw new IllegalStateException("ad is not ready or already displayed");
                default:
                    Log.e(b, "start unexpected adapter type");
                    return;
            }
        }
    }

    public void d() {
        j();
        if (this.n) {
            p();
            a(this.p);
            this.q = null;
            this.n = false;
        }
    }

    public void e() {
        if (this.n) {
            p();
        }
    }

    public void f() {
        if (this.n) {
            o();
        }
    }

    public void g() {
        p();
        l();
    }

    public void h() {
        this.m = true;
        p();
    }
}
