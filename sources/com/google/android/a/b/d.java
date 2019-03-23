package com.google.android.a.b;

import com.google.android.a.e.e;
import com.google.android.a.e.f;
import com.google.android.a.e.g;
import com.google.android.a.e.l;
import com.google.android.a.e.m;
import com.google.android.a.h.b;
import com.google.android.a.h.o;
import com.google.android.a.r;

public final class d implements g, m {
    private final e a;
    private boolean b;
    private a c;
    private boolean d;

    public interface a extends m {
        void a(com.google.android.a.d.a aVar);

        void a(l lVar);
    }

    public d(e eVar) {
        this.a = eVar;
    }

    public int a(f fVar) {
        boolean z = true;
        int a = this.a.a(fVar, null);
        if (a == 1) {
            z = false;
        }
        b.b(z);
        return a;
    }

    public int a(f fVar, int i, boolean z) {
        return this.c.a(fVar, i, z);
    }

    public void a() {
        b.b(this.d);
    }

    public void a(long j, int i, int i2, int i3, byte[] bArr) {
        this.c.a(j, i, i2, i3, bArr);
    }

    public void a(a aVar) {
        this.c = aVar;
        if (this.b) {
            this.a.b();
            return;
        }
        this.a.a((g) this);
        this.b = true;
    }

    public void a(com.google.android.a.d.a aVar) {
        this.c.a(aVar);
    }

    public void a(l lVar) {
        this.c.a(lVar);
    }

    public void a(o oVar, int i) {
        this.c.a(oVar, i);
    }

    public void a(r rVar) {
        this.c.a(rVar);
    }

    public m a_(int i) {
        b.b(!this.d);
        this.d = true;
        return this;
    }
}
