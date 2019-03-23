package com.google.android.gms.c;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.c.vf.a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.h;

public class i implements m {
    private final n a;
    private boolean b = false;

    public i(n nVar) {
        this.a = nVar;
    }

    private <A extends c> void b(a<? extends f, A> aVar) {
        this.a.g.i.a((vh) aVar);
        c b = this.a.g.b(aVar.b());
        if (b.b() || !this.a.b.containsKey(aVar.b())) {
            if (b instanceof h) {
                b = ((h) b).k();
            }
            aVar.b(b);
            return;
        }
        aVar.c(new Status(17));
    }

    public <A extends c, T extends a<? extends f, A>> T a(T t) {
        try {
            b(t);
        } catch (DeadObjectException e) {
            this.a.a(new a(this) {
                public void a() {
                    i.this.a(1);
                }
            });
        }
        return t;
    }

    public void a() {
    }

    public void a(int i) {
        this.a.a(null);
        this.a.h.a(i, this.b);
    }

    public void a(Bundle bundle) {
    }

    public void a(com.google.android.gms.common.a aVar, com.google.android.gms.common.api.a<?> aVar2, int i) {
    }

    public boolean b() {
        if (this.b) {
            return false;
        }
        if (this.a.g.g()) {
            this.b = true;
            for (al a : this.a.g.h) {
                a.a();
            }
            return false;
        }
        this.a.a(null);
        return true;
    }

    public void c() {
        if (this.b) {
            this.b = false;
            this.a.a(new a(this) {
                public void a() {
                    i.this.a.h.a(null);
                }
            });
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void d() {
        if (this.b) {
            this.b = false;
            this.a.g.i.a();
            b();
        }
    }
}
