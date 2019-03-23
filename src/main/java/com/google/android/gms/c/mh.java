package com.google.android.gms.c;

import android.support.annotation.Nullable;
import com.google.android.gms.c.mq.a;

@pa
public final class mh extends a {
    private final Object a = new Object();
    private mj.a b;
    private mg c;

    public void a() {
        synchronized (this.a) {
            if (this.c != null) {
                this.c.y();
            }
        }
    }

    public void a(int i) {
        synchronized (this.a) {
            if (this.b != null) {
                this.b.a(i == 3 ? 1 : 2);
                this.b = null;
            }
        }
    }

    public void a(@Nullable mg mgVar) {
        synchronized (this.a) {
            this.c = mgVar;
        }
    }

    public void a(mj.a aVar) {
        synchronized (this.a) {
            this.b = aVar;
        }
    }

    /* JADX WARNING: Missing block: B:16:?, code skipped:
            return;
     */
    public void a(com.google.android.gms.c.mr r4) {
        /*
        r3 = this;
        r1 = r3.a;
        monitor-enter(r1);
        r0 = r3.b;	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x0012;
    L_0x0007:
        r0 = r3.b;	 Catch:{ all -> 0x001d }
        r2 = 0;
        r0.a(r2, r4);	 Catch:{ all -> 0x001d }
        r0 = 0;
        r3.b = r0;	 Catch:{ all -> 0x001d }
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
    L_0x0011:
        return;
    L_0x0012:
        r0 = r3.c;	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x001b;
    L_0x0016:
        r0 = r3.c;	 Catch:{ all -> 0x001d }
        r0.C();	 Catch:{ all -> 0x001d }
    L_0x001b:
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
        goto L_0x0011;
    L_0x001d:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.mh.a(com.google.android.gms.c.mr):void");
    }

    public void b() {
        synchronized (this.a) {
            if (this.c != null) {
                this.c.z();
            }
        }
    }

    public void c() {
        synchronized (this.a) {
            if (this.c != null) {
                this.c.A();
            }
        }
    }

    public void d() {
        synchronized (this.a) {
            if (this.c != null) {
                this.c.B();
            }
        }
    }

    /* JADX WARNING: Missing block: B:16:?, code skipped:
            return;
     */
    public void e() {
        /*
        r3 = this;
        r1 = r3.a;
        monitor-enter(r1);
        r0 = r3.b;	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x0012;
    L_0x0007:
        r0 = r3.b;	 Catch:{ all -> 0x001d }
        r2 = 0;
        r0.a(r2);	 Catch:{ all -> 0x001d }
        r0 = 0;
        r3.b = r0;	 Catch:{ all -> 0x001d }
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
    L_0x0011:
        return;
    L_0x0012:
        r0 = r3.c;	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x001b;
    L_0x0016:
        r0 = r3.c;	 Catch:{ all -> 0x001d }
        r0.C();	 Catch:{ all -> 0x001d }
    L_0x001b:
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
        goto L_0x0011;
    L_0x001d:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x001d }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.mh.e():void");
    }

    public void f() {
        synchronized (this.a) {
            if (this.c != null) {
                this.c.D();
            }
        }
    }
}
