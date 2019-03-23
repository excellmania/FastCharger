package com.google.android.gms.c;

import com.google.android.gms.common.api.a.a;
import com.google.android.gms.common.internal.b;

public final class vc<O extends a> {
    private final boolean a = true;
    private final int b;
    private final com.google.android.gms.common.api.a<O> c;
    private final O d;

    private vc(com.google.android.gms.common.api.a<O> aVar) {
        this.c = aVar;
        this.d = null;
        this.b = System.identityHashCode(this);
    }

    private vc(com.google.android.gms.common.api.a<O> aVar, O o) {
        this.c = aVar;
        this.d = o;
        this.b = b.a(this.c, this.d);
    }

    public static <O extends a> vc<O> a(com.google.android.gms.common.api.a<O> aVar) {
        return new vc(aVar);
    }

    public static <O extends a> vc<O> a(com.google.android.gms.common.api.a<O> aVar, O o) {
        return new vc(aVar, o);
    }

    public String a() {
        return this.c.d();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof vc)) {
            return false;
        }
        vc vcVar = (vc) obj;
        return !this.a && !vcVar.a && b.a(this.c, vcVar.c) && b.a(this.d, vcVar.d);
    }

    public int hashCode() {
        return this.b;
    }
}
