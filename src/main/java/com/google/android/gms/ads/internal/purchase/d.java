package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.c.nv.a;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.sz;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@pa
public class d extends a {
    private String a;
    private Context b;
    private String c;
    private ArrayList<String> d;

    public d(String str, ArrayList<String> arrayList, Context context, String str2) {
        this.c = str;
        this.d = arrayList;
        this.a = str2;
        this.b = context;
    }

    /* Access modifiers changed, original: protected */
    public int a(int i) {
        return i == 0 ? 1 : i == 1 ? 2 : i == 4 ? 3 : 0;
    }

    public String a() {
        return this.c;
    }

    /* Access modifiers changed, original: 0000 */
    public Map<String, String> b() {
        String packageName = this.b.getPackageName();
        Object obj = "";
        try {
            obj = this.b.getPackageManager().getPackageInfo(packageName, 0).versionName;
        } catch (NameNotFoundException e) {
            sz.c("Error to retrieve app version", e);
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - v.i().e().a();
        HashMap hashMap = new HashMap();
        hashMap.put("sessionid", v.i().a());
        hashMap.put("appid", packageName);
        hashMap.put("osversion", String.valueOf(VERSION.SDK_INT));
        hashMap.put("sdkversion", this.a);
        hashMap.put("appversion", obj);
        hashMap.put("timestamp", String.valueOf(elapsedRealtime));
        return hashMap;
    }

    public void b(int i) {
        if (i == 1) {
            c();
        }
        Map b = b();
        b.put("status", String.valueOf(i));
        b.put("sku", this.c);
        List linkedList = new LinkedList();
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            linkedList.add(v.e().a((String) it.next(), b));
        }
        v.e().a(this.b, this.a, linkedList);
    }

    /* Access modifiers changed, original: 0000 */
    public void c() {
        try {
            this.b.getClassLoader().loadClass("com.google.ads.conversiontracking.IAPConversionReporter").getDeclaredMethod("reportWithProductId", new Class[]{Context.class, String.class, String.class, Boolean.TYPE}).invoke(null, new Object[]{this.b, this.c, "", Boolean.valueOf(true)});
        } catch (ClassNotFoundException e) {
            sz.e("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
        } catch (NoSuchMethodException e2) {
            sz.e("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
        } catch (Exception e3) {
            sz.c("Fail to report a conversion.", e3);
        }
    }

    public void c(int i) {
        if (i == 0) {
            c();
        }
        Map b = b();
        b.put("google_play_status", String.valueOf(i));
        b.put("sku", this.c);
        b.put("status", String.valueOf(a(i)));
        List linkedList = new LinkedList();
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            linkedList.add(v.e().a((String) it.next(), b));
        }
        v.e().a(this.b, this.a, linkedList);
    }
}
