package com.google.android.gms.c;

import android.content.Context;
import android.text.TextUtils;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.c.rv.a;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

@pa
public class op extends ok {
    md g;
    protected mj h;
    private mo i;
    private mf j;
    private final jb k;
    private final tr l;
    private boolean m;

    op(Context context, a aVar, mo moVar, ol.a aVar2, jb jbVar, tr trVar) {
        super(context, aVar, aVar2);
        this.i = moVar;
        this.j = aVar.c;
        this.k = jbVar;
        this.l = trVar;
    }

    private static String a(mj mjVar) {
        String str = mjVar.b.d;
        int b = b(mjVar.a);
        return new StringBuilder(String.valueOf(str).length() + 33).append(str).append(".").append(b).append(".").append(mjVar.g).toString();
    }

    private static String a(List<mj> list) {
        String str = "";
        if (list == null) {
            return str.toString();
        }
        Object obj = str;
        for (mj mjVar : list) {
            if (!(mjVar == null || mjVar.b == null || TextUtils.isEmpty(mjVar.b.d))) {
                String valueOf = String.valueOf(obj);
                str = String.valueOf(a(mjVar));
                obj = new StringBuilder((String.valueOf(valueOf).length() + 1) + String.valueOf(str).length()).append(valueOf).append(str).append("_").toString();
            }
        }
        return obj.substring(0, Math.max(0, obj.length() - 1));
    }

    private static int b(int i) {
        switch (i) {
            case -1:
                return 4;
            case 0:
                return 0;
            case 1:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 5;
            default:
                return 6;
        }
    }

    private void c() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        sj.a.post(new Runnable() {
            public void run() {
                synchronized (op.this.d) {
                    op.this.m = o.a(op.this.l, op.this.h, countDownLatch);
                }
            }
        });
        try {
            countDownLatch.await(10, TimeUnit.SECONDS);
            synchronized (this.d) {
                if (!this.m) {
                    throw new a("View could not be prepared", 0);
                } else if (this.l.r()) {
                    throw new a("Assets not loaded, web view is destroyed", 0);
                }
            }
        } catch (InterruptedException e) {
            String valueOf = String.valueOf(e);
            throw new a(new StringBuilder(String.valueOf(valueOf).length() + 38).append("Interrupted while waiting for latch : ").append(valueOf).toString(), 0);
        }
    }

    /* Access modifiers changed, original: protected */
    public rv a(int i) {
        pg pgVar = this.e.a;
        return new rv(pgVar.c, this.l, this.f.d, i, this.f.f, this.f.j, this.f.l, this.f.k, pgVar.i, this.f.h, this.h != null ? this.h.b : null, this.h != null ? this.h.c : null, this.h != null ? this.h.d : AdMobAdapter.class.getName(), this.j, this.h != null ? this.h.e : null, this.f.i, this.e.d, this.f.g, this.e.f, this.f.n, this.f.o, this.e.h, null, this.f.C, this.f.D, this.f.E, this.j != null ? this.j.n : false, this.f.G, this.g != null ? a(this.g.b()) : null, this.f.J, this.f.N);
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x002e  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x005c  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x007b  */
    public void a(long r6) {
        /*
        r5 = this;
        r1 = 0;
        r2 = r5.d;
        monitor-enter(r2);
        r0 = r5.b(r6);	 Catch:{ all -> 0x004a }
        r5.g = r0;	 Catch:{ all -> 0x004a }
        monitor-exit(r2);	 Catch:{ all -> 0x004a }
        r2 = new java.util.ArrayList;
        r0 = r5.j;
        r0 = r0.a;
        r2.<init>(r0);
        r0 = r5.e;
        r0 = r0.a;
        r0 = r0.c;
        r0 = r0.m;
        r3 = "com.google.ads.mediation.admob.AdMobAdapter";
        if (r0 == 0) goto L_0x0096;
    L_0x0020:
        r0 = r0.getBundle(r3);
        if (r0 == 0) goto L_0x0096;
    L_0x0026:
        r4 = "_skipMediation";
        r0 = r0.getBoolean(r4);
    L_0x002c:
        if (r0 == 0) goto L_0x004d;
    L_0x002e:
        r4 = r2.listIterator();
    L_0x0032:
        r0 = r4.hasNext();
        if (r0 == 0) goto L_0x004d;
    L_0x0038:
        r0 = r4.next();
        r0 = (com.google.android.gms.c.me) r0;
        r0 = r0.c;
        r0 = r0.contains(r3);
        if (r0 != 0) goto L_0x0032;
    L_0x0046:
        r4.remove();
        goto L_0x0032;
    L_0x004a:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x004a }
        throw r0;
    L_0x004d:
        r0 = r5.g;
        r0 = r0.a(r2);
        r5.h = r0;
        r0 = r5.h;
        r0 = r0.a;
        switch(r0) {
            case 0: goto L_0x0084;
            case 1: goto L_0x007b;
            default: goto L_0x005c;
        };
    L_0x005c:
        r0 = new com.google.android.gms.c.ok$a;
        r2 = r5.h;
        r2 = r2.a;
        r3 = new java.lang.StringBuilder;
        r4 = 40;
        r3.<init>(r4);
        r4 = "Unexpected mediation result: ";
        r3 = r3.append(r4);
        r2 = r3.append(r2);
        r2 = r2.toString();
        r0.<init>(r2, r1);
        throw r0;
    L_0x007b:
        r0 = new com.google.android.gms.c.ok$a;
        r1 = "No fill from any mediation ad networks.";
        r2 = 3;
        r0.<init>(r1, r2);
        throw r0;
    L_0x0084:
        r0 = r5.h;
        r0 = r0.b;
        if (r0 == 0) goto L_0x0095;
    L_0x008a:
        r0 = r5.h;
        r0 = r0.b;
        r0 = r0.l;
        if (r0 == 0) goto L_0x0095;
    L_0x0092:
        r5.c();
    L_0x0095:
        return;
    L_0x0096:
        r0 = r1;
        goto L_0x002c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.op.a(long):void");
    }

    /* Access modifiers changed, original: 0000 */
    public md b(long j) {
        if (this.j.l != -1) {
            return new ml(this.b, this.e.a, this.i, this.j, this.f.t, this.f.B, j, ((Long) is.bo.c()).longValue(), 2);
        }
        return new mm(this.b, this.e.a, this.i, this.j, this.f.t, this.f.B, j, ((Long) is.bo.c()).longValue(), this.k);
    }

    public void b() {
        synchronized (this.d) {
            super.b();
            if (this.g != null) {
                this.g.a();
            }
        }
    }
}
