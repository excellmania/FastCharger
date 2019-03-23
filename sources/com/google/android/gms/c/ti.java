package com.google.android.gms.c;

import java.util.ArrayList;
import java.util.List;

@pa
class ti {
    private final Object a = new Object();
    private final List<Runnable> b = new ArrayList();
    private final List<Runnable> c = new ArrayList();
    private boolean d = false;

    private void c(Runnable runnable) {
        si.a(runnable);
    }

    private void d(Runnable runnable) {
        sy.a.post(runnable);
    }

    public void a() {
        synchronized (this.a) {
            if (this.d) {
                return;
            }
            for (Runnable c : this.b) {
                c(c);
            }
            for (Runnable c2 : this.c) {
                d(c2);
            }
            this.b.clear();
            this.c.clear();
            this.d = true;
        }
    }

    public void a(Runnable runnable) {
        synchronized (this.a) {
            if (this.d) {
                c(runnable);
            } else {
                this.b.add(runnable);
            }
        }
    }

    public void b(Runnable runnable) {
        synchronized (this.a) {
            if (this.d) {
                d(runnable);
            } else {
                this.c.add(runnable);
            }
        }
    }
}
