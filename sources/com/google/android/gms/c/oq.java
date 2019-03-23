package com.google.android.gms.c;

import android.content.Context;
import com.google.android.gms.ads.internal.r;
import com.google.android.gms.c.ol.a;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@pa
public class oq extends se {
    private final a a;
    private final pj b;
    private final rv.a c;
    private final os d;
    private final Object e;
    private Future<rv> f;

    public oq(Context context, r rVar, rv.a aVar, cm cmVar, a aVar2, jb jbVar) {
        this(aVar, aVar2, new os(context, rVar, new sq(context), cmVar, aVar, jbVar));
    }

    oq(rv.a aVar, a aVar2, os osVar) {
        this.e = new Object();
        this.c = aVar;
        this.b = aVar.b;
        this.a = aVar2;
        this.d = osVar;
    }

    private rv a(int i) {
        return new rv(this.c.a.c, null, null, i, null, null, this.b.l, this.b.k, this.c.a.i, false, null, null, null, null, null, this.b.i, this.c.d, this.b.g, this.c.f, this.b.n, this.b.o, this.c.h, null, null, null, null, this.c.b.F, this.c.b.G, null, null, this.b.N);
    }

    public void a() {
        rv rvVar;
        int i;
        try {
            synchronized (this.e) {
                this.f = si.a(this.d);
            }
            rvVar = (rv) this.f.get(60000, TimeUnit.MILLISECONDS);
            i = -2;
        } catch (TimeoutException e) {
            sz.e("Timed out waiting for native ad.");
            this.f.cancel(true);
            i = 2;
            rvVar = null;
        } catch (ExecutionException e2) {
            rvVar = null;
            i = 0;
        } catch (InterruptedException e3) {
            rvVar = null;
            i = 0;
        } catch (CancellationException e4) {
            rvVar = null;
            i = 0;
        }
        if (rvVar == null) {
            rvVar = a(i);
        }
        sj.a.post(new Runnable() {
            public void run() {
                oq.this.a.b(rvVar);
            }
        });
    }

    public void b() {
        synchronized (this.e) {
            if (this.f != null) {
                this.f.cancel(true);
            }
        }
    }
}
