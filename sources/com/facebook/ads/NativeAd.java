package com.facebook.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.support.annotation.Nullable;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.ads.NativeAdView.Type;
import com.facebook.ads.internal.DisplayAdController;
import com.facebook.ads.internal.adapters.q;
import com.facebook.ads.internal.adapters.r;
import com.facebook.ads.internal.d.e;
import com.facebook.ads.internal.h;
import com.facebook.ads.internal.h.s;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.l;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.WeakHashMap;
import org.json.JSONObject;

public class NativeAd implements Ad {
    private static final com.facebook.ads.internal.c a = com.facebook.ads.internal.c.ADS;
    private static final String c = NativeAd.class.getSimpleName();
    private static WeakHashMap<View, WeakReference<NativeAd>> d = new WeakHashMap();
    private long A;
    private String B;
    private boolean C;
    private final long b;
    private final Context e;
    private final String f;
    private final String g;
    private final com.facebook.ads.internal.c.b h;
    private AdListener i;
    private ImpressionListener j;
    private DisplayAdController k;
    private volatile boolean l;
    private r m;
    private e n;
    private View o;
    private List<View> p;
    private OnTouchListener q;
    private com.facebook.ads.internal.i.a r;
    private q s;
    private a t;
    private b u;
    private s v;
    private Type w;
    private boolean x;
    private boolean y;
    private boolean z;

    private class c extends com.facebook.ads.internal.adapters.b {
        private c() {
        }

        /* synthetic */ c(NativeAd nativeAd, AnonymousClass1 anonymousClass1) {
            this();
        }

        public boolean a() {
            return false;
        }

        public void d() {
            if (NativeAd.this.j != null) {
                NativeAd.this.j.onLoggingImpression(NativeAd.this);
            }
            if ((NativeAd.this.i instanceof ImpressionListener) && NativeAd.this.i != NativeAd.this.j) {
                ((ImpressionListener) NativeAd.this.i).onLoggingImpression(NativeAd.this);
            }
        }

        public void e() {
        }
    }

    public static class Image {
        private final String a;
        private final int b;
        private final int c;

        public Image(String str, int i, int i2) {
            this.a = str;
            this.b = i;
            this.c = i2;
        }

        public static Image fromJSONObject(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            String optString = jSONObject.optString("url");
            return optString != null ? new Image(optString, jSONObject.optInt("width", 0), jSONObject.optInt("height", 0)) : null;
        }

        public int getHeight() {
            return this.c;
        }

        public String getUrl() {
            return this.a;
        }

        public int getWidth() {
            return this.b;
        }
    }

    public enum MediaCacheFlag {
        NONE(0),
        ICON(1),
        IMAGE(2),
        VIDEO(3);
        
        public static final EnumSet<MediaCacheFlag> ALL = null;
        private final long a;

        static {
            ALL = EnumSet.allOf(MediaCacheFlag.class);
        }

        private MediaCacheFlag(long j) {
            this.a = j;
        }

        public long getCacheFlagValue() {
            return this.a;
        }
    }

    public static class Rating {
        private final double a;
        private final double b;

        public Rating(double d, double d2) {
            this.a = d;
            this.b = d2;
        }

        public static Rating fromJSONObject(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            double optDouble = jSONObject.optDouble("value", 0.0d);
            double optDouble2 = jSONObject.optDouble("scale", 0.0d);
            return (optDouble == 0.0d || optDouble2 == 0.0d) ? null : new Rating(optDouble, optDouble2);
        }

        public double getScale() {
            return this.b;
        }

        public double getValue() {
            return this.a;
        }
    }

    private class a implements OnClickListener, OnTouchListener {
        private int b;
        private int c;
        private int d;
        private int e;
        private float f;
        private float g;
        private int h;
        private int i;
        private boolean j;
        private boolean k;
        private long l;

        private a() {
            this.k = false;
            this.l = System.currentTimeMillis();
        }

        /* synthetic */ a(NativeAd nativeAd, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void a() {
            if (!this.k) {
                this.l = System.currentTimeMillis();
                this.k = true;
            }
        }

        public Map<String, String> b() {
            HashMap hashMap = new HashMap();
            hashMap.put("clickX", String.valueOf(this.b));
            hashMap.put("clickY", String.valueOf(this.c));
            hashMap.put("width", String.valueOf(this.d));
            hashMap.put("height", String.valueOf(this.e));
            hashMap.put("adPositionX", String.valueOf(this.f));
            hashMap.put("adPositionY", String.valueOf(this.g));
            hashMap.put("visibleWidth", String.valueOf(this.i));
            hashMap.put("visibleHeight", String.valueOf(this.h));
            return hashMap;
        }

        public void onClick(View view) {
            if (System.currentTimeMillis() - this.l < NativeAd.this.b) {
                Log.v(NativeAd.c, "Premature click event (threshold=" + NativeAd.this.b + ").");
                return;
            }
            if (!this.j) {
                Log.e("FBAudienceNetworkLog", "No touch data recorded, please ensure touch events reach the ad View by returning false if you intercept the event.");
            }
            Map b = b();
            if (NativeAd.this.w != null) {
                b.put("nti", String.valueOf(NativeAd.this.w.getValue()));
            }
            if (NativeAd.this.x) {
                b.put("nhs", String.valueOf(NativeAd.this.x));
            }
            com.facebook.ads.internal.i.b c = NativeAd.this.r.c();
            b.put("vrc", String.valueOf(c.b()));
            b.put("vp", String.valueOf(c.c()));
            b.put("vh", new JSONObject(NativeAd.this.r.d()).toString());
            NativeAd.this.m.b(b);
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && NativeAd.this.o != null) {
                this.d = NativeAd.this.o.getWidth();
                this.e = NativeAd.this.o.getHeight();
                int[] iArr = new int[2];
                NativeAd.this.o.getLocationInWindow(iArr);
                this.f = (float) iArr[0];
                this.g = (float) iArr[1];
                Rect rect = new Rect();
                NativeAd.this.o.getGlobalVisibleRect(rect);
                this.i = rect.width();
                this.h = rect.height();
                int[] iArr2 = new int[2];
                view.getLocationInWindow(iArr2);
                this.b = (((int) motionEvent.getX()) + iArr2[0]) - iArr[0];
                this.c = (iArr2[1] + ((int) motionEvent.getY())) - iArr[1];
                this.j = true;
            }
            return NativeAd.this.q != null && NativeAd.this.q.onTouch(view, motionEvent);
        }
    }

    private class b extends BroadcastReceiver {
        private boolean b;

        private b() {
        }

        /* synthetic */ b(NativeAd nativeAd, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.facebook.ads.native.impression:" + NativeAd.this.g);
            intentFilter.addAction("com.facebook.ads.native.click:" + NativeAd.this.g);
            LocalBroadcastManager.getInstance(NativeAd.this.e).registerReceiver(this, intentFilter);
            this.b = true;
        }

        public void b() {
            if (this.b) {
                try {
                    LocalBroadcastManager.getInstance(NativeAd.this.e).unregisterReceiver(this);
                } catch (Exception e) {
                }
            }
        }

        public void onReceive(Context context, Intent intent) {
            Object obj = intent.getAction().split(":")[0];
            if ("com.facebook.ads.native.impression".equals(obj)) {
                NativeAd.this.s.a();
            } else if ("com.facebook.ads.native.click".equals(obj)) {
                HashMap hashMap = new HashMap();
                hashMap.put("mil", String.valueOf(true));
                NativeAd.this.m.b(hashMap);
            }
        }
    }

    public NativeAd(Context context, r rVar, e eVar) {
        this(context, null);
        this.n = eVar;
        this.l = true;
        this.m = rVar;
    }

    public NativeAd(Context context, String str) {
        this.g = UUID.randomUUID().toString();
        this.p = new ArrayList();
        this.C = false;
        this.e = context;
        this.f = str;
        this.b = h.b(context);
        this.h = new com.facebook.ads.internal.c.b(context);
    }

    NativeAd(NativeAd nativeAd) {
        this(nativeAd.e, null);
        this.n = nativeAd.n;
        this.l = true;
        this.m = nativeAd.m;
    }

    private void a(View view) {
        this.p.add(view);
        view.setOnClickListener(this.t);
        view.setOnTouchListener(this.t);
    }

    private void a(List<View> list, View view) {
        if (!(view instanceof com.facebook.ads.internal.h.c) && !(view instanceof AdChoicesView) && !(view instanceof com.facebook.ads.internal.h.b.c)) {
            list.add(view);
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    a((List) list, viewGroup.getChildAt(i));
                }
            }
        }
    }

    public static void downloadAndDisplayImage(Image image, ImageView imageView) {
        if (image != null && imageView != null) {
            new l(imageView).a(image.getUrl());
        }
    }

    private int i() {
        return this.n != null ? this.n.e() : (this.k == null || this.k.a() == null) ? 1 : this.k.a().e();
    }

    private int j() {
        return this.n != null ? this.n.e() : this.m != null ? this.m.i() : (this.k == null || this.k.a() == null) ? 0 : this.k.a().f();
    }

    private int k() {
        return this.n != null ? this.n.g() : this.m != null ? this.m.j() : (this.k == null || this.k.a() == null) ? 1000 : this.k.a().g();
    }

    private void l() {
        for (View view : this.p) {
            view.setOnClickListener(null);
            view.setOnTouchListener(null);
        }
        this.p.clear();
    }

    private void m() {
        if (this.m != null && this.m.c()) {
            this.u = new b(this, null);
            this.u.a();
            this.s = new q(this.e, new com.facebook.ads.internal.adapters.b() {
                public boolean a() {
                    return true;
                }
            }, this.m);
        }
    }

    private void n() {
        if (this.C) {
            this.s = new q(this.e, new c() {
                public boolean b() {
                    return true;
                }

                public String c() {
                    return NativeAd.this.B;
                }
            }, this.m);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public r a() {
        return this.m;
    }

    /* Access modifiers changed, original: 0000 */
    public void a(Type type) {
        this.w = type;
    }

    /* Access modifiers changed, original: 0000 */
    public void a(boolean z) {
        this.x = z;
    }

    /* Access modifiers changed, original: 0000 */
    public String b() {
        return !isAdLoaded() ? null : this.m.v();
    }

    /* Access modifiers changed, original: 0000 */
    public void b(boolean z) {
        this.y = z;
    }

    /* Access modifiers changed, original: 0000 */
    public String c() {
        return !isAdLoaded() ? null : (!h.c(this.e) || TextUtils.isEmpty(this.m.w())) ? this.m.w() : this.h.c(this.m.w());
    }

    /* Access modifiers changed, original: 0000 */
    public String d() {
        return !isAdLoaded() ? null : this.m.x();
    }

    public void destroy() {
        if (this.u != null) {
            this.u.b();
            this.u = null;
        }
        if (this.k != null) {
            this.k.d();
            this.k = null;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public String e() {
        return !isAdLoaded() ? null : this.m.y();
    }

    /* Access modifiers changed, original: 0000 */
    public String f() {
        return !isAdLoaded() ? null : this.m.z();
    }

    /* Access modifiers changed, original: 0000 */
    public List<NativeAd> g() {
        return !isAdLoaded() ? null : this.m.A();
    }

    public String getAdBody() {
        return !isAdLoaded() ? null : this.m.p();
    }

    public String getAdCallToAction() {
        return !isAdLoaded() ? null : this.m.q();
    }

    public Image getAdChoicesIcon() {
        return !isAdLoaded() ? null : this.m.t();
    }

    public String getAdChoicesLinkUrl() {
        return !isAdLoaded() ? null : this.m.u();
    }

    public Image getAdCoverImage() {
        return !isAdLoaded() ? null : this.m.l();
    }

    public Image getAdIcon() {
        return !isAdLoaded() ? null : this.m.k();
    }

    @Nullable
    public AdNetwork getAdNetwork() {
        return (!isAdLoaded() || this.m == null) ? null : this.m.B();
    }

    public String getAdSocialContext() {
        return !isAdLoaded() ? null : this.m.r();
    }

    @Deprecated
    public Rating getAdStarRating() {
        return !isAdLoaded() ? null : this.m.s();
    }

    public String getAdSubtitle() {
        return !isAdLoaded() ? null : this.m.o();
    }

    public String getAdTitle() {
        return !isAdLoaded() ? null : this.m.n();
    }

    public NativeAdViewAttributes getAdViewAttributes() {
        return !isAdLoaded() ? null : this.m.m();
    }

    public String getId() {
        return !isAdLoaded() ? null : this.g;
    }

    public String getPlacementId() {
        return this.f;
    }

    public boolean isAdLoaded() {
        return this.m != null && this.m.b();
    }

    public boolean isNativeConfigEnabled() {
        return isAdLoaded() && this.m.f();
    }

    public void loadAd() {
        loadAd(EnumSet.of(MediaCacheFlag.NONE));
    }

    public void loadAd(final EnumSet<MediaCacheFlag> enumSet) {
        if (this.l) {
            throw new IllegalStateException("loadAd cannot be called more than once");
        }
        this.A = System.currentTimeMillis();
        this.l = true;
        this.k = new DisplayAdController(this.e, this.f, com.facebook.ads.internal.e.NATIVE_UNKNOWN, AdPlacementType.NATIVE, null, a, 1, true);
        this.k.a(new com.facebook.ads.internal.a() {
            public void a() {
                if (NativeAd.this.k != null) {
                    NativeAd.this.k.c();
                }
            }

            public void a(final r rVar) {
                com.facebook.ads.internal.util.c.a(com.facebook.ads.internal.util.b.a(com.facebook.ads.internal.util.b.b.LOADING_AD, AdPlacementType.NATIVE, System.currentTimeMillis() - NativeAd.this.A, null));
                if (rVar != null) {
                    if (enumSet.contains(MediaCacheFlag.ICON) && rVar.k() != null) {
                        NativeAd.this.h.a(rVar.k().getUrl());
                    }
                    if (enumSet.contains(MediaCacheFlag.IMAGE)) {
                        if (rVar.l() != null) {
                            NativeAd.this.h.a(rVar.l().getUrl());
                        }
                        if (rVar.A() != null) {
                            for (NativeAd nativeAd : rVar.A()) {
                                if (nativeAd.getAdCoverImage() != null) {
                                    NativeAd.this.h.a(nativeAd.getAdCoverImage().getUrl());
                                }
                            }
                        }
                    }
                    if (enumSet.contains(MediaCacheFlag.VIDEO) && !TextUtils.isEmpty(rVar.w()) && h.c(NativeAd.this.e)) {
                        NativeAd.this.h.b(rVar.w());
                    }
                    NativeAd.this.h.a(new com.facebook.ads.internal.c.a() {
                        public void a() {
                            NativeAd.this.m = rVar;
                            NativeAd.this.m();
                            NativeAd.this.n();
                            if (NativeAd.this.i != null) {
                                NativeAd.this.i.onAdLoaded(NativeAd.this);
                            }
                        }
                    });
                    if (NativeAd.this.i != null && rVar.A() != null) {
                        for (NativeAd nativeAd2 : rVar.A()) {
                            nativeAd2.setAdListener(NativeAd.this.i);
                        }
                    }
                }
            }

            public void a(com.facebook.ads.internal.b bVar) {
                if (NativeAd.this.i != null) {
                    NativeAd.this.i.onError(NativeAd.this, bVar.b());
                }
            }

            public void b() {
                if (NativeAd.this.i != null) {
                    NativeAd.this.i.onAdClicked(NativeAd.this);
                }
            }

            public void c() {
                throw new IllegalStateException("Native ads manager their own impressions.");
            }
        });
        this.k.b();
    }

    public void registerViewForInteraction(View view) {
        List arrayList = new ArrayList();
        a(arrayList, view);
        registerViewForInteraction(view, arrayList);
    }

    public void registerViewForInteraction(View view, List<View> list) {
        if (view == null) {
            throw new IllegalArgumentException("Must provide a View");
        } else if (list == null || list.size() == 0) {
            throw new IllegalArgumentException("Invalid set of clickable views");
        } else if (isAdLoaded()) {
            if (this.o != null) {
                Log.w(c, "Native Ad was already registered with a View. Auto unregistering and proceeding.");
                unregisterView();
            }
            if (d.containsKey(view)) {
                Log.w(c, "View already registered with a NativeAd. Auto unregistering and proceeding.");
                ((NativeAd) ((WeakReference) d.get(view)).get()).unregisterView();
            }
            this.t = new a(this, null);
            this.o = view;
            if (view instanceof ViewGroup) {
                this.v = new s(view.getContext(), new com.facebook.ads.internal.h.r() {
                    public void a(int i) {
                        if (NativeAd.this.m != null) {
                            NativeAd.this.m.a(i);
                        }
                    }
                });
                ((ViewGroup) view).addView(this.v);
            }
            for (View a : list) {
                a(a);
            }
            this.m.a(view, list);
            this.s = new q(this.e, new c(this, null), this.m);
            this.s.a((List) list);
            this.r = new com.facebook.ads.internal.i.a(this.o, i(), new com.facebook.ads.internal.i.a.a() {
                public void a() {
                    if (NativeAd.this.s != null) {
                        NativeAd.this.s.a(NativeAd.this.o);
                        NativeAd.this.s.a(NativeAd.this.w);
                        NativeAd.this.s.a(NativeAd.this.x);
                        NativeAd.this.s.b(NativeAd.this.y);
                        NativeAd.this.s.c(NativeAd.this.z);
                        NativeAd.this.s.a();
                        NativeAd.this.t.a();
                    } else if (NativeAd.this.r != null) {
                        NativeAd.this.r.b();
                        NativeAd.this.r = null;
                    }
                }
            });
            this.r.a(j());
            this.r.b(k());
            this.r.a();
            d.put(view, new WeakReference(this));
        } else {
            Log.e(c, "Ad not loaded");
        }
    }

    public void setAdListener(AdListener adListener) {
        this.i = adListener;
    }

    @Deprecated
    public void setImpressionListener(ImpressionListener impressionListener) {
        this.j = impressionListener;
    }

    public void setMediaViewAutoplay(boolean z) {
        this.z = z;
    }

    public void setOnTouchListener(OnTouchListener onTouchListener) {
        this.q = onTouchListener;
    }

    public void unregisterView() {
        if (this.o != null) {
            if (d.containsKey(this.o) && ((WeakReference) d.get(this.o)).get() == this) {
                if ((this.o instanceof ViewGroup) && this.v != null) {
                    ((ViewGroup) this.o).removeView(this.v);
                    this.v = null;
                }
                if (this.m != null) {
                    this.m.a();
                }
                d.remove(this.o);
                l();
                this.o = null;
                if (this.r != null) {
                    this.r.b();
                    this.r = null;
                }
                this.s = null;
                return;
            }
            throw new IllegalStateException("View not registered with this NativeAd");
        }
    }
}
