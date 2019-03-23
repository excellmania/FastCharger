package com.facebook.ads.internal.h.c.c;

import android.net.Uri;
import android.os.Handler;
import com.facebook.ads.internal.h.c.c.b.b;
import com.google.android.a.e.e;
import com.google.android.a.e.h;
import com.google.android.a.g.i;
import com.google.android.a.g.j;
import com.google.android.a.g.l;
import com.google.android.a.m;
import com.google.android.a.n;
import com.google.android.a.q;

public class c implements b {
    private Handler a;
    private b b;
    private Uri c;
    private String d;
    private int e;
    private int f;

    public c(int i, int i2, Handler handler, Uri uri, String str, b bVar) {
        this.e = i;
        this.f = i2;
        this.a = handler;
        this.c = uri;
        this.d = str;
        this.b = bVar;
    }

    public void a(com.facebook.ads.internal.h.c.c.b.c cVar) {
        h hVar = new h(this.c, new l(this.b.getContext(), new j(this.a, null), this.d), new i(this.e), this.f * this.e, this.a, this.b, 0, new e[0]);
        cVar.a(new q(this.b.getContext(), hVar, n.a, 1, 5000, this.a, this.b, 50), new m(hVar, n.a));
    }
}
