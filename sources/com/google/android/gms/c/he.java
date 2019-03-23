package com.google.android.gms.c;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.widget.FrameLayout;
import com.google.android.gms.a.b;

@pa
public class he {
    private hq a;
    private final Object b = new Object();
    private final gu c;
    private final gt d;
    private final ia e;
    private final kj f;
    private final qv g;
    private final od h;
    private final nn i;

    @VisibleForTesting
    abstract class a<T> {
        a() {
        }

        @Nullable
        public abstract T b();

        @Nullable
        public abstract T b(hq hqVar);

        /* Access modifiers changed, original: protected|final */
        @Nullable
        public final T c() {
            T t = null;
            hq a = he.this.b();
            if (a == null) {
                sz.e("ClientApi class cannot be loaded.");
                return t;
            }
            try {
                return b(a);
            } catch (RemoteException e) {
                sz.c("Cannot invoke local loader using ClientApi class", e);
                return t;
            }
        }

        /* Access modifiers changed, original: protected|final */
        @Nullable
        public final T d() {
            try {
                return b();
            } catch (RemoteException e) {
                sz.c("Cannot invoke remote loader", e);
                return null;
            }
        }
    }

    public he(gu guVar, gt gtVar, ia iaVar, kj kjVar, qv qvVar, od odVar, nn nnVar) {
        this.c = guVar;
        this.d = gtVar;
        this.e = iaVar;
        this.f = kjVar;
        this.g = qvVar;
        this.h = odVar;
        this.i = nnVar;
    }

    @Nullable
    private static hq a() {
        try {
            Object newInstance = he.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").newInstance();
            if (newInstance instanceof IBinder) {
                return com.google.android.gms.c.hq.a.asInterface((IBinder) newInstance);
            }
            sz.e("ClientApi class is not an instance of IBinder");
            return null;
        } catch (Exception e) {
            sz.c("Failed to instantiate ClientApi class.", e);
            return null;
        }
    }

    private void a(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        hf.a().a(context, null, "gmob-apps", bundle, true);
    }

    private static boolean a(Activity activity, String str) {
        Intent intent = activity.getIntent();
        if (intent.hasExtra(str)) {
            return intent.getBooleanExtra(str, false);
        }
        sz.c("useClientJar flag not found in activity intent extras.");
        return false;
    }

    @Nullable
    private hq b() {
        hq hqVar;
        synchronized (this.b) {
            if (this.a == null) {
                this.a = a();
            }
            hqVar = this.a;
        }
        return hqVar;
    }

    public hl a(final Context context, final String str, final mo moVar) {
        return (hl) a(context, false, new a<hl>() {
            /* renamed from: a */
            public hl b() {
                hl a = he.this.d.a(context, str, moVar);
                if (a != null) {
                    return a;
                }
                he.this.a(context, "native_ad");
                return new ib();
            }

            /* renamed from: a */
            public hl b(hq hqVar) {
                return hqVar.createAdLoaderBuilder(b.a(context), str, moVar, 10084000);
            }
        });
    }

    public hn a(final Context context, final ha haVar, final String str) {
        return (hn) a(context, false, new a<hn>() {
            /* renamed from: a */
            public hn b() {
                hn a = he.this.c.a(context, haVar, str, null, 3);
                if (a != null) {
                    return a;
                }
                he.this.a(context, "search");
                return new ic();
            }

            /* renamed from: a */
            public hn b(hq hqVar) {
                return hqVar.createSearchAdManager(b.a(context), haVar, str, 10084000);
            }
        });
    }

    public hn a(Context context, ha haVar, String str, mo moVar) {
        final Context context2 = context;
        final ha haVar2 = haVar;
        final String str2 = str;
        final mo moVar2 = moVar;
        return (hn) a(context, false, new a<hn>() {
            /* renamed from: a */
            public hn b() {
                hn a = he.this.c.a(context2, haVar2, str2, moVar2, 1);
                if (a != null) {
                    return a;
                }
                he.this.a(context2, "banner");
                return new ic();
            }

            /* renamed from: a */
            public hn b(hq hqVar) {
                return hqVar.createBannerAdManager(b.a(context2), haVar2, str2, moVar2, 10084000);
            }
        });
    }

    public jy a(final Context context, final FrameLayout frameLayout, final FrameLayout frameLayout2) {
        return (jy) a(context, false, new a<jy>() {
            /* renamed from: a */
            public jy b() {
                jy a = he.this.f.a(context, frameLayout, frameLayout2);
                if (a != null) {
                    return a;
                }
                he.this.a(context, "native_ad_view_delegate");
                return new id();
            }

            /* renamed from: a */
            public jy b(hq hqVar) {
                return hqVar.createNativeAdViewDelegate(b.a(frameLayout), b.a(frameLayout2));
            }
        });
    }

    @Nullable
    public ny a(final Activity activity) {
        return (ny) a((Context) activity, a(activity, "com.google.android.gms.ads.internal.purchase.useClientJar"), new a<ny>() {
            /* renamed from: a */
            public ny b() {
                ny a = he.this.h.a(activity);
                if (a != null) {
                    return a;
                }
                he.this.a(activity, "iap");
                return null;
            }

            /* renamed from: a */
            public ny b(hq hqVar) {
                return hqVar.createInAppPurchaseManager(b.a(activity));
            }
        });
    }

    /* Access modifiers changed, original: 0000 */
    @VisibleForTesting
    public <T> T a(Context context, boolean z, a<T> aVar) {
        if (!(z || hf.a().b(context))) {
            sz.b("Google Play Services is not available");
            z = true;
        }
        Object c;
        if (z) {
            c = aVar.c();
            return c == null ? aVar.d() : c;
        } else {
            c = aVar.d();
            return c == null ? aVar.c() : c;
        }
    }

    public hn b(Context context, ha haVar, String str, mo moVar) {
        final Context context2 = context;
        final ha haVar2 = haVar;
        final String str2 = str;
        final mo moVar2 = moVar;
        return (hn) a(context, false, new a<hn>() {
            /* renamed from: a */
            public hn b() {
                hn a = he.this.c.a(context2, haVar2, str2, moVar2, 2);
                if (a != null) {
                    return a;
                }
                he.this.a(context2, "interstitial");
                return new ic();
            }

            /* renamed from: a */
            public hn b(hq hqVar) {
                return hqVar.createInterstitialAdManager(b.a(context2), haVar2, str2, moVar2, 10084000);
            }
        });
    }

    @Nullable
    public no b(final Activity activity) {
        return (no) a((Context) activity, a(activity, "com.google.android.gms.ads.internal.overlay.useClientJar"), new a<no>() {
            /* renamed from: a */
            public no b() {
                no a = he.this.i.a(activity);
                if (a != null) {
                    return a;
                }
                he.this.a(activity, "ad_overlay");
                return null;
            }

            /* renamed from: a */
            public no b(hq hqVar) {
                return hqVar.createAdOverlay(b.a(activity));
            }
        });
    }
}
