package com.google.android.gms.c;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.common.internal.n.b;
import com.google.android.gms.common.internal.n.c;

@pa
public class gh {
    private final Runnable a = new Runnable() {
        public void run() {
            gh.this.c();
        }
    };
    private final Object b = new Object();
    @Nullable
    private gk c;
    @Nullable
    private Context d;
    @Nullable
    private go e;

    /* JADX WARNING: Missing block: B:14:?, code skipped:
            return;
     */
    private void b() {
        /*
        r3 = this;
        r1 = r3.b;
        monitor-enter(r1);
        r0 = r3.d;	 Catch:{ all -> 0x0024 }
        if (r0 == 0) goto L_0x000b;
    L_0x0007:
        r0 = r3.c;	 Catch:{ all -> 0x0024 }
        if (r0 == 0) goto L_0x000d;
    L_0x000b:
        monitor-exit(r1);	 Catch:{ all -> 0x0024 }
    L_0x000c:
        return;
    L_0x000d:
        r0 = new com.google.android.gms.c.gh$3;	 Catch:{ all -> 0x0024 }
        r0.<init>();	 Catch:{ all -> 0x0024 }
        r2 = new com.google.android.gms.c.gh$4;	 Catch:{ all -> 0x0024 }
        r2.<init>();	 Catch:{ all -> 0x0024 }
        r0 = r3.a(r0, r2);	 Catch:{ all -> 0x0024 }
        r3.c = r0;	 Catch:{ all -> 0x0024 }
        r0 = r3.c;	 Catch:{ all -> 0x0024 }
        r0.n();	 Catch:{ all -> 0x0024 }
        monitor-exit(r1);	 Catch:{ all -> 0x0024 }
        goto L_0x000c;
    L_0x0024:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0024 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.gh.b():void");
    }

    private void c() {
        synchronized (this.b) {
            if (this.c == null) {
                return;
            }
            if (this.c.b() || this.c.c()) {
                this.c.a();
            }
            this.c = null;
            this.e = null;
            Binder.flushPendingCommands();
            v.u().b();
        }
    }

    public gi a(gl glVar) {
        gi giVar;
        synchronized (this.b) {
            if (this.e == null) {
                giVar = new gi();
            } else {
                try {
                    giVar = this.e.a(glVar);
                } catch (RemoteException e) {
                    sz.b("Unable to call into cache service.", e);
                    giVar = new gi();
                }
            }
        }
        return giVar;
    }

    /* Access modifiers changed, original: protected */
    public gk a(b bVar, c cVar) {
        return new gk(this.d, v.u().a(), bVar, cVar);
    }

    public void a() {
        if (((Boolean) is.cW.c()).booleanValue()) {
            synchronized (this.b) {
                b();
                v.e();
                sj.a.removeCallbacks(this.a);
                v.e();
                sj.a.postDelayed(this.a, ((Long) is.cX.c()).longValue());
            }
        }
    }

    /* JADX WARNING: Missing block: B:22:?, code skipped:
            return;
     */
    public void a(android.content.Context r3) {
        /*
        r2 = this;
        if (r3 != 0) goto L_0x0003;
    L_0x0002:
        return;
    L_0x0003:
        r1 = r2.b;
        monitor-enter(r1);
        r0 = r2.d;	 Catch:{ all -> 0x000c }
        if (r0 == 0) goto L_0x000f;
    L_0x000a:
        monitor-exit(r1);	 Catch:{ all -> 0x000c }
        goto L_0x0002;
    L_0x000c:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x000c }
        throw r0;
    L_0x000f:
        r0 = r3.getApplicationContext();	 Catch:{ all -> 0x000c }
        r2.d = r0;	 Catch:{ all -> 0x000c }
        r0 = com.google.android.gms.c.is.cV;	 Catch:{ all -> 0x000c }
        r0 = r0.c();	 Catch:{ all -> 0x000c }
        r0 = (java.lang.Boolean) r0;	 Catch:{ all -> 0x000c }
        r0 = r0.booleanValue();	 Catch:{ all -> 0x000c }
        if (r0 == 0) goto L_0x0028;
    L_0x0023:
        r2.b();	 Catch:{ all -> 0x000c }
    L_0x0026:
        monitor-exit(r1);	 Catch:{ all -> 0x000c }
        goto L_0x0002;
    L_0x0028:
        r0 = com.google.android.gms.c.is.cU;	 Catch:{ all -> 0x000c }
        r0 = r0.c();	 Catch:{ all -> 0x000c }
        r0 = (java.lang.Boolean) r0;	 Catch:{ all -> 0x000c }
        r0 = r0.booleanValue();	 Catch:{ all -> 0x000c }
        if (r0 == 0) goto L_0x0026;
    L_0x0036:
        r0 = new com.google.android.gms.c.gh$2;	 Catch:{ all -> 0x000c }
        r0.<init>();	 Catch:{ all -> 0x000c }
        r2.a(r0);	 Catch:{ all -> 0x000c }
        goto L_0x0026;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.gh.a(android.content.Context):void");
    }

    /* Access modifiers changed, original: protected */
    public void a(fx.b bVar) {
        v.h().a(bVar);
    }
}
