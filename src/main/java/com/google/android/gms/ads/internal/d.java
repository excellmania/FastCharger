package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.overlay.m;
import com.google.android.gms.ads.internal.overlay.p;
import com.google.android.gms.ads.internal.overlay.q;
import com.google.android.gms.ads.internal.overlay.w;
import com.google.android.gms.c.ko;
import com.google.android.gms.c.li;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.rm;
import com.google.android.gms.c.rq;

@pa
public class d {
    public final li a;
    public final m b;
    public final p c;
    public final rq d;

    public d(li liVar, m mVar, p pVar, rq rqVar) {
        this.a = liVar;
        this.b = mVar;
        this.c = pVar;
        this.d = rqVar;
    }

    public static d a() {
        return new d(new ko(), new q(), new w(), new rm());
    }
}
