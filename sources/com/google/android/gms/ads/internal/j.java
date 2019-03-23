package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import com.google.android.gms.c.gv;
import com.google.android.gms.c.ha;
import com.google.android.gms.c.hj;
import com.google.android.gms.c.hk.a;
import com.google.android.gms.c.hr;
import com.google.android.gms.c.js;
import com.google.android.gms.c.kf;
import com.google.android.gms.c.kg;
import com.google.android.gms.c.kh;
import com.google.android.gms.c.ki;
import com.google.android.gms.c.mo;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.sj;
import com.google.android.gms.c.tc;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@pa
public class j extends a {
    private final Context a;
    private final hj b;
    private final mo c;
    @Nullable
    private final kf d;
    @Nullable
    private final kg e;
    private final SimpleArrayMap<String, ki> f;
    private final SimpleArrayMap<String, kh> g;
    private final js h;
    private final List<String> i;
    private final hr j;
    private final String k;
    private final tc l;
    @Nullable
    private WeakReference<r> m;
    private final d n;
    private final Object o = new Object();

    j(Context context, String str, mo moVar, tc tcVar, hj hjVar, kf kfVar, kg kgVar, SimpleArrayMap<String, ki> simpleArrayMap, SimpleArrayMap<String, kh> simpleArrayMap2, js jsVar, hr hrVar, d dVar) {
        this.a = context;
        this.k = str;
        this.c = moVar;
        this.l = tcVar;
        this.b = hjVar;
        this.e = kgVar;
        this.d = kfVar;
        this.f = simpleArrayMap;
        this.g = simpleArrayMap2;
        this.h = jsVar;
        this.i = d();
        this.j = hrVar;
        this.n = dVar;
    }

    private List<String> d() {
        ArrayList arrayList = new ArrayList();
        if (this.e != null) {
            arrayList.add("1");
        }
        if (this.d != null) {
            arrayList.add("2");
        }
        if (this.f.size() > 0) {
            arrayList.add("3");
        }
        return arrayList;
    }

    /* JADX WARNING: Missing block: B:15:?, code skipped:
            return r0;
     */
    @android.support.annotation.Nullable
    public java.lang.String a() {
        /*
        r3 = this;
        r1 = 0;
        r2 = r3.o;
        monitor-enter(r2);
        r0 = r3.m;	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x001a;
    L_0x0008:
        r0 = r3.m;	 Catch:{ all -> 0x001d }
        r0 = r0.get();	 Catch:{ all -> 0x001d }
        r0 = (com.google.android.gms.ads.internal.r) r0;	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x0018;
    L_0x0012:
        r0 = r0.F();	 Catch:{ all -> 0x001d }
    L_0x0016:
        monitor-exit(r2);	 Catch:{ all -> 0x001d }
    L_0x0017:
        return r0;
    L_0x0018:
        r0 = r1;
        goto L_0x0016;
    L_0x001a:
        monitor-exit(r2);	 Catch:{ all -> 0x001d }
        r0 = r1;
        goto L_0x0017;
    L_0x001d:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x001d }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.j.a():java.lang.String");
    }

    public void a(final gv gvVar) {
        a(new Runnable() {
            public void run() {
                synchronized (j.this.o) {
                    r c = j.this.c();
                    j.this.m = new WeakReference(c);
                    c.a(j.this.d);
                    c.a(j.this.e);
                    c.a(j.this.f);
                    c.a(j.this.b);
                    c.b(j.this.g);
                    c.a(j.this.d());
                    c.a(j.this.h);
                    c.a(j.this.j);
                    c.a(gvVar);
                }
            }
        });
    }

    /* Access modifiers changed, original: protected */
    public void a(Runnable runnable) {
        sj.a.post(runnable);
    }

    /* JADX WARNING: Missing block: B:15:?, code skipped:
            return r0;
     */
    public boolean b() {
        /*
        r3 = this;
        r1 = 0;
        r2 = r3.o;
        monitor-enter(r2);
        r0 = r3.m;	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x001a;
    L_0x0008:
        r0 = r3.m;	 Catch:{ all -> 0x001d }
        r0 = r0.get();	 Catch:{ all -> 0x001d }
        r0 = (com.google.android.gms.ads.internal.r) r0;	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x0018;
    L_0x0012:
        r0 = r0.q();	 Catch:{ all -> 0x001d }
    L_0x0016:
        monitor-exit(r2);	 Catch:{ all -> 0x001d }
    L_0x0017:
        return r0;
    L_0x0018:
        r0 = r1;
        goto L_0x0016;
    L_0x001a:
        monitor-exit(r2);	 Catch:{ all -> 0x001d }
        r0 = r1;
        goto L_0x0017;
    L_0x001d:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x001d }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.j.b():boolean");
    }

    /* Access modifiers changed, original: protected */
    public r c() {
        return new r(this.a, this.n, ha.a(this.a), this.k, this.c, this.l);
    }
}
