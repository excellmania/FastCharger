package com.google.android.gms.c;

import android.content.Context;
import com.google.android.gms.ads.internal.r;
import com.google.android.gms.c.lw.b;
import com.google.android.gms.c.lw.e;
import com.google.android.gms.c.tk.c;
import java.util.concurrent.TimeUnit;

@pa
public class or {
    private static final long a = TimeUnit.SECONDS.toMillis(60);
    private static final Object b = new Object();
    private static boolean c = false;
    private static lw d = null;
    private final Context e;
    private final com.google.android.gms.c.rv.a f;
    private final r g;
    private final cm h;
    private lt i;
    private e j;
    private ls k;
    private boolean l = false;

    public static abstract class a {
        public void a() {
        }

        public abstract void a(lx lxVar);
    }

    public or(Context context, com.google.android.gms.c.rv.a aVar, r rVar, cm cmVar) {
        this.e = context;
        this.f = aVar;
        this.g = rVar;
        this.h = cmVar;
        this.l = ((Boolean) is.cd.c()).booleanValue();
    }

    public static String a(com.google.android.gms.c.rv.a aVar, String str) {
        String valueOf = String.valueOf(aVar.b.b.indexOf("https") == 0 ? "https:" : "http:");
        String valueOf2 = String.valueOf(str);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    private void g() {
        synchronized (b) {
            if (!c) {
                d = new lw(this.e.getApplicationContext() != null ? this.e.getApplicationContext() : this.e, this.f.a.k, a(this.f, (String) is.cb.c()), new so<ls>() {
                    public void a(ls lsVar) {
                        lsVar.a(or.this.g, or.this.g, or.this.g, or.this.g, false, null, null, null, null);
                    }
                }, new b());
                c = true;
            }
        }
    }

    private void h() {
        this.j = new e(e().b(this.h));
    }

    private void i() {
        this.i = new lt();
    }

    private void j() {
        this.k = (ls) c().a(this.e, this.f.a.k, a(this.f, (String) is.cb.c()), this.h, this.g.g()).get(a, TimeUnit.MILLISECONDS);
        this.k.a(this.g, this.g, this.g, this.g, false, null, null, null, null);
    }

    public void a() {
        if (this.l) {
            g();
        } else {
            i();
        }
    }

    public void a(final a aVar) {
        if (this.l) {
            e f = f();
            if (f == null) {
                sz.e("SharedJavascriptEngine not initialized");
                return;
            } else {
                f.a(new c<lx>(this) {
                    public void a(lx lxVar) {
                        aVar.a(lxVar);
                    }
                }, new com.google.android.gms.c.tk.a(this) {
                    public void a() {
                        aVar.a();
                    }
                });
                return;
            }
        }
        ls d = d();
        if (d == null) {
            sz.e("JavascriptEngine not initialized");
        } else {
            aVar.a(d);
        }
    }

    public void b() {
        if (this.l) {
            h();
        } else {
            j();
        }
    }

    /* Access modifiers changed, original: protected */
    public lt c() {
        return this.i;
    }

    /* Access modifiers changed, original: protected */
    public ls d() {
        return this.k;
    }

    /* Access modifiers changed, original: protected */
    public lw e() {
        return d;
    }

    /* Access modifiers changed, original: protected */
    public e f() {
        return this.j;
    }
}
