package com.google.android.gms.c;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.c;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.d.d;
import com.google.android.gms.d.e;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public class p implements Callback {
    public static final Status a = new Status(4, "Sign-out occurred while this API call was in progress.");
    private static final Status b = new Status(4, "The user must be signed in to make this API call.");
    private static final Object f = new Object();
    private static p g;
    private long c = 5000;
    private long d = 120000;
    private long e = 10000;
    private final Context h;
    private final c i;
    private int j = -1;
    private final AtomicInteger k = new AtomicInteger(1);
    private final AtomicInteger l = new AtomicInteger(0);
    private final Map<vc<?>, a<?>> m = new ConcurrentHashMap(5, 0.75f, 1);
    private g n = null;
    private final Set<vc<?>> o = new com.google.android.gms.common.util.a();
    private final Set<vc<?>> p = new com.google.android.gms.common.util.a();
    private final Handler q;

    public class a<O extends com.google.android.gms.common.api.a.a> implements vj, com.google.android.gms.common.api.GoogleApiClient.b, GoogleApiClient.c {
        private final Queue<va> b = new LinkedList();
        private final f c;
        private final com.google.android.gms.common.api.a.c d;
        private final vc<O> e;
        private final f f;
        private final Set<ve> g = new HashSet();
        private final Map<com.google.android.gms.c.y.b<?>, ad> h = new HashMap();
        private final int i;
        private final ah j;
        private boolean k;
        private com.google.android.gms.common.a l = null;

        @WorkerThread
        public a(m<O> mVar) {
            this.c = mVar.a(p.this.q.getLooper(), this);
            if (this.c instanceof h) {
                this.d = ((h) this.c).k();
            } else {
                this.d = this.c;
            }
            this.e = mVar.a();
            this.f = new f();
            this.i = mVar.b();
            if (this.c.d()) {
                this.j = mVar.a(p.this.h, p.this.q);
            } else {
                this.j = null;
            }
        }

        @WorkerThread
        private void b(va vaVar) {
            vaVar.a(this.f, k());
            try {
                vaVar.a(this);
            } catch (DeadObjectException e) {
                a(1);
                this.c.a();
            }
        }

        @WorkerThread
        private void c(com.google.android.gms.common.a aVar) {
            for (ve a : this.g) {
                a.a(this.e, aVar);
            }
            this.g.clear();
        }

        @WorkerThread
        private void m() {
            d();
            c(com.google.android.gms.common.a.a);
            p();
            Iterator it = this.h.values().iterator();
            while (it.hasNext()) {
                it.next();
                try {
                    e eVar = new e();
                } catch (DeadObjectException e) {
                    a(1);
                    this.c.a();
                } catch (RemoteException e2) {
                }
            }
            o();
            q();
        }

        @WorkerThread
        private void n() {
            d();
            this.k = true;
            this.f.c();
            p.this.q.sendMessageDelayed(Message.obtain(p.this.q, 7, this.e), p.this.c);
            p.this.q.sendMessageDelayed(Message.obtain(p.this.q, 9, this.e), p.this.d);
            p.this.j = -1;
        }

        @WorkerThread
        private void o() {
            while (this.c.b() && !this.b.isEmpty()) {
                b((va) this.b.remove());
            }
        }

        @WorkerThread
        private void p() {
            if (this.k) {
                p.this.q.removeMessages(9, this.e);
                p.this.q.removeMessages(7, this.e);
                this.k = false;
            }
        }

        private void q() {
            p.this.q.removeMessages(10, this.e);
            p.this.q.sendMessageDelayed(p.this.q.obtainMessage(10, this.e), p.this.e);
        }

        @WorkerThread
        public void a() {
            com.google.android.gms.common.internal.c.a(p.this.q);
            a(p.a);
            this.f.b();
            for (com.google.android.gms.c.y.b cVar : this.h.keySet()) {
                a(new va.c(cVar, new e()));
            }
            this.c.a();
        }

        public void a(int i) {
            if (Looper.myLooper() == p.this.q.getLooper()) {
                n();
            } else {
                p.this.q.post(new Runnable() {
                    public void run() {
                        a.this.n();
                    }
                });
            }
        }

        public void a(@Nullable Bundle bundle) {
            if (Looper.myLooper() == p.this.q.getLooper()) {
                m();
            } else {
                p.this.q.post(new Runnable() {
                    public void run() {
                        a.this.m();
                    }
                });
            }
        }

        @WorkerThread
        public void a(va vaVar) {
            com.google.android.gms.common.internal.c.a(p.this.q);
            if (this.c.b()) {
                b(vaVar);
                q();
                return;
            }
            this.b.add(vaVar);
            if (this.l == null || !this.l.a()) {
                i();
            } else {
                a(this.l);
            }
        }

        @WorkerThread
        public void a(ve veVar) {
            com.google.android.gms.common.internal.c.a(p.this.q);
            this.g.add(veVar);
        }

        /* JADX WARNING: Missing block: B:25:0x006c, code skipped:
            if (r5.a.a(r6, r5.i) != false) goto L_?;
     */
        /* JADX WARNING: Missing block: B:27:0x0074, code skipped:
            if (r6.c() != 18) goto L_0x0079;
     */
        /* JADX WARNING: Missing block: B:28:0x0076, code skipped:
            r5.k = true;
     */
        /* JADX WARNING: Missing block: B:30:0x007b, code skipped:
            if (r5.k == false) goto L_0x009a;
     */
        /* JADX WARNING: Missing block: B:31:0x007d, code skipped:
            com.google.android.gms.c.p.a(r5.a).sendMessageDelayed(android.os.Message.obtain(com.google.android.gms.c.p.a(r5.a), 7, r5.e), com.google.android.gms.c.p.c(r5.a));
     */
        /* JADX WARNING: Missing block: B:32:0x009a, code skipped:
            r2 = java.lang.String.valueOf(r5.e.a());
            a(new com.google.android.gms.common.api.Status(17, new java.lang.StringBuilder(java.lang.String.valueOf(r2).length() + 38).append("API: ").append(r2).append(" is not available on this device.").toString()));
     */
        /* JADX WARNING: Missing block: B:36:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:37:?, code skipped:
            return;
     */
        /* JADX WARNING: Missing block: B:38:?, code skipped:
            return;
     */
        @android.support.annotation.WorkerThread
        public void a(@android.support.annotation.NonNull com.google.android.gms.common.a r6) {
            /*
            r5 = this;
            r0 = com.google.android.gms.c.p.this;
            r0 = r0.q;
            com.google.android.gms.common.internal.c.a(r0);
            r0 = r5.j;
            if (r0 == 0) goto L_0x0012;
        L_0x000d:
            r0 = r5.j;
            r0.a();
        L_0x0012:
            r5.d();
            r0 = com.google.android.gms.c.p.this;
            r1 = -1;
            r0.j = r1;
            r5.c(r6);
            r0 = r6.c();
            r1 = 4;
            if (r0 != r1) goto L_0x002d;
        L_0x0025:
            r0 = com.google.android.gms.c.p.b;
            r5.a(r0);
        L_0x002c:
            return;
        L_0x002d:
            r0 = r5.b;
            r0 = r0.isEmpty();
            if (r0 == 0) goto L_0x0038;
        L_0x0035:
            r5.l = r6;
            goto L_0x002c;
        L_0x0038:
            r1 = com.google.android.gms.c.p.f;
            monitor-enter(r1);
            r0 = com.google.android.gms.c.p.this;	 Catch:{ all -> 0x0060 }
            r0 = r0.n;	 Catch:{ all -> 0x0060 }
            if (r0 == 0) goto L_0x0063;
        L_0x0045:
            r0 = com.google.android.gms.c.p.this;	 Catch:{ all -> 0x0060 }
            r0 = r0.o;	 Catch:{ all -> 0x0060 }
            r2 = r5.e;	 Catch:{ all -> 0x0060 }
            r0 = r0.contains(r2);	 Catch:{ all -> 0x0060 }
            if (r0 == 0) goto L_0x0063;
        L_0x0053:
            r0 = com.google.android.gms.c.p.this;	 Catch:{ all -> 0x0060 }
            r0 = r0.n;	 Catch:{ all -> 0x0060 }
            r2 = r5.i;	 Catch:{ all -> 0x0060 }
            r0.b(r6, r2);	 Catch:{ all -> 0x0060 }
            monitor-exit(r1);	 Catch:{ all -> 0x0060 }
            goto L_0x002c;
        L_0x0060:
            r0 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x0060 }
            throw r0;
        L_0x0063:
            monitor-exit(r1);	 Catch:{ all -> 0x0060 }
            r0 = com.google.android.gms.c.p.this;
            r1 = r5.i;
            r0 = r0.a(r6, r1);
            if (r0 != 0) goto L_0x002c;
        L_0x006e:
            r0 = r6.c();
            r1 = 18;
            if (r0 != r1) goto L_0x0079;
        L_0x0076:
            r0 = 1;
            r5.k = r0;
        L_0x0079:
            r0 = r5.k;
            if (r0 == 0) goto L_0x009a;
        L_0x007d:
            r0 = com.google.android.gms.c.p.this;
            r0 = r0.q;
            r1 = com.google.android.gms.c.p.this;
            r1 = r1.q;
            r2 = 7;
            r3 = r5.e;
            r1 = android.os.Message.obtain(r1, r2, r3);
            r2 = com.google.android.gms.c.p.this;
            r2 = r2.c;
            r0.sendMessageDelayed(r1, r2);
            goto L_0x002c;
        L_0x009a:
            r0 = new com.google.android.gms.common.api.Status;
            r1 = 17;
            r2 = r5.e;
            r2 = r2.a();
            r2 = java.lang.String.valueOf(r2);
            r3 = new java.lang.StringBuilder;
            r4 = java.lang.String.valueOf(r2);
            r4 = r4.length();
            r4 = r4 + 38;
            r3.<init>(r4);
            r4 = "API: ";
            r3 = r3.append(r4);
            r2 = r3.append(r2);
            r3 = " is not available on this device.";
            r2 = r2.append(r3);
            r2 = r2.toString();
            r0.<init>(r1, r2);
            r5.a(r0);
            goto L_0x002c;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.p$a.a(com.google.android.gms.common.a):void");
        }

        public void a(final com.google.android.gms.common.a aVar, com.google.android.gms.common.api.a<?> aVar2, int i) {
            if (Looper.myLooper() == p.this.q.getLooper()) {
                a(aVar);
            } else {
                p.this.q.post(new Runnable() {
                    public void run() {
                        a.this.a(aVar);
                    }
                });
            }
        }

        @WorkerThread
        public void a(Status status) {
            com.google.android.gms.common.internal.c.a(p.this.q);
            for (va a : this.b) {
                a.a(status);
            }
            this.b.clear();
        }

        public f b() {
            return this.c;
        }

        @WorkerThread
        public void b(@NonNull com.google.android.gms.common.a aVar) {
            com.google.android.gms.common.internal.c.a(p.this.q);
            this.c.a();
            a(aVar);
        }

        public Map<com.google.android.gms.c.y.b<?>, ad> c() {
            return this.h;
        }

        @WorkerThread
        public void d() {
            com.google.android.gms.common.internal.c.a(p.this.q);
            this.l = null;
        }

        @WorkerThread
        public com.google.android.gms.common.a e() {
            com.google.android.gms.common.internal.c.a(p.this.q);
            return this.l;
        }

        @WorkerThread
        public void f() {
            com.google.android.gms.common.internal.c.a(p.this.q);
            if (this.k) {
                i();
            }
        }

        @WorkerThread
        public void g() {
            com.google.android.gms.common.internal.c.a(p.this.q);
            if (this.k) {
                p();
                a(p.this.i.a(p.this.h) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                this.c.a();
            }
        }

        @WorkerThread
        public void h() {
            com.google.android.gms.common.internal.c.a(p.this.q);
            if (!this.c.b() || this.h.size() != 0) {
                return;
            }
            if (this.f.a()) {
                q();
            } else {
                this.c.a();
            }
        }

        @WorkerThread
        public void i() {
            com.google.android.gms.common.internal.c.a(p.this.q);
            if (!this.c.b() && !this.c.c()) {
                if (this.c.e() && p.this.j != 0) {
                    p.this.j = p.this.i.a(p.this.h);
                    if (p.this.j != 0) {
                        a(new com.google.android.gms.common.a(p.this.j, null));
                        return;
                    }
                }
                com.google.android.gms.c.ah.a bVar = new b(this.c, this.e);
                if (this.c.d()) {
                    this.j.a(bVar);
                }
                this.c.a(bVar);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public boolean j() {
            return this.c.b();
        }

        public boolean k() {
            return this.c.d();
        }

        public int l() {
            return this.i;
        }
    }

    private class b implements com.google.android.gms.c.ah.a, n.f {
        private final f b;
        private final vc<?> c;
        private y d = null;
        private Set<Scope> e = null;
        private boolean f = false;

        public b(f fVar, vc<?> vcVar) {
            this.b = fVar;
            this.c = vcVar;
        }

        @WorkerThread
        private void a() {
            if (this.f && this.d != null) {
                this.b.a(this.d, this.e);
            }
        }

        public void a(@NonNull final com.google.android.gms.common.a aVar) {
            p.this.q.post(new Runnable() {
                public void run() {
                    if (aVar.b()) {
                        b.this.f = true;
                        if (b.this.b.d()) {
                            b.this.a();
                            return;
                        } else {
                            b.this.b.a(null, Collections.emptySet());
                            return;
                        }
                    }
                    ((a) p.this.m.get(b.this.c)).a(aVar);
                }
            });
        }

        @WorkerThread
        public void a(y yVar, Set<Scope> set) {
            if (yVar == null || set == null) {
                Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                b(new com.google.android.gms.common.a(4));
                return;
            }
            this.d = yVar;
            this.e = set;
            a();
        }

        @WorkerThread
        public void b(com.google.android.gms.common.a aVar) {
            ((a) p.this.m.get(this.c)).b(aVar);
        }
    }

    private p(Context context, Looper looper, c cVar) {
        this.h = context;
        this.q = new Handler(looper, this);
        this.i = cVar;
    }

    public static p a() {
        p pVar;
        synchronized (f) {
            com.google.android.gms.common.internal.c.a(g, (Object) "Must guarantee manager is non-null before using getInstance");
            pVar = g;
        }
        return pVar;
    }

    public static p a(Context context) {
        p pVar;
        synchronized (f) {
            if (g == null) {
                g = new p(context.getApplicationContext(), f(), c.a());
            }
            pVar = g;
        }
        return pVar;
    }

    @WorkerThread
    private void a(int i, com.google.android.gms.common.a aVar) {
        for (a aVar2 : this.m.values()) {
            if (aVar2.l() == i) {
                break;
            }
        }
        a aVar22 = null;
        if (aVar22 != null) {
            String valueOf = String.valueOf(this.i.c(aVar.c()));
            String valueOf2 = String.valueOf(aVar.e());
            aVar22.a(new Status(17, new StringBuilder((String.valueOf(valueOf).length() + 69) + String.valueOf(valueOf2).length()).append("Error resolution was canceled by the user, original error message: ").append(valueOf).append(": ").append(valueOf2).toString()));
            return;
        }
        Log.wtf("GoogleApiManager", "Could not find API instance " + i + " while trying to fail enqueued calls.", new Exception());
    }

    @WorkerThread
    private void a(ab abVar) {
        a aVar = (a) this.m.get(abVar.c.a());
        if (aVar == null) {
            b(abVar.c);
            aVar = (a) this.m.get(abVar.c.a());
        }
        if (!aVar.k() || this.l.get() == abVar.b) {
            aVar.a(abVar.a);
            return;
        }
        abVar.a.a(a);
        aVar.a();
    }

    @WorkerThread
    private void a(ve veVar) {
        for (vc vcVar : veVar.a()) {
            a aVar = (a) this.m.get(vcVar);
            if (aVar == null) {
                veVar.a(vcVar, new com.google.android.gms.common.a(13));
                return;
            } else if (aVar.j()) {
                veVar.a(vcVar, com.google.android.gms.common.a.a);
            } else if (aVar.e() != null) {
                veVar.a(vcVar, aVar.e());
            } else {
                aVar.a(veVar);
            }
        }
    }

    @WorkerThread
    private void b(m<?> mVar) {
        vc a = mVar.a();
        if (!this.m.containsKey(a)) {
            this.m.put(a, new a(mVar));
        }
        a aVar = (a) this.m.get(a);
        if (aVar.k()) {
            this.p.add(a);
        }
        aVar.i();
    }

    private static Looper f() {
        HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
        handlerThread.start();
        return handlerThread.getLooper();
    }

    @WorkerThread
    private void g() {
        for (a aVar : this.m.values()) {
            aVar.d();
            aVar.i();
        }
    }

    @WorkerThread
    private void h() {
        for (vc remove : this.p) {
            ((a) this.m.remove(remove)).a();
        }
        this.p.clear();
    }

    public d<Void> a(Iterable<m<?>> iterable) {
        ve veVar = new ve(iterable);
        for (m a : iterable) {
            a aVar = (a) this.m.get(a.a());
            if (aVar != null) {
                if (!aVar.j()) {
                }
            }
            this.q.sendMessage(this.q.obtainMessage(1, veVar));
            return veVar.b();
        }
        veVar.c();
        return veVar.b();
    }

    public void a(@NonNull g gVar) {
        synchronized (f) {
            if (this.n != gVar) {
                this.n = gVar;
                this.o.clear();
                this.o.addAll(gVar.d());
            }
        }
    }

    public void a(m<?> mVar) {
        this.q.sendMessage(this.q.obtainMessage(5, mVar));
    }

    public <O extends com.google.android.gms.common.api.a.a> void a(m<O> mVar, int i, com.google.android.gms.c.vf.a<? extends com.google.android.gms.common.api.f, com.google.android.gms.common.api.a.c> aVar) {
        this.q.sendMessage(this.q.obtainMessage(3, new ab(new com.google.android.gms.c.va.b(i, aVar), this.l.get(), mVar)));
    }

    /* Access modifiers changed, original: 0000 */
    public boolean a(com.google.android.gms.common.a aVar, int i) {
        if (!aVar.a() && !this.i.a(aVar.c())) {
            return false;
        }
        this.i.a(this.h, aVar, i);
        return true;
    }

    public int b() {
        return this.k.getAndIncrement();
    }

    /* Access modifiers changed, original: 0000 */
    public void b(@NonNull g gVar) {
        synchronized (f) {
            if (this.n == gVar) {
                this.n = null;
                this.o.clear();
            }
        }
    }

    public void b(com.google.android.gms.common.a aVar, int i) {
        if (!a(aVar, i)) {
            this.q.sendMessage(this.q.obtainMessage(4, i, 0, aVar));
        }
    }

    public void c() {
        this.q.sendMessage(this.q.obtainMessage(2));
    }

    @WorkerThread
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 1:
                a((ve) message.obj);
                break;
            case 2:
                g();
                break;
            case 3:
            case 6:
            case 11:
                a((ab) message.obj);
                break;
            case 4:
                a(message.arg1, (com.google.android.gms.common.a) message.obj);
                break;
            case 5:
                b((m) message.obj);
                break;
            case 7:
                if (this.m.containsKey(message.obj)) {
                    ((a) this.m.get(message.obj)).f();
                    break;
                }
                break;
            case 8:
                h();
                break;
            case 9:
                if (this.m.containsKey(message.obj)) {
                    ((a) this.m.get(message.obj)).g();
                    break;
                }
                break;
            case 10:
                if (this.m.containsKey(message.obj)) {
                    ((a) this.m.get(message.obj)).h();
                    break;
                }
                break;
            default:
                Log.w("GoogleApiManager", "Unknown message id: " + message.what);
                return false;
        }
        return true;
    }
}
