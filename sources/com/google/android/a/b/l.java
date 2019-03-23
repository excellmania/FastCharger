package com.google.android.a.b;

import com.google.android.a.b.d.a;
import com.google.android.a.e.b;
import com.google.android.a.g.f;
import com.google.android.a.g.h;
import com.google.android.a.h.o;
import com.google.android.a.h.x;
import com.google.android.a.r;

public final class l extends c implements a {
    private final d a;
    private r h;
    private com.google.android.a.d.a i;
    private com.google.android.a.e.l j;
    private volatile int k;
    private volatile boolean l;

    public l(f fVar, h hVar, int i, i iVar, d dVar, int i2) {
        super(fVar, hVar, 2, i, iVar, i2);
        this.a = dVar;
    }

    public int a(com.google.android.a.e.f fVar, int i, boolean z) {
        throw new IllegalStateException("Unexpected sample data in initialization chunk");
    }

    public void a(long j, int i, int i2, int i3, byte[] bArr) {
        throw new IllegalStateException("Unexpected sample data in initialization chunk");
    }

    public void a(com.google.android.a.d.a aVar) {
        this.i = aVar;
    }

    public void a(com.google.android.a.e.l lVar) {
        this.j = lVar;
    }

    public void a(o oVar, int i) {
        throw new IllegalStateException("Unexpected sample data in initialization chunk");
    }

    public void a(r rVar) {
        this.h = rVar;
    }

    public boolean a() {
        return this.h != null;
    }

    public r b() {
        return this.h;
    }

    public boolean c() {
        return this.i != null;
    }

    public com.google.android.a.d.a d() {
        return this.i;
    }

    public long e() {
        return (long) this.k;
    }

    public void f() {
        this.l = true;
    }

    public boolean g() {
        return this.l;
    }

    public void h() {
        h a = x.a(this.e, this.k);
        com.google.android.a.e.f bVar;
        try {
            bVar = new b(this.g, a.c, this.g.a(a));
            if (this.k == 0) {
                this.a.a((a) this);
            }
            int i = 0;
            while (i == 0) {
                if (!this.l) {
                    i = this.a.a(bVar);
                }
            }
            this.k = (int) (bVar.c() - this.e.c);
            this.g.b();
        } catch (Throwable th) {
            this.g.b();
        }
    }

    public boolean i() {
        return this.j != null;
    }

    public com.google.android.a.e.l j() {
        return this.j;
    }
}
