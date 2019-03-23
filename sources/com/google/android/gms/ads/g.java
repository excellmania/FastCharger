package com.google.android.gms.ads;

import android.content.Context;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.ads.d.b;
import com.google.android.gms.c.gq;
import com.google.android.gms.c.hz;

public final class g {
    private final hz a;

    public g(Context context) {
        this.a = new hz(context);
    }

    public void a() {
        this.a.a();
    }

    public void a(a aVar) {
        this.a.a(aVar);
        if (aVar != null && (aVar instanceof gq)) {
            this.a.a((gq) aVar);
        } else if (aVar == null) {
            this.a.a(null);
        }
    }

    @RequiresPermission("android.permission.INTERNET")
    public void a(c cVar) {
        this.a.a(cVar.a());
    }

    public void a(b bVar) {
        this.a.a(bVar);
    }

    public void a(String str) {
        this.a.a(str);
    }

    public void a(boolean z) {
        this.a.a(z);
    }
}
