package com.google.android.a;

import com.google.android.a.h.a;
import com.google.android.a.h.b;

public abstract class z implements a {
    private int a;

    /* Access modifiers changed, original: protected */
    public void a(int i, long j, boolean z) {
    }

    public void a(int i, Object obj) {
    }

    public abstract void a(long j, long j2);

    /* Access modifiers changed, original: protected */
    public l b() {
        return null;
    }

    public abstract r b(int i);

    /* Access modifiers changed, original: final */
    public final void b(int i, long j, boolean z) {
        boolean z2 = true;
        if (this.a != 1) {
            z2 = false;
        }
        b.b(z2);
        this.a = 2;
        a(i, j, z);
    }

    /* Access modifiers changed, original: protected */
    public void c() {
    }

    public abstract boolean c(long j);

    /* Access modifiers changed, original: protected */
    public void d() {
    }

    public abstract void d(long j);

    public abstract boolean e();

    /* Access modifiers changed, original: final */
    public final int f(long j) {
        int i = 1;
        b.b(this.a == 0);
        if (!c(j)) {
            i = 0;
        }
        this.a = i;
        return this.a;
    }

    public abstract boolean f();

    /* Access modifiers changed, original: protected */
    public void g() {
    }

    public abstract long p();

    public abstract long q();

    public abstract void r();

    /* Access modifiers changed, original: protected */
    public void s() {
    }

    public abstract int t();

    /* Access modifiers changed, original: protected|final */
    public final int u() {
        return this.a;
    }

    /* Access modifiers changed, original: final */
    public final void v() {
        b.b(this.a == 2);
        this.a = 3;
        c();
    }

    /* Access modifiers changed, original: final */
    public final void w() {
        b.b(this.a == 3);
        this.a = 2;
        d();
    }

    /* Access modifiers changed, original: final */
    public final void x() {
        b.b(this.a == 2);
        this.a = 1;
        g();
    }

    /* Access modifiers changed, original: final */
    public final void y() {
        boolean z = (this.a == 2 || this.a == 3 || this.a == -1) ? false : true;
        b.b(z);
        this.a = -1;
        s();
    }
}
