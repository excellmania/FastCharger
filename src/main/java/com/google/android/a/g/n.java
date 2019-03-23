package com.google.android.a.g;

import android.text.TextUtils;
import com.google.android.a.h.r;
import com.google.android.a.h.x;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public interface n extends r {
    public static final r<String> a = new r<String>() {
        public boolean a(String str) {
            String b = x.b(str);
            return (TextUtils.isEmpty(b) || ((b.contains("text") && !b.contains("text/vtt")) || b.contains("html") || b.contains("xml"))) ? false : true;
        }
    };

    public static class a extends IOException {
        public final int a;
        public final h b;

        public a(IOException iOException, h hVar, int i) {
            super(iOException);
            this.b = hVar;
            this.a = i;
        }

        public a(String str, h hVar, int i) {
            super(str);
            this.b = hVar;
            this.a = i;
        }

        public a(String str, IOException iOException, h hVar, int i) {
            super(str, iOException);
            this.b = hVar;
            this.a = i;
        }
    }

    public static final class b extends a {
        public final String c;

        public b(String str, h hVar) {
            super("Invalid content type: " + str, hVar, 1);
            this.c = str;
        }
    }

    public static final class c extends a {
        public final int c;
        public final Map<String, List<String>> d;

        public c(int i, Map<String, List<String>> map, h hVar) {
            super("Response code: " + i, hVar, 1);
            this.c = i;
            this.d = map;
        }
    }
}
