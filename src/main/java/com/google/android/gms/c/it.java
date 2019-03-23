package com.google.android.gms.c;

import android.content.Context;
import android.os.Build.VERSION;
import com.google.android.gms.ads.internal.v;
import java.util.LinkedHashMap;
import java.util.Map;

@pa
public class it {
    private boolean a;
    private String b;
    private Map<String, String> c;
    private Context d = null;
    private String e = null;

    public it(Context context, String str) {
        this.d = context;
        this.e = str;
        this.a = ((Boolean) is.U.c()).booleanValue();
        this.b = (String) is.V.c();
        this.c = new LinkedHashMap();
        this.c.put("s", "gmob_sdk");
        this.c.put("v", "3");
        this.c.put("os", VERSION.RELEASE);
        this.c.put("sdk", VERSION.SDK);
        this.c.put("device", v.e().e());
        this.c.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        this.c.put("is_lite_sdk", v.e().l(context) ? "1" : "0");
        qf a = v.n().a(this.d);
        this.c.put("network_coarse", Integer.toString(a.m));
        this.c.put("network_fine", Integer.toString(a.n));
    }

    /* Access modifiers changed, original: 0000 */
    public boolean a() {
        return this.a;
    }

    /* Access modifiers changed, original: 0000 */
    public String b() {
        return this.b;
    }

    /* Access modifiers changed, original: 0000 */
    public Context c() {
        return this.d;
    }

    /* Access modifiers changed, original: 0000 */
    public String d() {
        return this.e;
    }

    /* Access modifiers changed, original: 0000 */
    public Map<String, String> e() {
        return this.c;
    }
}
