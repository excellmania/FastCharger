package com.google.android.a.e.c;

import com.google.android.a.h.b;
import com.google.android.a.h.x;

final class l {
    public final int a;
    public final long[] b;
    public final int[] c;
    public final int d;
    public final long[] e;
    public final int[] f;

    l(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
        boolean z = true;
        b.a(iArr.length == jArr2.length);
        b.a(jArr.length == jArr2.length);
        if (iArr2.length != jArr2.length) {
            z = false;
        }
        b.a(z);
        this.b = jArr;
        this.c = iArr;
        this.d = i;
        this.e = jArr2;
        this.f = iArr2;
        this.a = jArr.length;
    }

    public int a(long j) {
        for (int a = x.a(this.e, j, true, false); a >= 0; a--) {
            if ((this.f[a] & 1) != 0) {
                return a;
            }
        }
        return -1;
    }

    public int b(long j) {
        for (int b = x.b(this.e, j, true, false); b < this.e.length; b++) {
            if ((this.f[b] & 1) != 0) {
                return b;
            }
        }
        return -1;
    }
}
