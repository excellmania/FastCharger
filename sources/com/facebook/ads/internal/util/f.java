package com.facebook.ads.internal.util;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import java.util.Collection;
import java.util.HashSet;
import org.json.JSONArray;

public class f {

    public interface a {
        e C();

        String D();

        Collection<String> E();
    }

    public static Collection<String> a(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        HashSet hashSet = new HashSet();
        for (int i = 0; i < jSONArray.length(); i++) {
            hashSet.add(jSONArray.optString(i));
        }
        return hashSet;
    }

    public static boolean a(Context context, a aVar) {
        e C = aVar.C();
        if (C == null || C == e.NONE) {
            return false;
        }
        Collection<String> E = aVar.E();
        if (E == null || E.isEmpty()) {
            return false;
        }
        int i;
        for (String a : E) {
            if (a(context, a)) {
                i = 1;
                break;
            }
        }
        i = 0;
        if (i != (C == e.INSTALLED ? 1 : 0)) {
            return false;
        }
        if (TextUtils.isEmpty(aVar.D())) {
            return true;
        }
        new r().execute(new String[]{aVar.D()});
        return false;
    }

    public static boolean a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (NameNotFoundException | RuntimeException e) {
            return false;
        }
    }
}
