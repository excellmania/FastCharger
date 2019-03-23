package com.google.android.a.e.d;

import com.google.android.a.e.d.e.b;
import com.google.android.a.e.f;
import com.google.android.a.h.o;

final class d {
    private final b a = new b();
    private final o b = new o(282);
    private long c = -1;
    private long d;

    d() {
    }

    public long a(long j, f fVar) {
        int i = 1;
        boolean z = (this.c == -1 || this.d == 0) ? false : true;
        com.google.android.a.h.b.b(z);
        e.a(fVar, this.a, this.b, false);
        long j2 = j - this.a.c;
        if (j2 <= 0 || j2 > 72000) {
            int i2 = this.a.i + this.a.h;
            if (j2 <= 0) {
                i = 2;
            }
            return (fVar.c() - ((long) (i2 * i))) + ((j2 * this.c) / this.d);
        }
        fVar.a();
        return -1;
    }

    public void a(long j, long j2) {
        boolean z = j > 0 && j2 > 0;
        com.google.android.a.h.b.a(z);
        this.c = j;
        this.d = j2;
    }
}
