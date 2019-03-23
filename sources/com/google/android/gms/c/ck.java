package com.google.android.gms.c;

import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.c.aw.a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

public abstract class ck extends bn {
    protected static final Object l = new Object();
    protected static volatile dn m = null;
    static boolean n = false;
    private static final String s = ck.class.getSimpleName();
    private static long t = 0;
    protected boolean o = false;
    protected String p;
    protected boolean q = false;
    protected boolean r = false;

    protected ck(Context context, String str) {
        super(context);
        this.p = str;
        this.o = false;
    }

    protected ck(Context context, String str, boolean z) {
        super(context);
        this.p = str;
        this.o = z;
    }

    static do a(dn dnVar, MotionEvent motionEvent, DisplayMetrics displayMetrics) {
        Method a = dnVar.a(df.H(), df.I());
        if (a == null || motionEvent == null) {
            throw new dj();
        }
        try {
            return new do((String) a.invoke(null, new Object[]{motionEvent, displayMetrics}));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new dj(e);
        }
    }

    protected static synchronized void a(Context context, boolean z) {
        synchronized (ck.class) {
            if (!n) {
                t = dp.a().longValue() / 1000;
                m = b(context, z);
                n = true;
            }
        }
    }

    private static void a(dn dnVar) {
        List singletonList = Collections.singletonList(Context.class);
        dnVar.a(df.n(), df.o(), singletonList);
        dnVar.a(df.x(), df.y(), singletonList);
        dnVar.a(df.v(), df.w(), singletonList);
        dnVar.a(df.h(), df.i(), singletonList);
        dnVar.a(df.r(), df.s(), singletonList);
        dnVar.a(df.d(), df.e(), singletonList);
        dnVar.a(df.J(), df.K(), singletonList);
        singletonList = Arrays.asList(new Class[]{MotionEvent.class, DisplayMetrics.class});
        dnVar.a(df.H(), df.I(), singletonList);
        dnVar.a(df.F(), df.G(), singletonList);
        dnVar.a(df.l(), df.m(), Collections.emptyList());
        dnVar.a(df.D(), df.E(), Collections.emptyList());
        dnVar.a(df.t(), df.u(), Collections.emptyList());
        dnVar.a(df.j(), df.k(), Collections.emptyList());
        dnVar.a(df.p(), df.q(), Collections.emptyList());
        dnVar.a(df.B(), df.C(), Collections.emptyList());
        dnVar.a(df.f(), df.g(), Arrays.asList(new Class[]{Context.class, Boolean.TYPE, Boolean.TYPE}));
        dnVar.a(df.z(), df.A(), Arrays.asList(new Class[]{StackTraceElement[].class}));
        dnVar.a(df.L(), df.M(), Arrays.asList(new Class[]{View.class}));
    }

    private void a(dn dnVar, a aVar) {
        do a;
        a.a aVar2;
        int i = 0;
        try {
            a = a(dnVar, this.a, this.k);
            aVar.n = a.a;
            aVar.o = a.b;
            aVar.p = a.c;
            if (this.j) {
                aVar.D = a.d;
                aVar.E = a.e;
            }
            if (((Boolean) is.bA.c()).booleanValue() || ((Boolean) is.bv.c()).booleanValue()) {
                aVar2 = new a.a();
                do b = b(this.a);
                aVar2.a = b.a;
                aVar2.b = b.b;
                aVar2.h = b.c;
                if (this.j) {
                    aVar2.c = b.e;
                    aVar2.e = b.d;
                    aVar2.g = Integer.valueOf(b.f.longValue() != 0 ? 1 : 0);
                    if (this.d > 0) {
                        aVar2.d = this.k != null ? Long.valueOf(Math.round(((double) this.i) / ((double) this.d))) : null;
                        aVar2.f = Long.valueOf(Math.round(((double) this.h) / ((double) this.d)));
                    }
                    aVar2.j = b.i;
                    aVar2.i = b.j;
                    aVar2.k = Integer.valueOf(b.k.longValue() != 0 ? 1 : 0);
                    if (this.g > 0) {
                        aVar2.l = Long.valueOf(this.g);
                    }
                }
                aVar.W = aVar2;
            }
        } catch (dj e) {
        }
        if (this.c > 0) {
            aVar.I = Long.valueOf(this.c);
        }
        if (this.d > 0) {
            aVar.H = Long.valueOf(this.d);
        }
        if (this.e > 0) {
            aVar.G = Long.valueOf(this.e);
        }
        if (this.f > 0) {
            aVar.J = Long.valueOf(this.f);
        }
        try {
            int size = this.b.size() - 1;
            if (size > 0) {
                aVar.X = new a.a[size];
                while (i < size) {
                    a = a(dnVar, (MotionEvent) this.b.get(i), this.k);
                    aVar2 = new a.a();
                    aVar2.a = a.a;
                    aVar2.b = a.b;
                    aVar.X[i] = aVar2;
                    i++;
                }
            }
        } catch (dj e2) {
            aVar.X = null;
        }
    }

    protected static dn b(Context context, boolean z) {
        if (m == null) {
            synchronized (l) {
                if (m == null) {
                    dn a = dn.a(context, df.a(), df.c(), z);
                    a(a);
                    m = a;
                }
            }
        }
        return m;
    }

    /* Access modifiers changed, original: protected */
    public long a(StackTraceElement[] stackTraceElementArr) {
        Method a = m.a(df.z(), df.A());
        if (a == null || stackTraceElementArr == null) {
            throw new dj();
        }
        try {
            return new dl((String) a.invoke(null, new Object[]{stackTraceElementArr})).a.longValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new dj(e);
        }
    }

    /* Access modifiers changed, original: protected */
    public a a(Context context, View view) {
        a aVar = new a();
        if (!TextUtils.isEmpty(this.p)) {
            aVar.b = this.p;
        }
        dn b = b(context, this.o);
        b.p();
        b(b, aVar, view);
        b.q();
        return aVar;
    }

    /* Access modifiers changed, original: protected */
    public a a(Context context, au.a aVar) {
        a aVar2 = new a();
        if (!TextUtils.isEmpty(this.p)) {
            aVar2.b = this.p;
        }
        dn b = b(context, this.o);
        b.p();
        a(b, aVar2, aVar);
        b.q();
        return aVar2;
    }

    /* Access modifiers changed, original: protected */
    public List<Callable<Void>> a(dn dnVar, a aVar, View view) {
        ArrayList arrayList = new ArrayList();
        if (dnVar.c() == null) {
            return arrayList;
        }
        int r = dnVar.r();
        arrayList.add(new dz(dnVar, aVar));
        ArrayList arrayList2 = arrayList;
        arrayList2.add(new ec(dnVar, df.t(), df.u(), aVar, r, 1));
        arrayList2 = arrayList;
        arrayList2.add(new dx(dnVar, df.l(), df.m(), aVar, t, r, 25));
        arrayList2 = arrayList;
        arrayList2.add(new dw(dnVar, df.j(), df.k(), aVar, r, 44));
        arrayList2 = arrayList;
        arrayList2.add(new dr(dnVar, df.d(), df.e(), aVar, r, 3));
        arrayList2 = arrayList;
        arrayList2.add(new ea(dnVar, df.p(), df.q(), aVar, r, 22));
        if (((Boolean) is.bG.c()).booleanValue() || ((Boolean) is.bv.c()).booleanValue()) {
            arrayList2 = arrayList;
            arrayList2.add(new dv(dnVar, df.h(), df.i(), aVar, r, 5));
        }
        if (((Boolean) is.bz.c()).booleanValue() || ((Boolean) is.bv.c()).booleanValue()) {
            arrayList2 = arrayList;
            arrayList2.add(new ew(dnVar, df.J(), df.K(), aVar, r, 48));
        }
        if (((Boolean) is.bE.c()).booleanValue() || ((Boolean) is.bv.c()).booleanValue()) {
            arrayList2 = arrayList;
            arrayList2.add(new ef(dnVar, df.B(), df.C(), aVar, r, 51));
        }
        if (((Boolean) is.bJ.c()).booleanValue() || ((Boolean) is.bv.c()).booleanValue()) {
            arrayList2 = arrayList;
            arrayList2.add(new ee(dnVar, df.z(), df.A(), aVar, r, 45, new Throwable().getStackTrace()));
        }
        if (((Boolean) is.bK.c()).booleanValue()) {
            arrayList2 = arrayList;
            arrayList2.add(new ez(dnVar, df.L(), df.M(), aVar, r, 57, view));
        }
        return arrayList;
    }

    /* Access modifiers changed, original: protected */
    public void a(dn dnVar, a aVar, au.a aVar2) {
        if (dnVar.c() != null) {
            a(b(dnVar, aVar, aVar2));
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(List<Callable<Void>> list) {
        if (m != null) {
            ExecutorService c = m.c();
            if (c != null && !list.isEmpty()) {
                try {
                    c.invokeAll(list, ((Long) is.bq.c()).longValue(), TimeUnit.MILLISECONDS);
                } catch (InterruptedException e) {
                    Log.d(s, String.format("class methods got exception: %s", new Object[]{dp.a(e)}));
                }
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public do b(MotionEvent motionEvent) {
        Method a = m.a(df.F(), df.G());
        if (a == null || motionEvent == null) {
            throw new dj();
        }
        try {
            return new do((String) a.invoke(null, new Object[]{motionEvent, this.k}));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new dj(e);
        }
    }

    /* Access modifiers changed, original: protected */
    public List<Callable<Void>> b(dn dnVar, a aVar, au.a aVar2) {
        int r = dnVar.r();
        ArrayList arrayList = new ArrayList();
        String f = df.f();
        String g = df.g();
        boolean z = ((Boolean) is.bu.c()).booleanValue() || ((Boolean) is.bv.c()).booleanValue();
        arrayList.add(new dt(dnVar, f, g, aVar, r, 27, z, aVar2));
        arrayList.add(new dx(dnVar, df.l(), df.m(), aVar, t, r, 25));
        arrayList.add(new ec(dnVar, df.t(), df.u(), aVar, r, 1));
        arrayList.add(new ed(dnVar, df.v(), df.w(), aVar, r, 31));
        arrayList.add(new eh(dnVar, df.D(), df.E(), aVar, r, 33));
        arrayList.add(new ds(dnVar, df.x(), df.y(), aVar, r, 29));
        arrayList.add(new dv(dnVar, df.h(), df.i(), aVar, r, 5));
        arrayList.add(new eb(dnVar, df.r(), df.s(), aVar, r, 12));
        arrayList.add(new dr(dnVar, df.d(), df.e(), aVar, r, 3));
        arrayList.add(new dw(dnVar, df.j(), df.k(), aVar, r, 44));
        arrayList.add(new ea(dnVar, df.p(), df.q(), aVar, r, 22));
        if (((Boolean) is.bx.c()).booleanValue() || ((Boolean) is.bv.c()).booleanValue()) {
            arrayList.add(new ew(dnVar, df.J(), df.K(), aVar, r, 48));
        }
        if (((Boolean) is.bC.c()).booleanValue() || ((Boolean) is.bv.c()).booleanValue()) {
            arrayList.add(new ef(dnVar, df.B(), df.C(), aVar, r, 51));
        }
        return arrayList;
    }

    /* Access modifiers changed, original: protected */
    public void b(dn dnVar, a aVar, View view) {
        a(dnVar, aVar);
        a(a(dnVar, aVar, view));
    }
}
