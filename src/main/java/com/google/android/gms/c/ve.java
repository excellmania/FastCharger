package com.google.android.gms.c;

import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.a;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.api.m;
import com.google.android.gms.d.d;
import com.google.android.gms.d.e;
import java.util.Set;

public final class ve {
    private final ArrayMap<vc<?>, a> a = new ArrayMap();
    private final e<Void> b = new e();
    private int c;
    private boolean d = false;

    public ve(Iterable<m<? extends com.google.android.gms.common.api.a.a>> iterable) {
        for (m a : iterable) {
            this.a.put(a.a(), null);
        }
        this.c = this.a.keySet().size();
    }

    public Set<vc<?>> a() {
        return this.a.keySet();
    }

    public void a(vc<?> vcVar, a aVar) {
        this.a.put(vcVar, aVar);
        this.c--;
        if (!aVar.b()) {
            this.d = true;
        }
        if (this.c != 0) {
            return;
        }
        if (this.d) {
            this.b.a(new l(this.a));
            return;
        }
        this.b.a(null);
    }

    public d<Void> b() {
        return this.b.a();
    }

    public void c() {
        this.b.a(null);
    }
}
