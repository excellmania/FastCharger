package com.google.android.gms.c;

import com.google.android.gms.c.au.a;
import java.lang.reflect.Method;
import java.util.concurrent.ExecutionException;

public class dt extends fb {
    private static volatile az i = null;
    private static final Object j = new Object();
    private boolean k = false;
    private a l = null;

    public dt(dn dnVar, String str, String str2, aw.a aVar, int i, int i2, boolean z, a aVar2) {
        super(dnVar, str, str2, aVar, i, i2);
        this.k = z;
        this.l = aVar2;
    }

    public static Boolean a(a aVar) {
        boolean z = false;
        if (!dp.b(b(aVar))) {
            return Boolean.valueOf(false);
        }
        if (!(aVar == null || aVar.a == null || aVar.a.a.intValue() != 3)) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    private void a(int i) {
        boolean z = true;
        Method method = this.f;
        Object[] objArr = new Object[3];
        objArr[0] = this.b.a();
        objArr[1] = Boolean.valueOf(this.k);
        if (i != 2) {
            z = false;
        }
        objArr[2] = Boolean.valueOf(z);
        i = new az((String) method.invoke(null, objArr));
        if (dp.b(i.a) || i.a.equals("E")) {
            switch (i) {
                case 3:
                    String f = f();
                    if (!dp.b(f)) {
                        i.a = f;
                        return;
                    }
                    return;
                case 4:
                    i.a = this.l.b.a;
                    return;
                default:
                    return;
            }
        }
    }

    public static String b(a aVar) {
        return (aVar == null || aVar.b == null || dp.b(aVar.b.a)) ? null : aVar.b.a;
    }

    private boolean c() {
        return i == null || dp.b(i.a) || i.a.equals("E");
    }

    private int d() {
        return !dp.b(b(this.l)) ? 4 : (a(this.l).booleanValue() && e()) ? 3 : 2;
    }

    private boolean e() {
        return this.b.k() && ((Boolean) is.bP.c()).booleanValue() && ((Boolean) is.bQ.c()).booleanValue() && ((Boolean) is.bN.c()).booleanValue();
    }

    private String f() {
        try {
            if (this.b.m() != null) {
                this.b.m().get();
            }
            aw.a l = this.b.l();
            if (!(l == null || l.w == null)) {
                return l.w;
            }
        } catch (InterruptedException | ExecutionException e) {
        }
        return null;
    }

    /* Access modifiers changed, original: protected */
    public void a() {
        if (c()) {
            synchronized (j) {
                int d = d();
                if (d == 3) {
                    this.b.n();
                }
                a(d);
            }
        }
        synchronized (this.e) {
            if (i != null) {
                this.e.w = i.a;
                this.e.C = Long.valueOf(i.b);
                this.e.B = i.c;
                if (this.k) {
                    this.e.M = i.d;
                    this.e.N = i.e;
                }
            }
        }
    }
}
