package com.google.android.gms.c;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@pa
public class ml implements md {
    private final pg a;
    private final mo b;
    private final Context c;
    private final mf d;
    private final boolean e;
    private final long f;
    private final long g;
    private final int h;
    private final Object i = new Object();
    private boolean j = false;
    private final Map<th<mj>, mi> k = new HashMap();
    private final boolean l;
    private List<mj> m = new ArrayList();

    public ml(Context context, pg pgVar, mo moVar, mf mfVar, boolean z, boolean z2, long j, long j2, int i) {
        this.c = context;
        this.a = pgVar;
        this.b = moVar;
        this.d = mfVar;
        this.e = z;
        this.l = z2;
        this.f = j;
        this.g = j2;
        this.h = i;
    }

    private void a(final th<mj> thVar) {
        sj.a.post(new Runnable() {
            public void run() {
                for (th thVar : ml.this.k.keySet()) {
                    if (thVar != thVar) {
                        ((mi) ml.this.k.get(thVar)).a();
                    }
                }
            }
        });
    }

    /* JADX WARNING: Missing block: B:8:0x0010, code skipped:
            r2 = r5.iterator();
     */
    /* JADX WARNING: Missing block: B:10:0x0018, code skipped:
            if (r2.hasNext() == false) goto L_0x003f;
     */
    /* JADX WARNING: Missing block: B:11:0x001a, code skipped:
            r0 = (com.google.android.gms.c.th) r2.next();
     */
    /* JADX WARNING: Missing block: B:13:?, code skipped:
            r1 = (com.google.android.gms.c.mj) r0.get();
            r4.m.add(r1);
     */
    /* JADX WARNING: Missing block: B:14:0x002b, code skipped:
            if (r1 == null) goto L_0x0014;
     */
    /* JADX WARNING: Missing block: B:16:0x002f, code skipped:
            if (r1.a != 0) goto L_0x0014;
     */
    /* JADX WARNING: Missing block: B:17:0x0031, code skipped:
            a(r0);
     */
    /* JADX WARNING: Missing block: B:18:0x0035, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:19:0x0036, code skipped:
            com.google.android.gms.c.sz.c("Exception while processing an adapter; continuing with other adapters", r0);
     */
    /* JADX WARNING: Missing block: B:24:0x003f, code skipped:
            a(null);
     */
    /* JADX WARNING: Missing block: B:35:?, code skipped:
            return new com.google.android.gms.c.mj(1);
     */
    /* JADX WARNING: Missing block: B:36:?, code skipped:
            return r1;
     */
    private com.google.android.gms.c.mj b(java.util.List<com.google.android.gms.c.th<com.google.android.gms.c.mj>> r5) {
        /*
        r4 = this;
        r2 = r4.i;
        monitor-enter(r2);
        r0 = r4.j;	 Catch:{ all -> 0x003c }
        if (r0 == 0) goto L_0x000f;
    L_0x0007:
        r1 = new com.google.android.gms.c.mj;	 Catch:{ all -> 0x003c }
        r0 = -1;
        r1.<init>(r0);	 Catch:{ all -> 0x003c }
        monitor-exit(r2);	 Catch:{ all -> 0x003c }
    L_0x000e:
        return r1;
    L_0x000f:
        monitor-exit(r2);	 Catch:{ all -> 0x003c }
        r2 = r5.iterator();
    L_0x0014:
        r0 = r2.hasNext();
        if (r0 == 0) goto L_0x003f;
    L_0x001a:
        r0 = r2.next();
        r0 = (com.google.android.gms.c.th) r0;
        r1 = r0.get();	 Catch:{ InterruptedException | ExecutionException -> 0x0035, ExecutionException -> 0x004a }
        r1 = (com.google.android.gms.c.mj) r1;	 Catch:{ InterruptedException | ExecutionException -> 0x0035, ExecutionException -> 0x004a }
        r3 = r4.m;	 Catch:{ InterruptedException | ExecutionException -> 0x0035, ExecutionException -> 0x004a }
        r3.add(r1);	 Catch:{ InterruptedException | ExecutionException -> 0x0035, ExecutionException -> 0x004a }
        if (r1 == 0) goto L_0x0014;
    L_0x002d:
        r3 = r1.a;	 Catch:{ InterruptedException | ExecutionException -> 0x0035, ExecutionException -> 0x004a }
        if (r3 != 0) goto L_0x0014;
    L_0x0031:
        r4.a(r0);	 Catch:{ InterruptedException | ExecutionException -> 0x0035, ExecutionException -> 0x004a }
        goto L_0x000e;
    L_0x0035:
        r0 = move-exception;
    L_0x0036:
        r1 = "Exception while processing an adapter; continuing with other adapters";
        com.google.android.gms.c.sz.c(r1, r0);
        goto L_0x0014;
    L_0x003c:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x003c }
        throw r0;
    L_0x003f:
        r0 = 0;
        r4.a(r0);
        r1 = new com.google.android.gms.c.mj;
        r0 = 1;
        r1.<init>(r0);
        goto L_0x000e;
    L_0x004a:
        r0 = move-exception;
        goto L_0x0036;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.ml.b(java.util.List):com.google.android.gms.c.mj");
    }

    /* JADX WARNING: Missing block: B:8:0x0010, code skipped:
            r4 = -1;
            r3 = null;
            r2 = null;
     */
    /* JADX WARNING: Missing block: B:9:0x001b, code skipped:
            if (r15.d.m == -1) goto L_0x0083;
     */
    /* JADX WARNING: Missing block: B:10:0x001d, code skipped:
            r0 = r15.d.m;
     */
    /* JADX WARNING: Missing block: B:11:0x0021, code skipped:
            r8 = r16.iterator();
     */
    /* JADX WARNING: Missing block: B:36:0x0083, code skipped:
            r0 = 10000;
     */
    private com.google.android.gms.c.mj c(java.util.List<com.google.android.gms.c.th<com.google.android.gms.c.mj>> r16) {
        /*
        r15 = this;
        r1 = r15.i;
        monitor-enter(r1);
        r0 = r15.j;	 Catch:{ all -> 0x0080 }
        if (r0 == 0) goto L_0x000f;
    L_0x0007:
        r2 = new com.google.android.gms.c.mj;	 Catch:{ all -> 0x0080 }
        r0 = -1;
        r2.<init>(r0);	 Catch:{ all -> 0x0080 }
        monitor-exit(r1);	 Catch:{ all -> 0x0080 }
    L_0x000e:
        return r2;
    L_0x000f:
        monitor-exit(r1);	 Catch:{ all -> 0x0080 }
        r4 = -1;
        r3 = 0;
        r2 = 0;
        r0 = r15.d;
        r0 = r0.m;
        r6 = -1;
        r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1));
        if (r0 == 0) goto L_0x0083;
    L_0x001d:
        r0 = r15.d;
        r0 = r0.m;
    L_0x0021:
        r8 = r16.iterator();
        r6 = r0;
    L_0x0026:
        r0 = r8.hasNext();
        if (r0 == 0) goto L_0x00b9;
    L_0x002c:
        r0 = r8.next();
        r0 = (com.google.android.gms.c.th) r0;
        r1 = com.google.android.gms.ads.internal.v.k();
        r10 = r1.a();
        r12 = 0;
        r1 = (r6 > r12 ? 1 : (r6 == r12 ? 0 : -1));
        if (r1 != 0) goto L_0x0086;
    L_0x0040:
        r1 = r0.isDone();	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x008f, TimeoutException -> 0x00ca }
        if (r1 == 0) goto L_0x0086;
    L_0x0046:
        r1 = r0.get();	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x008f, TimeoutException -> 0x00ca }
        r1 = (com.google.android.gms.c.mj) r1;	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x008f, TimeoutException -> 0x00ca }
    L_0x004c:
        r5 = r15.m;	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x008f, TimeoutException -> 0x00ca }
        r5.add(r1);	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x008f, TimeoutException -> 0x00ca }
        if (r1 == 0) goto L_0x00cc;
    L_0x0053:
        r5 = r1.a;	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x008f, TimeoutException -> 0x00ca }
        if (r5 != 0) goto L_0x00cc;
    L_0x0057:
        r5 = r1.f;	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x008f, TimeoutException -> 0x00ca }
        if (r5 == 0) goto L_0x00cc;
    L_0x005b:
        r9 = r5.a();	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x008f, TimeoutException -> 0x00ca }
        if (r9 <= r4) goto L_0x00cc;
    L_0x0061:
        r2 = r5.a();	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x008f, TimeoutException -> 0x00ca }
        r14 = r1;
        r1 = r0;
        r0 = r14;
    L_0x0068:
        r3 = com.google.android.gms.ads.internal.v.k();
        r4 = r3.a();
        r4 = r4 - r10;
        r4 = r6 - r4;
        r6 = 0;
        r4 = java.lang.Math.max(r4, r6);
        r3 = r1;
        r14 = r0;
        r0 = r4;
        r4 = r2;
        r2 = r14;
    L_0x007e:
        r6 = r0;
        goto L_0x0026;
    L_0x0080:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0080 }
        throw r0;
    L_0x0083:
        r0 = 10000; // 0x2710 float:1.4013E-41 double:4.9407E-320;
        goto L_0x0021;
    L_0x0086:
        r1 = java.util.concurrent.TimeUnit.MILLISECONDS;	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x008f, TimeoutException -> 0x00ca }
        r1 = r0.get(r6, r1);	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x008f, TimeoutException -> 0x00ca }
        r1 = (com.google.android.gms.c.mj) r1;	 Catch:{ InterruptedException -> 0x00c6, ExecutionException -> 0x00c8, RemoteException | InterruptedException | ExecutionException | TimeoutException -> 0x008f, TimeoutException -> 0x00ca }
        goto L_0x004c;
    L_0x008f:
        r0 = move-exception;
    L_0x0090:
        r1 = "Exception while processing an adapter; continuing with other adapters";
        com.google.android.gms.c.sz.c(r1, r0);	 Catch:{ all -> 0x00a7 }
        r0 = com.google.android.gms.ads.internal.v.k();
        r0 = r0.a();
        r0 = r0 - r10;
        r0 = r6 - r0;
        r6 = 0;
        r0 = java.lang.Math.max(r0, r6);
        goto L_0x007e;
    L_0x00a7:
        r0 = move-exception;
        r1 = com.google.android.gms.ads.internal.v.k();
        r2 = r1.a();
        r2 = r2 - r10;
        r2 = r6 - r2;
        r4 = 0;
        java.lang.Math.max(r2, r4);
        throw r0;
    L_0x00b9:
        r15.a(r3);
        if (r2 != 0) goto L_0x000e;
    L_0x00be:
        r2 = new com.google.android.gms.c.mj;
        r0 = 1;
        r2.<init>(r0);
        goto L_0x000e;
    L_0x00c6:
        r0 = move-exception;
        goto L_0x0090;
    L_0x00c8:
        r0 = move-exception;
        goto L_0x0090;
    L_0x00ca:
        r0 = move-exception;
        goto L_0x0090;
    L_0x00cc:
        r0 = r2;
        r1 = r3;
        r2 = r4;
        goto L_0x0068;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.ml.c(java.util.List):com.google.android.gms.c.mj");
    }

    public mj a(List<me> list) {
        sz.b("Starting mediation.");
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        List arrayList = new ArrayList();
        for (me meVar : list) {
            String str = "Trying mediation network: ";
            String valueOf = String.valueOf(meVar.b);
            sz.d(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            for (String miVar : meVar.c) {
                final mi miVar2 = new mi(this.c, miVar, this.b, this.d, meVar, this.a.c, this.a.d, this.a.k, this.e, this.l, this.a.z, this.a.n);
                th a = si.a(newCachedThreadPool, new Callable<mj>() {
                    /* renamed from: a */
                    public mj call() {
                        synchronized (ml.this.i) {
                            if (ml.this.j) {
                                return null;
                            }
                            return miVar2.a(ml.this.f, ml.this.g);
                        }
                    }
                });
                this.k.put(a, miVar2);
                arrayList.add(a);
            }
        }
        switch (this.h) {
            case 2:
                return c(arrayList);
            default:
                return b(arrayList);
        }
    }

    public void a() {
        synchronized (this.i) {
            this.j = true;
            for (mi a : this.k.values()) {
                a.a();
            }
        }
    }

    public List<mj> b() {
        return this.m;
    }
}
