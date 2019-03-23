package com.google.android.a.e;

import com.google.android.a.h.x;

public final class a implements l {
    public final int a;
    public final int[] b;
    public final long[] c;
    public final long[] d;
    public final long[] e;

    public a(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.a = iArr.length;
        this.b = iArr;
        this.c = jArr;
        this.d = jArr2;
        this.e = jArr3;
    }

    public int a(long j) {
        return x.a(this.e, j, true, true);
    }

    public boolean a() {
        return true;
    }

    public long b(long j) {
        return this.c[a(j)];
    }
}
