package com.google.android.a.e;

import com.google.android.a.g.b;
import com.google.android.a.g.f;
import com.google.android.a.h.o;
import com.google.android.a.r;
import com.google.android.a.u;

public class c implements m {
    private final k a;
    private final u b = new u(0);
    private boolean c = true;
    private long d = Long.MIN_VALUE;
    private long e = Long.MIN_VALUE;
    private volatile long f = Long.MIN_VALUE;
    private volatile r g;

    public c(b bVar) {
        this.a = new k(bVar);
    }

    private boolean h() {
        boolean a = this.a.a(this.b);
        if (this.c) {
            while (a && !this.b.c()) {
                this.a.d();
                a = this.a.a(this.b);
            }
        }
        return !a ? false : this.e == Long.MIN_VALUE || this.b.e < this.e;
    }

    public int a(f fVar, int i, boolean z) {
        return this.a.a(fVar, i, z);
    }

    public int a(f fVar, int i, boolean z) {
        return this.a.a(fVar, i, z);
    }

    public void a() {
        this.a.a();
        this.c = true;
        this.d = Long.MIN_VALUE;
        this.e = Long.MIN_VALUE;
        this.f = Long.MIN_VALUE;
    }

    public void a(int i) {
        this.a.a(i);
        this.f = this.a.a(this.b) ? this.b.e : Long.MIN_VALUE;
    }

    public void a(long j) {
        while (this.a.a(this.b) && this.b.e < j) {
            this.a.d();
            this.c = true;
        }
        this.d = Long.MIN_VALUE;
    }

    public void a(long j, int i, int i2, int i3, byte[] bArr) {
        this.f = Math.max(this.f, j);
        this.a.a(j, i, (this.a.e() - ((long) i2)) - ((long) i3), i2, bArr);
    }

    public void a(o oVar, int i) {
        this.a.a(oVar, i);
    }

    public void a(r rVar) {
        this.g = rVar;
    }

    public boolean a(u uVar) {
        if (!h()) {
            return false;
        }
        this.a.b(uVar);
        this.c = false;
        this.d = uVar.e;
        return true;
    }

    public int b() {
        return this.a.b();
    }

    public boolean b(long j) {
        return this.a.a(j);
    }

    public int c() {
        return this.a.c();
    }

    public boolean d() {
        return this.g != null;
    }

    public r e() {
        return this.g;
    }

    public long f() {
        return this.f;
    }

    public boolean g() {
        return !h();
    }
}
