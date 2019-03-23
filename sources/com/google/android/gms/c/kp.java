package com.google.android.gms.c;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.v;
import java.util.Map;

@pa
public final class kp implements kr {
    private long a(long j) {
        return (j - v.k().a()) + v.k().b();
    }

    private void b(tr trVar, Map<String, String> map) {
        String str = (String) map.get("label");
        String str2 = (String) map.get("start_label");
        String str3 = (String) map.get("timestamp");
        if (TextUtils.isEmpty(str)) {
            sz.e("No label given for CSI tick.");
        } else if (TextUtils.isEmpty(str3)) {
            sz.e("No timestamp given for CSI tick.");
        } else {
            try {
                long a = a(Long.parseLong(str3));
                if (TextUtils.isEmpty(str2)) {
                    str2 = "native:view_load";
                }
                trVar.y().a(str, str2, a);
            } catch (NumberFormatException e) {
                sz.c("Malformed timestamp for CSI tick.", e);
            }
        }
    }

    private void c(tr trVar, Map<String, String> map) {
        String str = (String) map.get("value");
        if (TextUtils.isEmpty(str)) {
            sz.e("No value given for CSI experiment.");
            return;
        }
        jb a = trVar.y().a();
        if (a == null) {
            sz.e("No ticker for WebView, dropping experiment ID.");
        } else {
            a.a("e", str);
        }
    }

    private void d(tr trVar, Map<String, String> map) {
        String str = (String) map.get("name");
        String str2 = (String) map.get("value");
        if (TextUtils.isEmpty(str2)) {
            sz.e("No value given for CSI extra.");
        } else if (TextUtils.isEmpty(str)) {
            sz.e("No name given for CSI extra.");
        } else {
            jb a = trVar.y().a();
            if (a == null) {
                sz.e("No ticker for WebView, dropping extra parameter.");
            } else {
                a.a(str, str2);
            }
        }
    }

    public void a(tr trVar, Map<String, String> map) {
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            b(trVar, map);
        } else if ("experiment".equals(str)) {
            c(trVar, map);
        } else if ("extra".equals(str)) {
            d(trVar, map);
        }
    }
}
