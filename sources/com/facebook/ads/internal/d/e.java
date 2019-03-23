package com.facebook.ads.internal.d;

import com.facebook.ads.internal.server.AdPlacementType;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class e {
    private static final AdPlacementType l = AdPlacementType.UNKNOWN;
    protected AdPlacementType a = l;
    protected int b = 1;
    protected int c;
    protected int d = 0;
    protected int e = 20;
    protected int f = 0;
    protected int g = 1000;
    protected boolean h = false;
    protected List<b> i = null;
    public int j = -1;
    public int k = -1;
    private int m = 10000;

    private e(java.util.Map<java.lang.String, java.lang.String> r11) {
        /*
        r10 = this;
        r4 = 1;
        r3 = -1;
        r2 = 0;
        r10.<init>();
        r0 = l;
        r10.a = r0;
        r10.b = r4;
        r10.d = r2;
        r0 = 20;
        r10.e = r0;
        r10.f = r2;
        r0 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r10.g = r0;
        r0 = 10000; // 0x2710 float:1.4013E-41 double:4.9407E-320;
        r10.m = r0;
        r10.h = r2;
        r0 = 0;
        r10.i = r0;
        r10.j = r3;
        r10.k = r3;
        r0 = r11.entrySet();
        r5 = r0.iterator();
    L_0x002d:
        r0 = r5.hasNext();
        if (r0 == 0) goto L_0x01e8;
    L_0x0033:
        r0 = r5.next();
        r0 = (java.util.Map.Entry) r0;
        r1 = r0.getKey();
        r1 = (java.lang.String) r1;
        r6 = r1.hashCode();
        switch(r6) {
            case -1899431321: goto L_0x00ca;
            case -1561601017: goto L_0x0080;
            case -856794442: goto L_0x00b3;
            case -726276175: goto L_0x00be;
            case -553208868: goto L_0x008a;
            case 3575610: goto L_0x0058;
            case 664421755: goto L_0x006c;
            case 700812481: goto L_0x0062;
            case 1085444827: goto L_0x0076;
            case 1183549815: goto L_0x00a8;
            case 1503616961: goto L_0x009e;
            case 2002133996: goto L_0x0094;
            default: goto L_0x0046;
        };
    L_0x0046:
        r1 = r3;
    L_0x0047:
        switch(r1) {
            case 0: goto L_0x004b;
            case 1: goto L_0x00d6;
            case 2: goto L_0x00e4;
            case 3: goto L_0x00f2;
            case 4: goto L_0x0100;
            case 5: goto L_0x010e;
            case 6: goto L_0x0120;
            case 7: goto L_0x012e;
            case 8: goto L_0x013c;
            case 9: goto L_0x014a;
            case 10: goto L_0x0158;
            case 11: goto L_0x0166;
            default: goto L_0x004a;
        };
    L_0x004a:
        goto L_0x002d;
    L_0x004b:
        r0 = r0.getValue();
        r0 = (java.lang.String) r0;
        r0 = com.facebook.ads.internal.server.AdPlacementType.fromString(r0);
        r10.a = r0;
        goto L_0x002d;
    L_0x0058:
        r6 = "type";
        r1 = r1.equals(r6);
        if (r1 == 0) goto L_0x0046;
    L_0x0060:
        r1 = r2;
        goto L_0x0047;
    L_0x0062:
        r6 = "min_viewability_percentage";
        r1 = r1.equals(r6);
        if (r1 == 0) goto L_0x0046;
    L_0x006a:
        r1 = r4;
        goto L_0x0047;
    L_0x006c:
        r6 = "min_viewability_duration";
        r1 = r1.equals(r6);
        if (r1 == 0) goto L_0x0046;
    L_0x0074:
        r1 = 2;
        goto L_0x0047;
    L_0x0076:
        r6 = "refresh";
        r1 = r1.equals(r6);
        if (r1 == 0) goto L_0x0046;
    L_0x007e:
        r1 = 3;
        goto L_0x0047;
    L_0x0080:
        r6 = "refresh_threshold";
        r1 = r1.equals(r6);
        if (r1 == 0) goto L_0x0046;
    L_0x0088:
        r1 = 4;
        goto L_0x0047;
    L_0x008a:
        r6 = "cacheable";
        r1 = r1.equals(r6);
        if (r1 == 0) goto L_0x0046;
    L_0x0092:
        r1 = 5;
        goto L_0x0047;
    L_0x0094:
        r6 = "placement_width";
        r1 = r1.equals(r6);
        if (r1 == 0) goto L_0x0046;
    L_0x009c:
        r1 = 6;
        goto L_0x0047;
    L_0x009e:
        r6 = "placement_height";
        r1 = r1.equals(r6);
        if (r1 == 0) goto L_0x0046;
    L_0x00a6:
        r1 = 7;
        goto L_0x0047;
    L_0x00a8:
        r6 = "viewability_check_initial_delay";
        r1 = r1.equals(r6);
        if (r1 == 0) goto L_0x0046;
    L_0x00b0:
        r1 = 8;
        goto L_0x0047;
    L_0x00b3:
        r6 = "viewability_check_interval";
        r1 = r1.equals(r6);
        if (r1 == 0) goto L_0x0046;
    L_0x00bb:
        r1 = 9;
        goto L_0x0047;
    L_0x00be:
        r6 = "request_timeout";
        r1 = r1.equals(r6);
        if (r1 == 0) goto L_0x0046;
    L_0x00c6:
        r1 = 10;
        goto L_0x0047;
    L_0x00ca:
        r6 = "conv_tracking_data";
        r1 = r1.equals(r6);
        if (r1 == 0) goto L_0x0046;
    L_0x00d2:
        r1 = 11;
        goto L_0x0047;
    L_0x00d6:
        r0 = r0.getValue();
        r0 = (java.lang.String) r0;
        r0 = java.lang.Integer.parseInt(r0);
        r10.b = r0;
        goto L_0x002d;
    L_0x00e4:
        r0 = r0.getValue();
        r0 = (java.lang.String) r0;
        r0 = java.lang.Integer.parseInt(r0);
        r10.c = r0;
        goto L_0x002d;
    L_0x00f2:
        r0 = r0.getValue();
        r0 = (java.lang.String) r0;
        r0 = java.lang.Integer.parseInt(r0);
        r10.d = r0;
        goto L_0x002d;
    L_0x0100:
        r0 = r0.getValue();
        r0 = (java.lang.String) r0;
        r0 = java.lang.Integer.parseInt(r0);
        r10.e = r0;
        goto L_0x002d;
    L_0x010e:
        r0 = r0.getValue();
        r0 = (java.lang.String) r0;
        r0 = java.lang.Boolean.valueOf(r0);
        r0 = r0.booleanValue();
        r10.h = r0;
        goto L_0x002d;
    L_0x0120:
        r0 = r0.getValue();
        r0 = (java.lang.String) r0;
        r0 = java.lang.Integer.parseInt(r0);
        r10.j = r0;
        goto L_0x002d;
    L_0x012e:
        r0 = r0.getValue();
        r0 = (java.lang.String) r0;
        r0 = java.lang.Integer.parseInt(r0);
        r10.k = r0;
        goto L_0x002d;
    L_0x013c:
        r0 = r0.getValue();
        r0 = (java.lang.String) r0;
        r0 = java.lang.Integer.parseInt(r0);
        r10.f = r0;
        goto L_0x002d;
    L_0x014a:
        r0 = r0.getValue();
        r0 = (java.lang.String) r0;
        r0 = java.lang.Integer.parseInt(r0);
        r10.g = r0;
        goto L_0x002d;
    L_0x0158:
        r0 = r0.getValue();
        r0 = (java.lang.String) r0;
        r0 = java.lang.Integer.parseInt(r0);
        r10.m = r0;
        goto L_0x002d;
    L_0x0166:
        r0 = r0.getValue();
        r0 = (java.lang.String) r0;
        r0 = com.facebook.ads.internal.d.b.a(r0);
        r10.i = r0;
        r1 = android.webkit.CookieManager.getInstance();
        r6 = r1.acceptCookie();
        r1.setAcceptCookie(r4);
        r0 = r10.i;
        r7 = r0.iterator();
    L_0x0183:
        r0 = r7.hasNext();
        if (r0 == 0) goto L_0x01d6;
    L_0x0189:
        r0 = r7.next();
        r0 = (com.facebook.ads.internal.d.b) r0;
        r8 = r0.b();
        if (r8 == 0) goto L_0x0183;
    L_0x0195:
        r8 = new java.lang.StringBuilder;
        r8.<init>();
        r9 = r0.b;
        r8 = r8.append(r9);
        r9 = "=";
        r8 = r8.append(r9);
        r9 = r0.c;
        r8 = r8.append(r9);
        r9 = ";Domain=";
        r8 = r8.append(r9);
        r9 = r0.a;
        r8 = r8.append(r9);
        r9 = ";Expires=";
        r8 = r8.append(r9);
        r9 = r0.a();
        r8 = r8.append(r9);
        r9 = ";path=/";
        r8 = r8.append(r9);
        r8 = r8.toString();
        r0 = r0.a;
        r1.setCookie(r0, r8);
        goto L_0x0183;
    L_0x01d6:
        r0 = android.os.Build.VERSION.SDK_INT;
        r7 = 21;
        if (r0 >= r7) goto L_0x01e3;
    L_0x01dc:
        r0 = android.webkit.CookieSyncManager.getInstance();
        r0.startSync();
    L_0x01e3:
        r1.setAcceptCookie(r6);
        goto L_0x002d;
    L_0x01e8:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.internal.d.e.<init>(java.util.Map):void");
    }

    public static e a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Iterator keys = jSONObject.keys();
        HashMap hashMap = new HashMap();
        while (keys.hasNext()) {
            String str = (String) keys.next();
            hashMap.put(str, String.valueOf(jSONObject.opt(str)));
        }
        return new e(hashMap);
    }

    public AdPlacementType a() {
        return this.a;
    }

    public long b() {
        return (long) (this.d * 1000);
    }

    public long c() {
        return (long) (this.e * 1000);
    }

    public boolean d() {
        return this.h;
    }

    public int e() {
        return this.b;
    }

    public int f() {
        return this.f;
    }

    public int g() {
        return this.g;
    }

    public int h() {
        return this.m;
    }
}
