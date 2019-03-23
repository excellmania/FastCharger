package com.google.android.gms.c;

import android.content.Context;
import com.google.android.gms.a.b;
import com.google.android.gms.ads.internal.d;
import com.google.android.gms.c.qr.a;

@pa
public class qo extends a {
    private final Context a;
    private final Object b;
    private final tc c;
    private final qp d;

    public qo(Context context, d dVar, mo moVar, tc tcVar) {
        this(context, tcVar, new qp(context, dVar, ha.a(), moVar, tcVar));
    }

    qo(Context context, tc tcVar, qp qpVar) {
        this.b = new Object();
        this.a = context;
        this.c = tcVar;
        this.d = qpVar;
    }

    public void a() {
        synchronized (this.b) {
            this.d.J();
        }
    }

    public void a(com.google.android.gms.a.a aVar) {
        synchronized (this.b) {
            this.d.n();
        }
    }

    public void a(qt qtVar) {
        synchronized (this.b) {
            this.d.a(qtVar);
        }
    }

    public void a(qx qxVar) {
        synchronized (this.b) {
            this.d.a(qxVar);
        }
    }

    public void a(String str) {
        sz.e("RewardedVideoAd.setUserId() is deprecated. Please do not call this method.");
    }

    public void b(com.google.android.gms.a.a aVar) {
        synchronized (this.b) {
            Context context = aVar == null ? null : (Context) b.a(aVar);
            if (context != null) {
                try {
                    this.d.a(context);
                } catch (Exception e) {
                    sz.c("Unable to extract updated context.", e);
                }
            }
            this.d.o();
        }
    }

    public boolean b() {
        boolean K;
        synchronized (this.b) {
            K = this.d.K();
        }
        return K;
    }

    public void c() {
        a(null);
    }

    public void c(com.google.android.gms.a.a aVar) {
        synchronized (this.b) {
            this.d.i();
        }
    }

    public void d() {
        b(null);
    }

    public void e() {
        c(null);
    }
}
