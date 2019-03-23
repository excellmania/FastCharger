package com.google.android.gms.c;

import android.content.Context;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.c.ts.a;
import com.google.android.gms.common.internal.c;
import java.util.concurrent.atomic.AtomicBoolean;

@pa
public abstract class oh implements sl<Void>, a {
    protected final ol.a a;
    protected final Context b;
    protected final tr c;
    protected final rv.a d;
    protected pj e;
    protected final Object f = new Object();
    private Runnable g;
    private AtomicBoolean h = new AtomicBoolean(true);

    protected oh(Context context, rv.a aVar, tr trVar, ol.a aVar2) {
        this.b = context;
        this.d = aVar;
        this.e = this.d.b;
        this.c = trVar;
        this.a = aVar2;
    }

    private rv b(int i) {
        pg pgVar = this.d.a;
        return new rv(pgVar.c, this.c, this.e.d, i, this.e.f, this.e.j, this.e.l, this.e.k, pgVar.i, this.e.h, null, null, null, null, null, this.e.i, this.d.d, this.e.g, this.d.f, this.e.n, this.e.o, this.d.h, null, this.e.C, this.e.D, this.e.E, this.e.F, this.e.G, null, this.e.J, this.e.N);
    }

    /* renamed from: a */
    public final Void e() {
        c.b("Webview render task needs to be called on UI thread.");
        this.g = new Runnable() {
            public void run() {
                if (oh.this.h.get()) {
                    sz.c("Timed out waiting for WebView to finish loading.");
                    oh.this.d();
                }
            }
        };
        sj.a.postDelayed(this.g, ((Long) is.bo.c()).longValue());
        b();
        return null;
    }

    /* Access modifiers changed, original: protected */
    public void a(int i) {
        if (i != -2) {
            this.e = new pj(i, this.e.k);
        }
        this.c.e();
        this.a.b(b(i));
    }

    public void a(tr trVar, boolean z) {
        int i = 0;
        sz.b("WebView finished loading.");
        if (this.h.getAndSet(false)) {
            if (z) {
                i = c();
            }
            a(i);
            sj.a.removeCallbacks(this.g);
        }
    }

    public abstract void b();

    /* Access modifiers changed, original: protected */
    public int c() {
        return -2;
    }

    public void d() {
        if (this.h.getAndSet(false)) {
            this.c.stopLoading();
            v.g().a(this.c);
            a(-1);
            sj.a.removeCallbacks(this.g);
        }
    }
}
