package com.google.android.gms.c;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.internal.z;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

public abstract class vh<R extends f> extends c<R> {
    static final ThreadLocal<Boolean> a = new ThreadLocal<Boolean>() {
        /* Access modifiers changed, original: protected */
        /* renamed from: a */
        public Boolean initialValue() {
            return Boolean.valueOf(false);
        }
    };
    protected final a<R> b;
    protected final WeakReference<GoogleApiClient> c;
    private final Object d;
    private final CountDownLatch e;
    private final ArrayList<com.google.android.gms.common.api.c.a> f;
    private g<? super R> g;
    private final AtomicReference<b> h;
    private R i;
    private b j;
    private volatile boolean k;
    private boolean l;
    private boolean m;
    private z n;
    private volatile al<R> o;
    private boolean p;

    public static class a<R extends f> extends Handler {
        public a() {
            this(Looper.getMainLooper());
        }

        public a(Looper looper) {
            super(looper);
        }

        public void a() {
            removeMessages(2);
        }

        public void a(g<? super R> gVar, R r) {
            sendMessage(obtainMessage(1, new Pair(gVar, r)));
        }

        /* Access modifiers changed, original: protected */
        public void b(g<? super R> gVar, R r) {
            try {
                gVar.a(r);
            } catch (RuntimeException e) {
                vh.b((f) r);
                throw e;
            }
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Pair pair = (Pair) message.obj;
                    b((g) pair.first, (f) pair.second);
                    return;
                case 2:
                    ((vh) message.obj).d(Status.d);
                    return;
                default:
                    Log.wtf("BasePendingResult", "Don't know how to handle message: " + message.what, new Exception());
                    return;
            }
        }
    }

    private final class b {
        private b() {
        }

        /* synthetic */ b(vh vhVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        /* Access modifiers changed, original: protected */
        public void finalize() {
            vh.b(vh.this.i);
            super.finalize();
        }
    }

    @Deprecated
    vh() {
        this.d = new Object();
        this.e = new CountDownLatch(1);
        this.f = new ArrayList();
        this.h = new AtomicReference();
        this.p = false;
        this.b = new a(Looper.getMainLooper());
        this.c = new WeakReference(null);
    }

    @Deprecated
    protected vh(Looper looper) {
        this.d = new Object();
        this.e = new CountDownLatch(1);
        this.f = new ArrayList();
        this.h = new AtomicReference();
        this.p = false;
        this.b = new a(looper);
        this.c = new WeakReference(null);
    }

    protected vh(GoogleApiClient googleApiClient) {
        this.d = new Object();
        this.e = new CountDownLatch(1);
        this.f = new ArrayList();
        this.h = new AtomicReference();
        this.p = false;
        this.b = new a(googleApiClient != null ? googleApiClient.a() : Looper.getMainLooper());
        this.c = new WeakReference(googleApiClient);
    }

    private void b() {
        b bVar = (b) this.h.getAndSet(null);
        if (bVar != null) {
            bVar.a(this);
        }
    }

    public static void b(f fVar) {
        if (fVar instanceof e) {
            try {
                ((e) fVar).a();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(fVar);
                Log.w("BasePendingResult", new StringBuilder(String.valueOf(valueOf).length() + 18).append("Unable to release ").append(valueOf).toString(), e);
            }
        }
    }

    private R c() {
        f fVar;
        boolean z = true;
        synchronized (this.d) {
            if (this.k) {
                z = false;
            }
            com.google.android.gms.common.internal.c.a(z, (Object) "Result has already been consumed.");
            com.google.android.gms.common.internal.c.a(d(), (Object) "Result is not ready.");
            fVar = this.i;
            this.i = null;
            this.g = null;
            this.k = true;
        }
        b();
        return fVar;
    }

    private void c(R r) {
        this.i = r;
        this.n = null;
        this.e.countDown();
        Status a = this.i.a();
        if (this.l) {
            this.g = null;
        } else if (this.g != null) {
            this.b.a();
            this.b.a(this.g, c());
        } else if (this.i instanceof e) {
            this.j = new b(this, null);
        }
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((com.google.android.gms.common.api.c.a) it.next()).a(a);
        }
        this.f.clear();
    }

    public Integer a() {
        return null;
    }

    public void a(b bVar) {
        this.h.set(bVar);
    }

    public final void a(com.google.android.gms.common.api.c.a aVar) {
        boolean z = true;
        com.google.android.gms.common.internal.c.a(!this.k, (Object) "Result has already been consumed.");
        if (aVar == null) {
            z = false;
        }
        com.google.android.gms.common.internal.c.b(z, "Callback cannot be null.");
        synchronized (this.d) {
            if (d()) {
                aVar.a(this.i.a());
            } else {
                this.f.add(aVar);
            }
        }
    }

    public final void a(R r) {
        boolean z = true;
        synchronized (this.d) {
            if (this.m || this.l) {
                b((f) r);
                return;
            }
            if (d()) {
            }
            com.google.android.gms.common.internal.c.a(!d(), (Object) "Results have already been set");
            if (this.k) {
                z = false;
            }
            com.google.android.gms.common.internal.c.a(z, (Object) "Result has already been consumed");
            c(r);
        }
    }

    /* JADX WARNING: Missing block: B:30:?, code skipped:
            return;
     */
    public final void a(com.google.android.gms.common.api.g<? super R> r6) {
        /*
        r5 = this;
        r0 = 1;
        r1 = 0;
        r3 = r5.d;
        monitor-enter(r3);
        if (r6 != 0) goto L_0x000c;
    L_0x0007:
        r0 = 0;
        r5.g = r0;	 Catch:{ all -> 0x0027 }
        monitor-exit(r3);	 Catch:{ all -> 0x0027 }
    L_0x000b:
        return;
    L_0x000c:
        r2 = r5.k;	 Catch:{ all -> 0x0027 }
        if (r2 != 0) goto L_0x002a;
    L_0x0010:
        r2 = r0;
    L_0x0011:
        r4 = "Result has already been consumed.";
        com.google.android.gms.common.internal.c.a(r2, r4);	 Catch:{ all -> 0x0027 }
        r2 = r5.o;	 Catch:{ all -> 0x0027 }
        if (r2 != 0) goto L_0x002c;
    L_0x001a:
        r1 = "Cannot set callbacks if then() has been called.";
        com.google.android.gms.common.internal.c.a(r0, r1);	 Catch:{ all -> 0x0027 }
        r0 = r5.g();	 Catch:{ all -> 0x0027 }
        if (r0 == 0) goto L_0x002e;
    L_0x0025:
        monitor-exit(r3);	 Catch:{ all -> 0x0027 }
        goto L_0x000b;
    L_0x0027:
        r0 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x0027 }
        throw r0;
    L_0x002a:
        r2 = r1;
        goto L_0x0011;
    L_0x002c:
        r0 = r1;
        goto L_0x001a;
    L_0x002e:
        r0 = r5.d();	 Catch:{ all -> 0x0027 }
        if (r0 == 0) goto L_0x003f;
    L_0x0034:
        r0 = r5.b;	 Catch:{ all -> 0x0027 }
        r1 = r5.c();	 Catch:{ all -> 0x0027 }
        r0.a(r6, r1);	 Catch:{ all -> 0x0027 }
    L_0x003d:
        monitor-exit(r3);	 Catch:{ all -> 0x0027 }
        goto L_0x000b;
    L_0x003f:
        r5.g = r6;	 Catch:{ all -> 0x0027 }
        goto L_0x003d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.vh.a(com.google.android.gms.common.api.g):void");
    }

    @NonNull
    public abstract R b(Status status);

    public final void d(Status status) {
        synchronized (this.d) {
            if (!d()) {
                a(b(status));
                this.m = true;
            }
        }
    }

    public final boolean d() {
        return this.e.getCount() == 0;
    }

    /* JADX WARNING: Missing block: B:20:?, code skipped:
            return;
     */
    public void e() {
        /*
        r2 = this;
        r1 = r2.d;
        monitor-enter(r1);
        r0 = r2.l;	 Catch:{ all -> 0x0029 }
        if (r0 != 0) goto L_0x000b;
    L_0x0007:
        r0 = r2.k;	 Catch:{ all -> 0x0029 }
        if (r0 == 0) goto L_0x000d;
    L_0x000b:
        monitor-exit(r1);	 Catch:{ all -> 0x0029 }
    L_0x000c:
        return;
    L_0x000d:
        r0 = r2.n;	 Catch:{ all -> 0x0029 }
        if (r0 == 0) goto L_0x0016;
    L_0x0011:
        r0 = r2.n;	 Catch:{ RemoteException -> 0x002c }
        r0.a();	 Catch:{ RemoteException -> 0x002c }
    L_0x0016:
        r0 = r2.i;	 Catch:{ all -> 0x0029 }
        b(r0);	 Catch:{ all -> 0x0029 }
        r0 = 1;
        r2.l = r0;	 Catch:{ all -> 0x0029 }
        r0 = com.google.android.gms.common.api.Status.e;	 Catch:{ all -> 0x0029 }
        r0 = r2.b(r0);	 Catch:{ all -> 0x0029 }
        r2.c(r0);	 Catch:{ all -> 0x0029 }
        monitor-exit(r1);	 Catch:{ all -> 0x0029 }
        goto L_0x000c;
    L_0x0029:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0029 }
        throw r0;
    L_0x002c:
        r0 = move-exception;
        goto L_0x0016;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.vh.e():void");
    }

    public boolean f() {
        boolean g;
        synchronized (this.d) {
            if (((GoogleApiClient) this.c.get()) == null || !this.p) {
                e();
            }
            g = g();
        }
        return g;
    }

    public boolean g() {
        boolean z;
        synchronized (this.d) {
            z = this.l;
        }
        return z;
    }

    public void h() {
        a(null);
    }

    public void i() {
        boolean z = this.p || ((Boolean) a.get()).booleanValue();
        this.p = z;
    }
}
