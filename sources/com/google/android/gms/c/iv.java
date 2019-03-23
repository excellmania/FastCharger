package com.google.android.gms.c;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Build.VERSION;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

public class iv extends Thread {
    private final BlockingQueue<mw<?>> a;
    private final hy b;
    private final dk c;
    private final pz d;
    private volatile boolean e = false;

    public iv(BlockingQueue<mw<?>> blockingQueue, hy hyVar, dk dkVar, pz pzVar) {
        super("VolleyNetworkDispatcher");
        this.a = blockingQueue;
        this.b = hyVar;
        this.c = dkVar;
        this.d = pzVar;
    }

    @TargetApi(14)
    private void a(mw<?> mwVar) {
        if (VERSION.SDK_INT >= 14) {
            TrafficStats.setThreadStatsTag(mwVar.b());
        }
    }

    private void a(mw<?> mwVar, uc ucVar) {
        this.d.a((mw) mwVar, mwVar.a(ucVar));
    }

    public void a() {
        this.e = true;
        interrupt();
    }

    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            try {
                mw mwVar = (mw) this.a.take();
                try {
                    mwVar.b("network-queue-take");
                    a(mwVar);
                    ku a = this.b.a(mwVar);
                    mwVar.b("network-http-complete");
                    if (a.d && mwVar.q()) {
                        mwVar.c("not-modified");
                    } else {
                        oy a2 = mwVar.a(a);
                        mwVar.b("network-parse-complete");
                        if (mwVar.l() && a2.b != null) {
                            this.c.a(mwVar.d(), a2.b);
                            mwVar.b("network-cache-written");
                        }
                        mwVar.p();
                        this.d.a(mwVar, a2);
                    }
                } catch (uc e) {
                    e.a(SystemClock.elapsedRealtime() - elapsedRealtime);
                    a(mwVar, e);
                } catch (Exception e2) {
                    uh.a(e2, "Unhandled exception %s", e2.toString());
                    uc ucVar = new uc(e2);
                    ucVar.a(SystemClock.elapsedRealtime() - elapsedRealtime);
                    this.d.a(mwVar, ucVar);
                }
            } catch (InterruptedException e3) {
                if (this.e) {
                    return;
                }
            }
        }
    }
}
