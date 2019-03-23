package com.google.android.a;

import android.os.SystemClock;

final class x implements l {
    private boolean a;
    private long b;
    private long c;

    x() {
    }

    private long b(long j) {
        return (SystemClock.elapsedRealtime() * 1000) - j;
    }

    public long a() {
        return this.a ? b(this.c) : this.b;
    }

    public void a(long j) {
        this.b = j;
        this.c = b(j);
    }

    public void b() {
        if (!this.a) {
            this.a = true;
            this.c = b(this.b);
        }
    }

    public void c() {
        if (this.a) {
            this.b = b(this.c);
            this.a = false;
        }
    }
}
