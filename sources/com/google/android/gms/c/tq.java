package com.google.android.gms.c;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.google.android.gms.ads.internal.overlay.n;
import com.google.android.gms.common.internal.c;

@pa
public class tq {
    private final tr a;
    private final Context b;
    private final ViewGroup c;
    private n d;

    public tq(Context context, ViewGroup viewGroup, tr trVar) {
        this(context, viewGroup, trVar, null);
    }

    tq(Context context, ViewGroup viewGroup, tr trVar, n nVar) {
        this.b = context;
        this.c = viewGroup;
        this.a = trVar;
        this.d = nVar;
    }

    public n a() {
        c.b("getAdVideoUnderlay must be called from the UI thread.");
        return this.d;
    }

    public void a(int i, int i2, int i3, int i4) {
        c.b("The underlay may only be modified from the UI thread.");
        if (this.d != null) {
            this.d.a(i, i2, i3, i4);
        }
    }

    public void a(int i, int i2, int i3, int i4, int i5, boolean z) {
        if (this.d == null) {
            ix.a(this.a.y().a(), this.a.x(), "vpr2");
            this.d = new n(this.b, this.a, i5, z, this.a.y().a());
            this.c.addView(this.d, 0, new LayoutParams(-1, -1));
            this.d.a(i, i2, i3, i4);
            this.a.l().a(false);
        }
    }

    public void b() {
        c.b("onPause must be called from the UI thread.");
        if (this.d != null) {
            this.d.i();
        }
    }

    public void c() {
        c.b("onDestroy must be called from the UI thread.");
        if (this.d != null) {
            this.d.n();
            this.c.removeView(this.d);
            this.d = null;
        }
    }
}
