package com.google.android.gms.c;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.r;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.util.k;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@pa
public class os implements Callable<rv> {
    static long a = TimeUnit.SECONDS.toMillis(60);
    private final Context b;
    private final sq c;
    private final r d;
    private final cm e;
    private final or f;
    private final Object g = new Object();
    private final com.google.android.gms.c.rv.a h;
    private final jb i;
    private boolean j;
    private int k;
    private List<String> l;
    private JSONObject m;

    public interface a<T extends com.google.android.gms.c.jq.a> {
        T a(os osVar, JSONObject jSONObject);
    }

    class b {
        public kr a;

        b(os osVar) {
        }
    }

    public os(Context context, r rVar, sq sqVar, cm cmVar, com.google.android.gms.c.rv.a aVar, jb jbVar) {
        this.b = context;
        this.d = rVar;
        this.c = sqVar;
        this.h = aVar;
        this.e = cmVar;
        this.i = jbVar;
        this.f = a(context, aVar, rVar, cmVar);
        this.f.a();
        this.j = false;
        this.k = -2;
        this.l = null;
    }

    private com.google.android.gms.c.jq.a a(a aVar, JSONObject jSONObject, String str) {
        if (b() || aVar == null || jSONObject == null) {
            return null;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("tracking_urls_and_actions");
        String[] c = c(jSONObject2, "impression_tracking_urls");
        this.l = c == null ? null : Arrays.asList(c);
        this.m = jSONObject2.optJSONObject("active_view");
        com.google.android.gms.c.jq.a a = aVar.a(this, jSONObject);
        if (a == null) {
            sz.c("Failed to retrieve ad assets.");
            return null;
        }
        a.a(new jr(this.b, this.d, this.f, this.e, jSONObject, a, this.h.a.k, str));
        return a;
    }

    private th<jk> a(JSONObject jSONObject, boolean z, boolean z2) {
        final String string = z ? jSONObject.getString("url") : jSONObject.optString("url");
        final double optDouble = jSONObject.optDouble("scale", 1.0d);
        final boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        if (TextUtils.isEmpty(string)) {
            a(0, z);
            return new tf(null);
        } else if (z2) {
            return new tf(new jk(null, Uri.parse(string), optDouble));
        } else {
            final boolean z3 = z;
            return this.c.a(string, new com.google.android.gms.c.sq.a<jk>() {
                /* renamed from: a */
                public jk b() {
                    os.this.a(2, z3);
                    return null;
                }

                @TargetApi(19)
                /* renamed from: a */
                public jk b(InputStream inputStream) {
                    Bitmap decodeStream;
                    Options options = new Options();
                    options.inDensity = (int) (160.0d * optDouble);
                    if (!optBoolean) {
                        options.inPreferredConfig = Config.RGB_565;
                    }
                    try {
                        decodeStream = BitmapFactory.decodeStream(inputStream, null, options);
                    } catch (Exception e) {
                        sz.b("Error grabbing image.", e);
                        decodeStream = null;
                    }
                    if (decodeStream == null) {
                        os.this.a(2, z3);
                        return null;
                    }
                    if (k.g()) {
                        int width = decodeStream.getWidth();
                        int height = decodeStream.getHeight();
                        sf.a("Decoded image w: " + width + " h:" + height + " bytes: " + decodeStream.getAllocationByteCount());
                    }
                    return new jk(new BitmapDrawable(Resources.getSystem(), decodeStream), Uri.parse(string), optDouble);
                }
            });
        }
    }

    private JSONObject a(final String str) {
        if (b()) {
            return null;
        }
        final te teVar = new te();
        final b bVar = new b(this);
        this.f.a(new com.google.android.gms.c.or.a() {
            public void a() {
                teVar.b(null);
            }

            public void a(final lx lxVar) {
                kr anonymousClass1 = new kr() {
                    public void a(tr trVar, Map<String, String> map) {
                        try {
                            String str = (String) map.get("success");
                            if (!TextUtils.isEmpty(str)) {
                                if (str.equals(new JSONObject(str).optString("ads_id", ""))) {
                                    lxVar.b("/nativeAdPreProcess", bVar.a);
                                    teVar.b(new JSONObject(str).getJSONArray("ads").getJSONObject(0));
                                }
                            }
                        } catch (JSONException e) {
                            sz.b("Malformed native JSON response.", e);
                            os.this.a(0);
                            c.a(os.this.b(), (Object) "Unable to set the ad state error!");
                            teVar.b(null);
                        }
                    }
                };
                bVar.a = anonymousClass1;
                lxVar.a("/nativeAdPreProcess", anonymousClass1);
                try {
                    JSONObject jSONObject = new JSONObject(os.this.h.b.c);
                    jSONObject.put("ads_id", str);
                    lxVar.a("google.afma.nativeAds.preProcessJsonGmsg", jSONObject);
                } catch (JSONException e) {
                    sz.c("Exception occurred while invoking javascript", e);
                    teVar.b(null);
                }
            }
        });
        return (JSONObject) teVar.get(a, TimeUnit.MILLISECONDS);
    }

    private void a(com.google.android.gms.c.jq.a aVar) {
        if (aVar instanceof jn) {
            final jn jnVar = (jn) aVar;
            b bVar = new b(this);
            final AnonymousClass3 anonymousClass3 = new kr() {
                public void a(tr trVar, Map<String, String> map) {
                    os.this.a(jnVar, (String) map.get("asset"));
                }
            };
            bVar.a = anonymousClass3;
            this.f.a(new com.google.android.gms.c.or.a(this) {
                public void a(lx lxVar) {
                    lxVar.a("/nativeAdCustomClick", anonymousClass3);
                }
            });
        }
    }

    private void a(ke keVar, String str) {
        try {
            kh c = this.d.c(keVar.l());
            if (c != null) {
                c.a(keVar, str);
            }
        } catch (RemoteException e) {
            sz.c(new StringBuilder(String.valueOf(str).length() + 40).append("Failed to call onCustomClick for asset ").append(str).append(".").toString(), e);
        }
    }

    private rv b(com.google.android.gms.c.jq.a aVar) {
        int i;
        synchronized (this.g) {
            i = this.k;
            if (aVar == null && this.k == -2) {
                i = 0;
            }
        }
        return new rv(this.h.a.c, null, this.h.b.d, i, this.h.b.f, this.l, this.h.b.l, this.h.b.k, this.h.a.i, false, null, null, null, null, null, 0, this.h.d, this.h.b.g, this.h.f, this.h.g, this.h.b.o, this.m, i != -2 ? null : aVar, null, null, null, this.h.b.F, this.h.b.G, null, this.h.b.J, this.h.b.N);
    }

    private Integer b(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException e) {
            return null;
        }
    }

    private static List<Drawable> b(List<jk> list) {
        ArrayList arrayList = new ArrayList();
        for (jk a : list) {
            arrayList.add((Drawable) com.google.android.gms.a.b.a(a.a()));
        }
        return arrayList;
    }

    private String[] c(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return null;
        }
        String[] strArr = new String[optJSONArray.length()];
        for (int i = 0; i < optJSONArray.length(); i++) {
            strArr[i] = optJSONArray.getString(i);
        }
        return strArr;
    }

    /* Access modifiers changed, original: 0000 */
    public or a(Context context, com.google.android.gms.c.rv.a aVar, r rVar, cm cmVar) {
        return new or(context, aVar, rVar, cmVar);
    }

    /* Access modifiers changed, original: protected */
    public a a(JSONObject jSONObject) {
        if (b() || jSONObject == null) {
            return null;
        }
        String string = jSONObject.getString("template_id");
        boolean z = this.h.a.z != null ? this.h.a.z.b : false;
        boolean z2 = this.h.a.z != null ? this.h.a.z.d : false;
        if ("2".equals(string)) {
            return new ou(z, z2);
        }
        if ("1".equals(string)) {
            return new ov(z, z2);
        }
        if ("3".equals(string)) {
            final String string2 = jSONObject.getString("custom_template_id");
            final te teVar = new te();
            sj.a.post(new Runnable() {
                public void run() {
                    teVar.b((ki) os.this.d.K().get(string2));
                }
            });
            if (teVar.get(a, TimeUnit.MILLISECONDS) != null) {
                return new ow(z);
            }
            string2 = "No handler for custom template: ";
            String valueOf = String.valueOf(jSONObject.getString("custom_template_id"));
            sz.c(valueOf.length() != 0 ? string2.concat(valueOf) : new String(string2));
        } else {
            a(0);
        }
        return null;
    }

    /* Access modifiers changed, original: 0000 */
    public ot a(Context context, cm cmVar, com.google.android.gms.c.rv.a aVar, jb jbVar, r rVar) {
        return new ot(context, cmVar, aVar, jbVar, rVar);
    }

    /* renamed from: a */
    public rv call() {
        try {
            this.f.b();
            String c = c();
            JSONObject a = a(c);
            com.google.android.gms.c.jq.a a2 = a(a(a), a, c);
            a(a2);
            return b(a2);
        } catch (InterruptedException | CancellationException | ExecutionException e) {
        } catch (JSONException e2) {
            sz.c("Malformed native JSON response.", e2);
        } catch (TimeoutException e3) {
            sz.c("Timeout when loading native ad.", e3);
        }
        if (!this.j) {
            a(0);
        }
        return b(null);
    }

    public th<tr> a(JSONObject jSONObject, String str) {
        JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject == null) {
            return new tf(null);
        }
        if (TextUtils.isEmpty(optJSONObject.optString("vast_xml"))) {
            sz.e("Required field 'vast_xml' is missing");
            return new tf(null);
        }
        return a(this.b, this.e, this.h, this.i, this.d).a(optJSONObject);
    }

    public th<jk> a(JSONObject jSONObject, String str, boolean z, boolean z2) {
        JSONObject jSONObject2 = z ? jSONObject.getJSONObject(str) : jSONObject.optJSONObject(str);
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        return a(jSONObject2, z, z2);
    }

    public List<th<jk>> a(JSONObject jSONObject, String str, boolean z, boolean z2, boolean z3) {
        JSONArray jSONArray = z ? jSONObject.getJSONArray(str) : jSONObject.optJSONArray(str);
        ArrayList arrayList = new ArrayList();
        if (jSONArray == null || jSONArray.length() == 0) {
            a(0, z);
            return arrayList;
        }
        int length = z3 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            if (jSONObject2 == null) {
                jSONObject2 = new JSONObject();
            }
            arrayList.add(a(jSONObject2, z, z2));
        }
        return arrayList;
    }

    public Future<jk> a(JSONObject jSONObject, String str, boolean z) {
        JSONObject jSONObject2 = jSONObject.getJSONObject(str);
        boolean optBoolean = jSONObject2.optBoolean("require", true);
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        return a(jSONObject2, optBoolean, z);
    }

    public void a(int i) {
        synchronized (this.g) {
            this.j = true;
            this.k = i;
        }
    }

    public void a(int i, boolean z) {
        if (z) {
            a(i);
        }
    }

    public th<ji> b(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            return new tf(null);
        }
        String optString = optJSONObject.optString("text");
        int optInt = optJSONObject.optInt("text_size", -1);
        Integer b = b(optJSONObject, "text_color");
        Integer b2 = b(optJSONObject, "bg_color");
        final int optInt2 = optJSONObject.optInt("animation_ms", 1000);
        final int optInt3 = optJSONObject.optInt("presentation_ms", 4000);
        final int i = (this.h.a.z == null || this.h.a.z.a < 2) ? 1 : this.h.a.z.e;
        List arrayList = new ArrayList();
        if (optJSONObject.optJSONArray("images") != null) {
            arrayList = a(optJSONObject, "images", false, false, true);
        } else {
            arrayList.add(a(optJSONObject, "image", false, false));
        }
        final String str = optString;
        final Integer num = b2;
        final Integer num2 = b;
        final int i2 = optInt;
        return tg.a(tg.a(arrayList), new com.google.android.gms.c.tg.a<List<jk>, ji>(this) {
            public ji a(List<jk> list) {
                ji jiVar;
                if (list != null) {
                    try {
                        if (!list.isEmpty()) {
                            jiVar = new ji(str, os.b((List) list), num, num2, i2 > 0 ? Integer.valueOf(i2) : null, optInt3 + optInt2, i);
                            return jiVar;
                        }
                    } catch (RemoteException e) {
                        sz.b("Could not get attribution icon", e);
                        return null;
                    }
                }
                jiVar = null;
                return jiVar;
            }
        });
    }

    public boolean b() {
        boolean z;
        synchronized (this.g) {
            z = this.j;
        }
        return z;
    }

    /* Access modifiers changed, original: 0000 */
    public String c() {
        return UUID.randomUUID().toString();
    }
}
