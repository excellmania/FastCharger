package com.google.android.gms.c;

import android.content.SharedPreferences;
import android.os.ConditionVariable;
import android.support.annotation.Nullable;
import java.util.concurrent.Callable;

@pa
public class ir {
    private final Object a = new Object();
    private final ConditionVariable b = new ConditionVariable();
    private volatile boolean c = false;
    @Nullable
    private SharedPreferences d = null;

    public <T> T a(final io<T> ioVar) {
        if (this.b.block(5000)) {
            if (!this.c) {
                synchronized (this.a) {
                    if (!this.c) {
                        Object b = ioVar.b();
                        return b;
                    }
                }
            }
            return sw.a(new Callable<T>() {
                public T call() {
                    return ioVar.a(ir.this.d);
                }
            });
        }
        throw new IllegalStateException("Flags.initialize() was not called!");
    }

    /* JADX WARNING: Missing block: B:26:?, code skipped:
            return;
     */
    public void a(android.content.Context r4) {
        /*
        r3 = this;
        r0 = r3.c;
        if (r0 == 0) goto L_0x0005;
    L_0x0004:
        return;
    L_0x0005:
        r1 = r3.a;
        monitor-enter(r1);
        r0 = r3.c;	 Catch:{ all -> 0x000e }
        if (r0 == 0) goto L_0x0011;
    L_0x000c:
        monitor-exit(r1);	 Catch:{ all -> 0x000e }
        goto L_0x0004;
    L_0x000e:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x000e }
        throw r0;
    L_0x0011:
        r0 = com.google.android.gms.common.m.h(r4);	 Catch:{ all -> 0x0032 }
        if (r0 != 0) goto L_0x001e;
    L_0x0017:
        r0 = r3.b;	 Catch:{ all -> 0x000e }
        r0.open();	 Catch:{ all -> 0x000e }
        monitor-exit(r1);	 Catch:{ all -> 0x000e }
        goto L_0x0004;
    L_0x001e:
        r2 = com.google.android.gms.ads.internal.v.o();	 Catch:{ all -> 0x0032 }
        r0 = r2.a(r0);	 Catch:{ all -> 0x0032 }
        r3.d = r0;	 Catch:{ all -> 0x0032 }
        r0 = 1;
        r3.c = r0;	 Catch:{ all -> 0x0032 }
        r0 = r3.b;	 Catch:{ all -> 0x000e }
        r0.open();	 Catch:{ all -> 0x000e }
        monitor-exit(r1);	 Catch:{ all -> 0x000e }
        goto L_0x0004;
    L_0x0032:
        r0 = move-exception;
        r2 = r3.b;	 Catch:{ all -> 0x000e }
        r2.open();	 Catch:{ all -> 0x000e }
        throw r0;	 Catch:{ all -> 0x000e }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.ir.a(android.content.Context):void");
    }
}
