package com.google.android.gms.ads.internal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.a.a;
import com.google.android.gms.a.b;
import com.google.android.gms.c.jl;
import com.google.android.gms.c.jm;
import com.google.android.gms.c.jv;
import com.google.android.gms.c.kr;
import com.google.android.gms.c.mj;
import com.google.android.gms.c.ms;
import com.google.android.gms.c.mt;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.rv;
import com.google.android.gms.c.sz;
import com.google.android.gms.c.tr;
import com.google.android.gms.c.ts;
import java.io.ByteArrayOutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import org.apache.http.protocol.HTTP;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@pa
public class o {
    @Nullable
    public static View a(@Nullable rv rvVar) {
        if (rvVar == null) {
            sz.c("AdState is null");
            return null;
        } else if (b(rvVar) && rvVar.b != null) {
            return rvVar.b.b();
        } else {
            try {
                a a = rvVar.p != null ? rvVar.p.a() : null;
                if (a != null) {
                    return (View) b.a(a);
                }
                sz.e("View in mediation adapter is null.");
                return null;
            } catch (RemoteException e) {
                sz.c("Could not get View from mediation adapter.", e);
                return null;
            }
        }
    }

    private static jl a(ms msVar) {
        return new jl(msVar.a(), msVar.b(), msVar.c(), msVar.d(), msVar.e(), msVar.f(), msVar.g(), msVar.h(), null, msVar.l(), null, null);
    }

    private static jm a(mt mtVar) {
        return new jm(mtVar.a(), mtVar.b(), mtVar.c(), mtVar.d(), mtVar.e(), mtVar.f(), null, mtVar.j());
    }

    static kr a(@Nullable final ms msVar, @Nullable final mt mtVar, final f.a aVar) {
        return new kr() {
            public void a(tr trVar, Map<String, String> map) {
                Object b = trVar.b();
                if (b != null) {
                    try {
                        if (msVar != null) {
                            if (msVar.k()) {
                                o.b(trVar);
                                return;
                            }
                            msVar.a(b.a(b));
                            aVar.a();
                        } else if (mtVar == null) {
                        } else {
                            if (mtVar.i()) {
                                o.b(trVar);
                                return;
                            }
                            mtVar.a(b.a(b));
                            aVar.a();
                        }
                    } catch (RemoteException e) {
                        sz.c("Unable to call handleClick on mapper", e);
                    }
                }
            }
        };
    }

    static kr a(final CountDownLatch countDownLatch) {
        return new kr() {
            public void a(tr trVar, Map<String, String> map) {
                countDownLatch.countDown();
                trVar.b().setVisibility(0);
            }
        };
    }

    private static String a(@Nullable Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (bitmap == null) {
            sz.e("Bitmap is null. Returning empty string");
            return "";
        }
        bitmap.compress(CompressFormat.PNG, 100, byteArrayOutputStream);
        String encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
        String valueOf = String.valueOf("data:image/png;base64,");
        encodeToString = String.valueOf(encodeToString);
        return encodeToString.length() != 0 ? valueOf.concat(encodeToString) : new String(valueOf);
    }

    static String a(@Nullable jv jvVar) {
        if (jvVar == null) {
            sz.e("Image is null. Returning empty string");
            return "";
        }
        try {
            Uri b = jvVar.b();
            if (b != null) {
                return b.toString();
            }
        } catch (RemoteException e) {
            sz.e("Unable to get image uri. Trying data uri next");
        }
        return b(jvVar);
    }

    public static void a(@Nullable rv rvVar, f.a aVar) {
        mt mtVar = null;
        if (rvVar != null && b(rvVar)) {
            tr trVar = rvVar.b;
            Object b = trVar != null ? trVar.b() : null;
            if (b == null) {
                sz.e("AdWebView is null");
                return;
            }
            try {
                List list = rvVar.o != null ? rvVar.o.o : null;
                if (list == null || list.isEmpty()) {
                    sz.e("No template ids present in mediation response");
                    return;
                }
                ms h = rvVar.p != null ? rvVar.p.h() : null;
                if (rvVar.p != null) {
                    mtVar = rvVar.p.i();
                }
                if (list.contains("2") && h != null) {
                    h.b(b.a(b));
                    if (!h.j()) {
                        h.i();
                    }
                    trVar.l().a("/nativeExpressViewClicked", a(h, null, aVar));
                } else if (!list.contains("1") || mtVar == null) {
                    sz.e("No matching template id and mapper");
                } else {
                    mtVar.b(b.a(b));
                    if (!mtVar.h()) {
                        mtVar.g();
                    }
                    trVar.l().a("/nativeExpressViewClicked", a(null, mtVar, aVar));
                }
            } catch (RemoteException e) {
                sz.c("Error occurred while recording impression and registering for clicks", e);
            }
        }
    }

    private static void a(final tr trVar, final jl jlVar, final String str) {
        trVar.l().a(new ts.a() {
            public void a(tr trVar, boolean z) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("headline", jlVar.a());
                    jSONObject.put("body", jlVar.c());
                    jSONObject.put("call_to_action", jlVar.e());
                    jSONObject.put("price", jlVar.h());
                    jSONObject.put("star_rating", String.valueOf(jlVar.f()));
                    jSONObject.put("store", jlVar.g());
                    jSONObject.put("icon", o.a(jlVar.d()));
                    JSONArray jSONArray = new JSONArray();
                    List<Object> b = jlVar.b();
                    if (b != null) {
                        for (Object a : b) {
                            jSONArray.put(o.a(o.b(a)));
                        }
                    }
                    jSONObject.put("images", jSONArray);
                    jSONObject.put("extras", o.b(jlVar.n(), str));
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("assets", jSONObject);
                    jSONObject2.put("template_id", "2");
                    trVar.a("google.afma.nativeExpressAds.loadAssets", jSONObject2);
                } catch (JSONException e) {
                    sz.c("Exception occurred when loading assets", e);
                }
            }
        });
    }

    private static void a(final tr trVar, final jm jmVar, final String str) {
        trVar.l().a(new ts.a() {
            public void a(tr trVar, boolean z) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("headline", jmVar.a());
                    jSONObject.put("body", jmVar.c());
                    jSONObject.put("call_to_action", jmVar.e());
                    jSONObject.put("advertiser", jmVar.f());
                    jSONObject.put("logo", o.a(jmVar.d()));
                    JSONArray jSONArray = new JSONArray();
                    List<Object> b = jmVar.b();
                    if (b != null) {
                        for (Object a : b) {
                            jSONArray.put(o.a(o.b(a)));
                        }
                    }
                    jSONObject.put("images", jSONArray);
                    jSONObject.put("extras", o.b(jmVar.h(), str));
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("assets", jSONObject);
                    jSONObject2.put("template_id", "1");
                    trVar.a("google.afma.nativeExpressAds.loadAssets", jSONObject2);
                } catch (JSONException e) {
                    sz.c("Exception occurred when loading assets", e);
                }
            }
        });
    }

    private static void a(tr trVar, CountDownLatch countDownLatch) {
        trVar.l().a("/nativeExpressAssetsLoaded", a(countDownLatch));
        trVar.l().a("/nativeExpressAssetsLoadingFailed", b(countDownLatch));
    }

    public static boolean a(tr trVar, mj mjVar, CountDownLatch countDownLatch) {
        boolean z = false;
        try {
            z = b(trVar, mjVar, countDownLatch);
        } catch (RemoteException e) {
            sz.c("Unable to invoke load assets", e);
        } catch (RuntimeException e2) {
            countDownLatch.countDown();
            throw e2;
        }
        if (!z) {
            countDownLatch.countDown();
        }
        return z;
    }

    @Nullable
    private static jv b(Object obj) {
        return obj instanceof IBinder ? jv.a.a((IBinder) obj) : null;
    }

    static kr b(final CountDownLatch countDownLatch) {
        return new kr() {
            public void a(tr trVar, Map<String, String> map) {
                sz.e("Adapter returned an ad, but assets substitution failed");
                countDownLatch.countDown();
                trVar.destroy();
            }
        };
    }

    private static String b(jv jvVar) {
        try {
            a a = jvVar.a();
            if (a == null) {
                sz.e("Drawable is null. Returning empty string");
                return "";
            }
            Drawable drawable = (Drawable) b.a(a);
            if (drawable instanceof BitmapDrawable) {
                return a(((BitmapDrawable) drawable).getBitmap());
            }
            sz.e("Drawable is not an instance of BitmapDrawable. Returning empty string");
            return "";
        } catch (RemoteException e) {
            sz.e("Unable to get drawable. Returning empty string");
            return "";
        }
    }

    private static JSONObject b(@Nullable Bundle bundle, String str) {
        JSONObject jSONObject = new JSONObject();
        if (bundle == null || TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject(str);
        Iterator keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String str2 = (String) keys.next();
            if (bundle.containsKey(str2)) {
                if ("image".equals(jSONObject2.getString(str2))) {
                    Object obj = bundle.get(str2);
                    if (obj instanceof Bitmap) {
                        jSONObject.put(str2, a((Bitmap) obj));
                    } else {
                        sz.e("Invalid type. An image type extra should return a bitmap");
                    }
                } else if (bundle.get(str2) instanceof Bitmap) {
                    sz.e("Invalid asset type. Bitmap should be returned only for image type");
                } else {
                    jSONObject.put(str2, String.valueOf(bundle.get(str2)));
                }
            }
        }
        return jSONObject;
    }

    private static void b(tr trVar) {
        OnClickListener D = trVar.D();
        if (D != null) {
            D.onClick(trVar.b());
        }
    }

    public static boolean b(@Nullable rv rvVar) {
        return (rvVar == null || !rvVar.n || rvVar.o == null || rvVar.o.l == null) ? false : true;
    }

    private static boolean b(tr trVar, mj mjVar, CountDownLatch countDownLatch) {
        View b = trVar.b();
        if (b == null) {
            sz.e("AdWebView is null");
            return false;
        }
        b.setVisibility(4);
        List list = mjVar.b.o;
        if (list == null || list.isEmpty()) {
            sz.e("No template ids present in mediation response");
            return false;
        }
        a(trVar, countDownLatch);
        ms h = mjVar.c.h();
        mt i = mjVar.c.i();
        if (list.contains("2") && h != null) {
            a(trVar, a(h), mjVar.b.n);
        } else if (!list.contains("1") || i == null) {
            sz.e("No matching template id and mapper");
            return false;
        } else {
            a(trVar, a(i), mjVar.b.n);
        }
        String str = mjVar.b.l;
        String str2 = mjVar.b.m;
        if (str2 != null) {
            trVar.loadDataWithBaseURL(str2, str, "text/html", HTTP.UTF_8, null);
        } else {
            trVar.loadData(str, "text/html", HTTP.UTF_8);
        }
        return true;
    }
}
