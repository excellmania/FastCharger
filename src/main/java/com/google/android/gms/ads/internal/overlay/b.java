package com.google.android.gms.ads.internal.overlay;

import com.google.android.gms.c.pa;
import com.google.android.gms.c.sj;

@pa
class b implements Runnable {
    private n a;
    private boolean b = false;

    b(n nVar) {
        this.a = nVar;
    }

    public void a() {
        this.b = true;
        sj.a.removeCallbacks(this);
    }

    public void b() {
        sj.a.postDelayed(this, 250);
    }

    public void run() {
        if (!this.b) {
            this.a.o();
            b();
        }
    }
}
