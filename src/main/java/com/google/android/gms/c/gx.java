package com.google.android.gms.c;

import android.os.Handler;
import java.util.concurrent.Executor;

public class gx implements pz {
    private final Executor a;

    private class a implements Runnable {
        private final mw a;
        private final oy b;
        private final Runnable c;

        public a(gx gxVar, mw mwVar, oy oyVar, Runnable runnable) {
            this.a = mwVar;
            this.b = oyVar;
            this.c = runnable;
        }

        public void run() {
            if (this.b.a()) {
                this.a.a(this.b.a);
            } else {
                this.a.b(this.b.c);
            }
            if (this.b.d) {
                this.a.b("intermediate-response");
            } else {
                this.a.c("done");
            }
            if (this.c != null) {
                this.c.run();
            }
        }
    }

    public gx(final Handler handler) {
        this.a = new Executor(this) {
            public void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    public void a(mw<?> mwVar, oy<?> oyVar) {
        a(mwVar, oyVar, null);
    }

    public void a(mw<?> mwVar, oy<?> oyVar, Runnable runnable) {
        mwVar.p();
        mwVar.b("post-response");
        this.a.execute(new a(this, mwVar, oyVar, runnable));
    }

    public void a(mw<?> mwVar, uc ucVar) {
        mwVar.b("post-error");
        this.a.execute(new a(this, mwVar, oy.a(ucVar), null));
    }
}
