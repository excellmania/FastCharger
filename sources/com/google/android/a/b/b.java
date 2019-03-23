package com.google.android.a.b;

import com.google.android.a.d.a;
import com.google.android.a.e.c;
import com.google.android.a.g.f;
import com.google.android.a.g.h;
import com.google.android.a.r;

public abstract class b extends m {
    public final boolean a;
    private c k;
    private int l;

    public b(f fVar, h hVar, int i, i iVar, long j, long j2, int i2, boolean z, int i3) {
        super(fVar, hVar, i, iVar, j, j2, i2, i3);
        this.a = z;
    }

    public final int a() {
        return this.l;
    }

    public void a(c cVar) {
        this.k = cVar;
        this.l = cVar.b();
    }

    public abstract r b();

    public abstract a c();

    /* Access modifiers changed, original: protected|final */
    public final c d() {
        return this.k;
    }
}
