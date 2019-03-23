package com.google.android.gms.c;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.a.b;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.c.rv.a;

@pa
public class ra extends se implements rc, rf {
    private final a a;
    private final Context b;
    private final rh c;
    private final rf d;
    private final Object e;
    private final String f;
    private final String g;
    private final me h;
    private final long i;
    private int j = 0;
    private int k = 3;
    private rb l;

    public ra(Context context, String str, String str2, me meVar, a aVar, rh rhVar, rf rfVar, long j) {
        this.b = context;
        this.f = str;
        this.g = str2;
        this.h = meVar;
        this.a = aVar;
        this.c = rhVar;
        this.e = new Object();
        this.d = rfVar;
        this.i = j;
    }

    private void a(gv gvVar, mp mpVar) {
        this.c.b().a((rf) this);
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(this.f)) {
                mpVar.a(gvVar, this.g, this.h.a);
            } else {
                mpVar.a(gvVar, this.g);
            }
        } catch (RemoteException e) {
            sz.c("Fail to load ad from adapter.", e);
            a(this.f, 0);
        }
    }

    private void b(long j) {
        while (true) {
            synchronized (this.e) {
                if (this.j != 0) {
                    this.l = new rb.a().a(v.k().b() - j).a(1 == this.j ? 6 : this.k).a(this.f).b(this.h.d).a();
                    return;
                } else if (!a(j)) {
                    this.l = new rb.a().a(this.k).a(v.k().b() - j).a(this.f).b(this.h.d).a();
                    return;
                }
            }
        }
    }

    public void a() {
        if (this.c != null && this.c.b() != null && this.c.a() != null) {
            final re b = this.c.b();
            b.a(null);
            b.a((rc) this);
            final gv gvVar = this.a.a.c;
            final mp a = this.c.a();
            try {
                if (a.g()) {
                    sy.a.post(new Runnable() {
                        public void run() {
                            ra.this.a(gvVar, a);
                        }
                    });
                } else {
                    sy.a.post(new Runnable() {
                        public void run() {
                            try {
                                a.a(b.a(ra.this.b), gvVar, null, b, ra.this.g);
                            } catch (RemoteException e) {
                                Throwable th = e;
                                String str = "Fail to initialize adapter ";
                                String valueOf = String.valueOf(ra.this.f);
                                sz.c(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), th);
                                ra.this.a(ra.this.f, 0);
                            }
                        }
                    });
                }
            } catch (RemoteException e) {
                sz.c("Fail to check if adapter is initialized.", e);
                a(this.f, 0);
            }
            b(v.k().b());
            b.a(null);
            b.a(null);
            if (this.j == 1) {
                this.d.a(this.f);
            } else {
                this.d.a(this.f, this.k);
            }
        }
    }

    public void a(int i) {
        a(this.f, 0);
    }

    public void a(String str) {
        synchronized (this.e) {
            this.j = 1;
            this.e.notify();
        }
    }

    public void a(String str, int i) {
        synchronized (this.e) {
            this.j = 2;
            this.k = i;
            this.e.notify();
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean a(long j) {
        long b = this.i - (v.k().b() - j);
        if (b <= 0) {
            this.k = 4;
            return false;
        }
        try {
            this.e.wait(b);
            return true;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            this.k = 5;
            return false;
        }
    }

    public void b() {
    }

    public rb c() {
        rb rbVar;
        synchronized (this.e) {
            rbVar = this.l;
        }
        return rbVar;
    }

    public me f() {
        return this.h;
    }

    public void g() {
        a(this.a.a.c, this.c.a());
    }
}
