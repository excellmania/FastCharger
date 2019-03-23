package com.google.android.a.c;

import com.google.android.a.c.a.g;
import com.google.android.a.e.a;

final class d implements b {
    private final a a;
    private final String b;

    public d(a aVar, String str) {
        this.a = aVar;
        this.b = str;
    }

    public int a() {
        return 0;
    }

    public int a(long j) {
        return this.a.a - 1;
    }

    public int a(long j, long j2) {
        return this.a.a(j);
    }

    public long a(int i) {
        return this.a.e[i];
    }

    public long a(int i, long j) {
        return this.a.d[i];
    }

    public g b(int i) {
        return new g(this.b, null, this.a.c[i], (long) this.a.b[i]);
    }

    public boolean b() {
        return true;
    }
}
