package com.google.android.gms.c;

import com.google.android.gms.c.aw.a;
import java.util.concurrent.Callable;

public class dz implements Callable {
    private final dn a;
    private final a b;

    public dz(dn dnVar, a aVar) {
        this.a = dnVar;
        this.b = aVar;
    }

    /* renamed from: a */
    public Void call() {
        if (this.a.m() != null) {
            this.a.m().get();
        }
        eq l = this.a.l();
        if (l != null) {
            try {
                synchronized (this.b) {
                    eq.a(this.b, eq.a(l));
                }
            } catch (ep e) {
            }
        }
        return null;
    }
}
