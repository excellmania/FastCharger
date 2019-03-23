package com.facebook.ads.internal.util;

import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.internal.g.a.a;
import com.facebook.ads.internal.g.a.o;
import java.net.URLEncoder;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class r extends AsyncTask<String, Void, Void> {
    private static final String a = r.class.getSimpleName();
    private static final Set<String> b = new HashSet();
    private Map<String, String> c;
    private Map<String, String> d;

    static {
        b.add("#");
        b.add("null");
    }

    public r() {
        this(null, null);
    }

    public r(Map<String, String> map) {
        this(map, null);
    }

    public r(Map<String, String> map, Map<String, String> map2) {
        this.c = map;
        this.d = map2;
    }

    private String a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return str;
        }
        return str + (str.contains("?") ? "&" : "?") + str2 + "=" + URLEncoder.encode(str3);
    }

    private boolean a(String str) {
        a a = h.a();
        try {
            if (this.d == null || this.d.size() == 0) {
                return a.a(str, null).a() == 200;
            } else {
                o oVar = new o();
                oVar.a(this.d);
                return a.b(str, oVar).a() == 200;
            }
        } catch (Exception e) {
            Log.e(a, "Error opening url: " + str, e);
            return false;
        }
    }

    private String b(String str) {
        try {
            return a(str, "analog", h.a(a.a()));
        } catch (Exception e) {
            return str;
        }
    }

    /* Access modifiers changed, original: protected|varargs */
    /* renamed from: a */
    public Void doInBackground(String... strArr) {
        CharSequence charSequence = strArr[0];
        if (!TextUtils.isEmpty(charSequence) && !b.contains(charSequence)) {
            String b = b(charSequence);
            if (!(this.c == null || this.c.isEmpty())) {
                String str;
                Iterator it = this.c.entrySet().iterator();
                while (true) {
                    str = b;
                    if (!it.hasNext()) {
                        break;
                    }
                    Entry entry = (Entry) it.next();
                    b = a(str, (String) entry.getKey(), (String) entry.getValue());
                }
                b = str;
            }
            int i = 1;
            while (true) {
                int i2 = i + 1;
                if (i > 2 || a(b)) {
                    break;
                }
                i = i2;
            }
        }
        return null;
    }
}
