package com.facebook.ads.internal.util;

import com.facebook.ads.internal.d.c;
import com.facebook.ads.internal.d.f;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class d {
    private static Map<String, Long> a = new ConcurrentHashMap();
    private static Map<String, Long> b = new ConcurrentHashMap();
    private static Map<String, String> c = new ConcurrentHashMap();

    private static long a(String str, c cVar) {
        if (a.containsKey(str)) {
            return ((Long) a.get(str)).longValue();
        }
        switch (cVar) {
            case BANNER:
                return 15000;
            default:
                return -1000;
        }
    }

    public static void a(long j, f fVar) {
        a.put(d(fVar), Long.valueOf(j));
    }

    public static void a(String str, f fVar) {
        c.put(d(fVar), str);
    }

    public static boolean a(f fVar) {
        String d = d(fVar);
        if (!b.containsKey(d)) {
            return false;
        }
        return System.currentTimeMillis() - ((Long) b.get(d)).longValue() < a(d, fVar.b());
    }

    public static void b(f fVar) {
        b.put(d(fVar), Long.valueOf(System.currentTimeMillis()));
    }

    public static String c(f fVar) {
        return (String) c.get(d(fVar));
    }

    private static String d(f fVar) {
        int i = 0;
        String str = "%s:%s:%s:%d:%d:%d";
        Object[] objArr = new Object[6];
        objArr[0] = fVar.a();
        objArr[1] = fVar.b();
        objArr[2] = fVar.e;
        objArr[3] = Integer.valueOf(fVar.c() == null ? 0 : fVar.c().getHeight());
        if (fVar.c() != null) {
            i = fVar.c().getWidth();
        }
        objArr[4] = Integer.valueOf(i);
        objArr[5] = Integer.valueOf(fVar.d());
        return String.format(str, objArr);
    }
}
