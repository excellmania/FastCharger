package com.google.android.a;

import com.google.android.a.p.b;
import com.google.android.a.v.a;
import java.io.IOException;
import java.util.Arrays;

public abstract class w extends z {
    private final a[] a;
    private int[] b;
    private int[] c;
    private a d;
    private int e;
    private long f;

    public w(v... vVarArr) {
        this.a = new a[vVarArr.length];
        for (int i = 0; i < vVarArr.length; i++) {
            this.a[i] = vVarArr[i].b_();
        }
    }

    private void a(a aVar) {
        try {
            aVar.b();
        } catch (IOException e) {
            throw new g(e);
        }
    }

    private long b(long j) {
        long b = this.d.b(this.e);
        if (b == Long.MIN_VALUE) {
            return j;
        }
        a(b);
        return b;
    }

    /* Access modifiers changed, original: protected|final */
    public final int a(long j, s sVar, u uVar) {
        return this.d.a(this.e, j, sVar, uVar);
    }

    /* Access modifiers changed, original: protected */
    public void a(int i, long j, boolean z) {
        long e = e(j);
        this.d = this.a[this.b[i]];
        this.e = this.c[i];
        this.d.a(this.e, e);
        a(e);
    }

    public abstract void a(long j);

    /* Access modifiers changed, original: protected|final */
    public final void a(long j, long j2) {
        long e = e(j);
        a(b(e), j2, this.d.b(this.e, e));
    }

    public abstract void a(long j, long j2, boolean z);

    public abstract boolean a(r rVar);

    /* Access modifiers changed, original: protected|final */
    public final r b(int i) {
        return this.a[this.b[i]].a(this.c[i]);
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean c(long j) {
        int i;
        int i2 = 1;
        for (a a : this.a) {
            i2 &= a.a(j);
        }
        if (i2 == 0) {
            return false;
        }
        i2 = 0;
        for (a a2 : this.a) {
            i2 += a2.c();
        }
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        int length = this.a.length;
        i2 = 0;
        long j2 = 0;
        int i3 = 0;
        while (i3 < length) {
            a aVar = this.a[i3];
            int c = aVar.c();
            i = i2;
            i2 = 0;
            while (i2 < c) {
                r a3 = aVar.a(i2);
                try {
                    if (a(a3)) {
                        iArr[i] = i3;
                        iArr2[i] = i2;
                        i++;
                        if (j2 != -1) {
                            long j3 = a3.e;
                            if (j3 == -1) {
                                j2 = -1;
                            } else if (j3 != -2) {
                                j2 = Math.max(j2, j3);
                            }
                        }
                    }
                    i2++;
                } catch (b e) {
                    throw new g(e);
                }
            }
            i3++;
            i2 = i;
        }
        this.f = j2;
        this.b = Arrays.copyOf(iArr, i2);
        this.c = Arrays.copyOf(iArr2, i2);
        return true;
    }

    /* Access modifiers changed, original: protected|final */
    public final void d(long j) {
        long e = e(j);
        this.d.b(e);
        b(e);
    }

    /* Access modifiers changed, original: protected */
    public long e(long j) {
        return j;
    }

    /* Access modifiers changed, original: protected */
    public void g() {
        this.d.c(this.e);
        this.d = null;
    }

    /* Access modifiers changed, original: protected */
    public long p() {
        return this.d.d();
    }

    /* Access modifiers changed, original: protected */
    public long q() {
        return this.f;
    }

    /* Access modifiers changed, original: protected */
    public void r() {
        if (this.d != null) {
            a(this.d);
            return;
        }
        for (a a : this.a) {
            a(a);
        }
    }

    /* Access modifiers changed, original: protected */
    public void s() {
        for (a e : this.a) {
            e.e();
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final int t() {
        return this.c.length;
    }
}
