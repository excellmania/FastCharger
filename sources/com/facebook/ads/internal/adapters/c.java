package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.facebook.ads.AdError;
import com.facebook.ads.AdNetwork;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAd.Image;
import com.facebook.ads.NativeAd.Rating;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.util.p;
import com.google.android.gms.ads.b.a;
import com.google.android.gms.ads.b.b;
import com.google.android.gms.ads.b.d;
import com.google.android.gms.ads.b.e;
import com.google.android.gms.ads.b.f;
import com.google.android.gms.ads.b.g;
import com.google.android.gms.ads.b.h;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class c extends r implements p {
    private static final String a = c.class.getSimpleName();
    private View b;
    private b c;
    private s d;
    private d e;
    private View f;
    private boolean g;
    private Uri h;
    private Uri i;
    private String j;
    private String k;
    private String l;
    private String m;

    private void a(View view) {
        if (view != null) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(view);
            }
        }
    }

    public List<NativeAd> A() {
        return null;
    }

    public AdNetwork B() {
        return AdNetwork.ADMOB;
    }

    public e C() {
        return e.ADMOB;
    }

    public void a() {
        a(this.f);
        this.f = null;
        if (this.b != null) {
            View view = (ViewGroup) this.b.getParent();
            if ((view instanceof h) || (view instanceof f)) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != null) {
                    int indexOfChild = viewGroup.indexOfChild(view);
                    a(this.b);
                    a(view);
                    viewGroup.addView(this.b, indexOfChild);
                }
            }
            this.b = null;
        }
        this.e = null;
    }

    public void a(int i) {
    }

    public void a(final Context context, s sVar, Map<String, Object> map) {
        boolean z;
        boolean z2;
        com.facebook.ads.internal.util.h.a(context, p.a(C()) + " Loading");
        JSONObject jSONObject = (JSONObject) map.get("data");
        String optString = jSONObject.optString("ad_unit_id");
        JSONArray optJSONArray = jSONObject.optJSONArray("creative_types");
        if (optJSONArray != null) {
            int length = optJSONArray.length();
            int i = 0;
            z = false;
            z2 = false;
            while (i < length) {
                try {
                    String string = optJSONArray.getString(i);
                    if (string != null) {
                        boolean z3 = true;
                        switch (string.hashCode()) {
                            case 704091517:
                                if (string.equals("app_install")) {
                                    z3 = false;
                                    break;
                                }
                                break;
                            case 883765328:
                                if (string.equals("page_post")) {
                                    z3 = true;
                                    break;
                                }
                                break;
                        }
                        switch (z3) {
                            case false:
                                z2 = true;
                                break;
                            case true:
                                z = true;
                                break;
                            default:
                                break;
                        }
                    }
                    i++;
                } catch (JSONException e) {
                    com.facebook.ads.internal.util.h.a(context, p.a(C()) + " AN server error");
                    sVar.a(this, AdError.SERVER_ERROR);
                    return;
                }
            }
        }
        z = false;
        z2 = false;
        if (TextUtils.isEmpty(optString) || !(z2 || z)) {
            com.facebook.ads.internal.util.h.a(context, p.a(C()) + " AN server error");
            sVar.a(this, AdError.SERVER_ERROR);
            return;
        }
        this.d = sVar;
        a aVar = new a(context, optString);
        if (z2) {
            aVar.a(new e.a() {
                public void a(e eVar) {
                    Uri uri = null;
                    c.this.c = eVar;
                    c.this.g = true;
                    c.this.j = eVar.b() != null ? eVar.b().toString() : null;
                    c.this.k = eVar.d() != null ? eVar.d().toString() : null;
                    c.this.m = eVar.h() != null ? eVar.h().toString() : null;
                    c.this.l = eVar.f() != null ? eVar.f().toString() : null;
                    List c = eVar.c();
                    c cVar = c.this;
                    Uri b = (c == null || c.size() <= 0) ? null : ((b.a) c.get(0)).b();
                    cVar.h = b;
                    c cVar2 = c.this;
                    if (eVar.e() != null) {
                        uri = eVar.e().b();
                    }
                    cVar2.i = uri;
                    if (c.this.d != null) {
                        com.facebook.ads.internal.util.h.a(context, p.a(c.this.C()) + " Loaded");
                        c.this.d.a(c.this);
                    }
                }
            });
        }
        if (z) {
            aVar.a(new g.a() {
                public void a(g gVar) {
                    Uri uri = null;
                    c.this.c = gVar;
                    c.this.g = true;
                    c.this.j = gVar.b() != null ? gVar.b().toString() : null;
                    c.this.k = gVar.d() != null ? gVar.d().toString() : null;
                    c.this.m = gVar.g() != null ? gVar.g().toString() : null;
                    c.this.l = gVar.f() != null ? gVar.f().toString() : null;
                    List c = gVar.c();
                    c cVar = c.this;
                    Uri b = (c == null || c.size() <= 0) ? null : ((b.a) c.get(0)).b();
                    cVar.h = b;
                    c cVar2 = c.this;
                    if (gVar.e() != null) {
                        uri = gVar.e().b();
                    }
                    cVar2.i = uri;
                    if (c.this.d != null) {
                        com.facebook.ads.internal.util.h.a(context, p.a(c.this.C()) + " Loaded");
                        c.this.d.a(c.this);
                    }
                }
            });
        }
        aVar.a(new com.google.android.gms.ads.a() {
            public void a() {
                if (c.this.d != null) {
                    c.this.d.c(c.this);
                }
            }

            public void a(int i) {
                com.facebook.ads.internal.util.h.a(context, p.a(c.this.C()) + " Failed with error code: " + i);
                if (c.this.d != null) {
                    c.this.d.a(c.this, new AdError(AdError.MEDIATION_ERROR_CODE, "AdMob error code: " + i));
                }
            }
        }).a(new com.google.android.gms.ads.b.c.a().a(true).a()).a().a(new com.google.android.gms.ads.c.a().a());
    }

    public void a(View view, List<View> list) {
        this.b = view;
        if (b() && view != null) {
            ViewGroup viewGroup = null;
            int i = -1;
            while (true) {
                int i2 = i;
                ViewGroup viewGroup2 = viewGroup;
                ViewGroup viewGroup3 = (ViewGroup) view.getParent();
                if (viewGroup3 == null) {
                    Log.e(a, "View must have valid parent for AdMob registration, skipping registration. Impressions and clicks will not be logged.");
                    return;
                }
                if (viewGroup3 instanceof d) {
                    viewGroup = (ViewGroup) viewGroup3.getParent();
                    if (viewGroup == null) {
                        Log.e(a, "View must have valid parent for AdMob registration, skipping registration. Impressions and clicks will not be logged.");
                        return;
                    }
                    int indexOfChild = viewGroup.indexOfChild(viewGroup3);
                    viewGroup3.removeView(view);
                    viewGroup.removeView(viewGroup3);
                    viewGroup.addView(view, indexOfChild);
                    i = i2;
                    viewGroup = viewGroup2;
                } else {
                    viewGroup = viewGroup3;
                    i = viewGroup3.indexOfChild(view);
                }
                if (viewGroup != null) {
                    d hVar = this.c instanceof g ? new h(view.getContext()) : new f(view.getContext());
                    if (view instanceof ViewGroup) {
                        hVar.setLayoutParams(view.getLayoutParams());
                    }
                    a(view);
                    hVar.addView(view);
                    viewGroup.removeView(hVar);
                    viewGroup.addView(hVar, i);
                    this.e = hVar;
                    this.e.setNativeAd(this.c);
                    this.f = new View(view.getContext());
                    this.e.addView(this.f);
                    this.f.setVisibility(8);
                    if (this.e instanceof h) {
                        ((h) this.e).setCallToActionView(this.f);
                    } else if (this.e instanceof f) {
                        ((f) this.e).setCallToActionView(this.f);
                    }
                    AnonymousClass4 anonymousClass4 = new OnClickListener() {
                        public void onClick(View view) {
                            c.this.f.performClick();
                        }
                    };
                    for (View onClickListener : list) {
                        onClickListener.setOnClickListener(anonymousClass4);
                    }
                    return;
                }
            }
        }
    }

    public void a(Map<String, String> map) {
        if (b() && this.d != null) {
            this.d.b(this);
        }
    }

    public void b(Map<String, String> map) {
    }

    public boolean b() {
        return this.g && this.c != null;
    }

    public boolean c() {
        return false;
    }

    public boolean d() {
        return false;
    }

    public boolean e() {
        return false;
    }

    public boolean f() {
        return false;
    }

    public boolean g() {
        return false;
    }

    public int h() {
        return 0;
    }

    public int i() {
        return 0;
    }

    public int j() {
        return 0;
    }

    public Image k() {
        return (!b() || this.i == null) ? null : new Image(this.i.toString(), 50, 50);
    }

    public Image l() {
        return (!b() || this.h == null) ? null : new Image(this.h.toString(), 1200, 600);
    }

    public NativeAdViewAttributes m() {
        return null;
    }

    public String n() {
        return this.j;
    }

    public String o() {
        return null;
    }

    public void onDestroy() {
        a();
        this.d = null;
        this.c = null;
        this.g = false;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
    }

    public String p() {
        return this.k;
    }

    public String q() {
        return this.l;
    }

    public String r() {
        return this.m;
    }

    public Rating s() {
        return null;
    }

    public Image t() {
        return null;
    }

    public String u() {
        return null;
    }

    public String v() {
        return null;
    }

    public String w() {
        return null;
    }

    public String x() {
        return null;
    }

    public String y() {
        return null;
    }

    public String z() {
        return null;
    }
}
