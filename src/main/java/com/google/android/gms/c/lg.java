package com.google.android.gms.c;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.common.api.e;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

@pa
public abstract class lg implements e {
    protected Context a;
    protected String b;
    protected WeakReference<tr> c;

    public lg(tr trVar) {
        this.a = trVar.getContext();
        this.b = v.e().a(this.a, trVar.o().b);
        this.c = new WeakReference(trVar);
    }

    private void a(String str, Map<String, String> map) {
        tr trVar = (tr) this.c.get();
        if (trVar != null) {
            trVar.a(str, (Map) map);
        }
    }

    private String c(String str) {
        String str2 = "internal";
        Object obj = -1;
        switch (str.hashCode()) {
            case -1396664534:
                if (str.equals("badUrl")) {
                    obj = 6;
                    break;
                }
                break;
            case -1347010958:
                if (str.equals("inProgress")) {
                    obj = 2;
                    break;
                }
                break;
            case -918817863:
                if (str.equals("downloadTimeout")) {
                    obj = 7;
                    break;
                }
                break;
            case -659376217:
                if (str.equals("contentLengthMissing")) {
                    obj = 3;
                    break;
                }
                break;
            case -642208130:
                if (str.equals("playerFailed")) {
                    obj = 1;
                    break;
                }
                break;
            case -354048396:
                if (str.equals("sizeExceeded")) {
                    obj = 8;
                    break;
                }
                break;
            case -32082395:
                if (str.equals("externalAbort")) {
                    obj = 9;
                    break;
                }
                break;
            case 96784904:
                if (str.equals("error")) {
                    obj = null;
                    break;
                }
                break;
            case 580119100:
                if (str.equals("expireFailed")) {
                    obj = 5;
                    break;
                }
                break;
            case 725497484:
                if (str.equals("noCacheDir")) {
                    obj = 4;
                    break;
                }
                break;
        }
        switch (obj) {
            case null:
            case 1:
            case 2:
            case 3:
                return "internal";
            case 4:
            case 5:
                return "io";
            case 6:
            case 7:
                return "network";
            case 8:
            case 9:
                return "policy";
            default:
                return str2;
        }
    }

    public void a() {
    }

    /* Access modifiers changed, original: protected */
    public void a(final String str, final String str2, final int i) {
        sy.a.post(new Runnable() {
            public void run() {
                Map hashMap = new HashMap();
                hashMap.put("event", "precacheComplete");
                hashMap.put("src", str);
                hashMap.put("cachedSrc", str2);
                hashMap.put("totalBytes", Integer.toString(i));
                lg.this.a("onPrecacheEvent", hashMap);
            }
        });
    }

    /* Access modifiers changed, original: protected */
    public void a(String str, String str2, int i, int i2, boolean z) {
        final String str3 = str;
        final String str4 = str2;
        final int i3 = i;
        final int i4 = i2;
        final boolean z2 = z;
        sy.a.post(new Runnable() {
            public void run() {
                Map hashMap = new HashMap();
                hashMap.put("event", "precacheProgress");
                hashMap.put("src", str3);
                hashMap.put("cachedSrc", str4);
                hashMap.put("bytesLoaded", Integer.toString(i3));
                hashMap.put("totalBytes", Integer.toString(i4));
                hashMap.put("cacheReady", z2 ? "1" : "0");
                lg.this.a("onPrecacheEvent", hashMap);
            }
        });
    }

    public void a(String str, String str2, String str3, @Nullable String str4) {
        final String str5 = str;
        final String str6 = str2;
        final String str7 = str3;
        final String str8 = str4;
        sy.a.post(new Runnable() {
            public void run() {
                Map hashMap = new HashMap();
                hashMap.put("event", "precacheCanceled");
                hashMap.put("src", str5);
                if (!TextUtils.isEmpty(str6)) {
                    hashMap.put("cachedSrc", str6);
                }
                hashMap.put("type", lg.this.c(str7));
                hashMap.put("reason", str7);
                if (!TextUtils.isEmpty(str8)) {
                    hashMap.put("message", str8);
                }
                lg.this.a("onPrecacheEvent", hashMap);
            }
        });
    }

    public abstract boolean a(String str);

    /* Access modifiers changed, original: protected */
    public String b(String str) {
        return hf.a().a(str);
    }

    public abstract void b();
}
