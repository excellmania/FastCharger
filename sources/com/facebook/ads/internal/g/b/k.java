package com.facebook.ads.internal.g.b;

import android.util.Log;
import java.lang.Thread.State;
import java.util.concurrent.atomic.AtomicInteger;

class k {
    private final n a;
    private final a b;
    private final Object c = new Object();
    private final Object d = new Object();
    private final AtomicInteger e;
    private volatile Thread f;
    private volatile boolean g;
    private volatile int h = -1;

    private class a implements Runnable {
        private a() {
        }

        public void run() {
            k.this.e();
        }
    }

    public k(n nVar, a aVar) {
        this.a = (n) j.a(nVar);
        this.b = (a) j.a(aVar);
        this.e = new AtomicInteger();
    }

    private void b() {
        int i = this.e.get();
        if (i >= 1) {
            this.e.set(0);
            throw new l("Error reading source " + i + " times");
        }
    }

    private void b(long j, long j2) {
        a(j, j2);
        synchronized (this.c) {
            this.c.notifyAll();
        }
    }

    private synchronized void c() {
        Object obj = (this.f == null || this.f.getState() == State.TERMINATED) ? null : 1;
        if (!(this.g || this.b.d() || obj != null)) {
            this.f = new Thread(new a(), "Source reader for " + this.a);
            this.f.start();
        }
    }

    private void d() {
        synchronized (this.c) {
            try {
                this.c.wait(1000);
            } catch (InterruptedException e) {
                throw new l("Waiting source data is interrupted!", e);
            }
        }
    }

    /* JADX WARNING: Missing block: B:18:0x0038, code skipped:
            r1 = r1 + r4;
     */
    /* JADX WARNING: Missing block: B:20:?, code skipped:
            b((long) r1, (long) r2);
     */
    private void e() {
        /*
        r8 = this;
        r3 = -1;
        r1 = 0;
        r0 = r8.b;	 Catch:{ Throwable -> 0x006d, all -> 0x006a }
        r1 = r0.a();	 Catch:{ Throwable -> 0x006d, all -> 0x006a }
        r0 = r8.a;	 Catch:{ Throwable -> 0x006d, all -> 0x006a }
        r0.a(r1);	 Catch:{ Throwable -> 0x006d, all -> 0x006a }
        r0 = r8.a;	 Catch:{ Throwable -> 0x006d, all -> 0x006a }
        r2 = r0.a();	 Catch:{ Throwable -> 0x006d, all -> 0x006a }
        r0 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r0 = new byte[r0];	 Catch:{ Throwable -> 0x003f }
    L_0x0017:
        r4 = r8.a;	 Catch:{ Throwable -> 0x003f }
        r4 = r4.a(r0);	 Catch:{ Throwable -> 0x003f }
        if (r4 == r3) goto L_0x005e;
    L_0x001f:
        r5 = r8.d;	 Catch:{ Throwable -> 0x003f }
        monitor-enter(r5);	 Catch:{ Throwable -> 0x003f }
        r6 = r8.g();	 Catch:{ all -> 0x0051 }
        if (r6 == 0) goto L_0x0032;
    L_0x0028:
        monitor-exit(r5);	 Catch:{ all -> 0x0051 }
        r8.h();
        r0 = (long) r1;
        r2 = (long) r2;
        r8.b(r0, r2);
    L_0x0031:
        return;
    L_0x0032:
        r6 = r8.b;	 Catch:{ all -> 0x0051 }
        r6.a(r0, r4);	 Catch:{ all -> 0x0051 }
        monitor-exit(r5);	 Catch:{ all -> 0x0051 }
        r1 = r1 + r4;
        r4 = (long) r1;
        r6 = (long) r2;
        r8.b(r4, r6);	 Catch:{ Throwable -> 0x003f }
        goto L_0x0017;
    L_0x003f:
        r0 = move-exception;
    L_0x0040:
        r3 = r8.e;	 Catch:{ all -> 0x0054 }
        r3.incrementAndGet();	 Catch:{ all -> 0x0054 }
        r8.a(r0);	 Catch:{ all -> 0x0054 }
        r8.h();
        r0 = (long) r1;
        r2 = (long) r2;
        r8.b(r0, r2);
        goto L_0x0031;
    L_0x0051:
        r0 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x0051 }
        throw r0;	 Catch:{ Throwable -> 0x003f }
    L_0x0054:
        r0 = move-exception;
    L_0x0055:
        r8.h();
        r4 = (long) r1;
        r2 = (long) r2;
        r8.b(r4, r2);
        throw r0;
    L_0x005e:
        r8.f();	 Catch:{ Throwable -> 0x003f }
        r8.h();
        r0 = (long) r1;
        r2 = (long) r2;
        r8.b(r0, r2);
        goto L_0x0031;
    L_0x006a:
        r0 = move-exception;
        r2 = r3;
        goto L_0x0055;
    L_0x006d:
        r0 = move-exception;
        r2 = r3;
        goto L_0x0040;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.internal.g.b.k.e():void");
    }

    private void f() {
        synchronized (this.d) {
            if (!g() && this.b.a() == this.a.a()) {
                this.b.c();
            }
        }
    }

    private boolean g() {
        return Thread.currentThread().isInterrupted() || this.g;
    }

    private void h() {
        try {
            this.a.b();
        } catch (l e) {
            a(new l("Error closing source " + this.a, e));
        }
    }

    public int a(byte[] bArr, long j, int i) {
        m.a(bArr, j, i);
        while (!this.b.d() && ((long) this.b.a()) < ((long) i) + j && !this.g) {
            c();
            d();
            b();
        }
        int a = this.b.a(bArr, j, i);
        if (this.b.d() && this.h != 100) {
            this.h = 100;
            a(100);
        }
        return a;
    }

    public void a() {
        synchronized (this.d) {
            Log.d("ProxyCache", "Shutdown proxy for " + this.a);
            try {
                this.g = true;
                if (this.f != null) {
                    this.f.interrupt();
                }
                this.b.b();
            } catch (l e) {
                a(e);
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(int i) {
    }

    /* Access modifiers changed, original: protected */
    public void a(long j, long j2) {
        Object obj = 1;
        int i = ((j2 > 0 ? 1 : (j2 == 0 ? 0 : -1)) == 0 ? 1 : null) != null ? 100 : (int) ((100 * j) / j2);
        Object obj2 = i != this.h ? 1 : null;
        if (j2 < 0) {
            obj = null;
        }
        if (!(obj == null || obj2 == null)) {
            a(i);
        }
        this.h = i;
    }

    /* Access modifiers changed, original: protected|final */
    public final void a(Throwable th) {
        if (th instanceof i) {
            Log.d("ProxyCache", "ProxyCache is interrupted");
        } else {
            Log.e("ProxyCache", "ProxyCache error", th);
        }
    }
}
