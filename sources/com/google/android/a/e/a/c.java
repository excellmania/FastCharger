package com.google.android.a.e.a;

import com.google.android.a.e.m;
import com.google.android.a.h.o;
import com.google.android.a.t;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

final class c extends d {
    public c(m mVar) {
        super(mVar);
    }

    private static Object a(o oVar, int i) {
        switch (i) {
            case 0:
                return d(oVar);
            case 1:
                return c(oVar);
            case 2:
                return e(oVar);
            case 3:
                return g(oVar);
            case 8:
                return h(oVar);
            case 10:
                return f(oVar);
            case 11:
                return i(oVar);
            default:
                return null;
        }
    }

    private static int b(o oVar) {
        return oVar.f();
    }

    private static Boolean c(o oVar) {
        boolean z = true;
        if (oVar.f() != 1) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    private static Double d(o oVar) {
        return Double.valueOf(Double.longBitsToDouble(oVar.o()));
    }

    private static String e(o oVar) {
        int g = oVar.g();
        int d = oVar.d();
        oVar.c(g);
        return new String(oVar.a, d, g);
    }

    private static ArrayList<Object> f(o oVar) {
        int s = oVar.s();
        ArrayList arrayList = new ArrayList(s);
        for (int i = 0; i < s; i++) {
            arrayList.add(a(oVar, b(oVar)));
        }
        return arrayList;
    }

    private static HashMap<String, Object> g(o oVar) {
        HashMap hashMap = new HashMap();
        while (true) {
            String e = e(oVar);
            int b = b(oVar);
            if (b == 9) {
                return hashMap;
            }
            hashMap.put(e, a(oVar, b));
        }
    }

    private static HashMap<String, Object> h(o oVar) {
        int s = oVar.s();
        HashMap hashMap = new HashMap(s);
        for (int i = 0; i < s; i++) {
            hashMap.put(e(oVar), a(oVar, b(oVar)));
        }
        return hashMap;
    }

    private static Date i(o oVar) {
        Date date = new Date((long) d(oVar).doubleValue());
        oVar.c(2);
        return date;
    }

    /* Access modifiers changed, original: protected */
    public void a(o oVar, long j) {
        if (b(oVar) != 2) {
            throw new t();
        }
        if (!"onMetaData".equals(e(oVar))) {
            return;
        }
        if (b(oVar) != 8) {
            throw new t();
        }
        HashMap h = h(oVar);
        if (h.containsKey("duration")) {
            double doubleValue = ((Double) h.get("duration")).doubleValue();
            if (doubleValue > 0.0d) {
                a((long) (doubleValue * 1000000.0d));
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean a(o oVar) {
        return true;
    }
}
