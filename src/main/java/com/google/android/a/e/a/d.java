package com.google.android.a.e.a;

import com.google.android.a.e.m;
import com.google.android.a.h.o;
import com.google.android.a.t;

abstract class d {
    protected final m a;
    private long b = -1;

    public static final class a extends t {
        public a(String str) {
            super(str);
        }
    }

    protected d(m mVar) {
        this.a = mVar;
    }

    public final long a() {
        return this.b;
    }

    public final void a(long j) {
        this.b = j;
    }

    public abstract void a(o oVar, long j);

    public abstract boolean a(o oVar);

    public final void b(o oVar, long j) {
        if (a(oVar)) {
            a(oVar, j);
        }
    }
}
