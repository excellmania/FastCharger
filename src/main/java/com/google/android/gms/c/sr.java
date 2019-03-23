package com.google.android.gms.c;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.c;

@pa
public class sr {
    private HandlerThread a = null;
    private Handler b = null;
    private int c = 0;
    private final Object d = new Object();

    public Looper a() {
        Looper looper;
        synchronized (this.d) {
            if (this.c != 0) {
                c.a(this.a, (Object) "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.a == null) {
                sf.a("Starting the looper thread.");
                this.a = new HandlerThread("LooperProvider");
                this.a.start();
                this.b = new Handler(this.a.getLooper());
                sf.a("Looper thread started.");
            } else {
                sf.a("Resuming the looper thread");
                this.d.notifyAll();
            }
            this.c++;
            looper = this.a.getLooper();
        }
        return looper;
    }

    public void b() {
        synchronized (this.d) {
            c.b(this.c > 0, "Invalid state: release() called more times than expected.");
            int i = this.c - 1;
            this.c = i;
            if (i == 0) {
                this.b.post(new Runnable() {
                    public void run() {
                        synchronized (sr.this.d) {
                            sf.a("Suspending the looper thread");
                            while (sr.this.c == 0) {
                                try {
                                    sr.this.d.wait();
                                    sf.a("Looper thread resumed");
                                } catch (InterruptedException e) {
                                    sf.a("Looper thread interrupted.");
                                }
                            }
                        }
                    }
                });
            }
        }
    }
}
