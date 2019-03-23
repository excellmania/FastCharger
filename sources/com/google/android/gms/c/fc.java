package com.google.android.gms.c;

import android.os.Process;
import com.google.android.gms.c.dk.a;
import java.util.concurrent.BlockingQueue;

public class fc extends Thread {
    private static final boolean a = uh.b;
    private final BlockingQueue<mw<?>> b;
    private final BlockingQueue<mw<?>> c;
    private final dk d;
    private final pz e;
    private volatile boolean f = false;

    public fc(BlockingQueue<mw<?>> blockingQueue, BlockingQueue<mw<?>> blockingQueue2, dk dkVar, pz pzVar) {
        super("VolleyCacheDispatcher");
        this.b = blockingQueue;
        this.c = blockingQueue2;
        this.d = dkVar;
        this.e = pzVar;
    }

    public void a() {
        this.f = true;
        interrupt();
    }

    public void run() {
        if (a) {
            uh.a("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.d.a();
        while (true) {
            try {
                final mw mwVar = (mw) this.b.take();
                mwVar.b("cache-queue-take");
                a a = this.d.a(mwVar.d());
                if (a == null) {
                    mwVar.b("cache-miss");
                    this.c.put(mwVar);
                } else if (a.a()) {
                    mwVar.b("cache-hit-expired");
                    mwVar.a(a);
                    this.c.put(mwVar);
                } else {
                    mwVar.b("cache-hit");
                    oy a2 = mwVar.a(new ku(a.a, a.g));
                    mwVar.b("cache-hit-parsed");
                    if (a.b()) {
                        mwVar.b("cache-hit-refresh-needed");
                        mwVar.a(a);
                        a2.d = true;
                        this.e.a(mwVar, a2, new Runnable() {
                            public void run() {
                                try {
                                    fc.this.c.put(mwVar);
                                } catch (InterruptedException e) {
                                }
                            }
                        });
                    } else {
                        this.e.a(mwVar, a2);
                    }
                }
            } catch (InterruptedException e) {
                if (this.f) {
                    return;
                }
            }
        }
    }
}
