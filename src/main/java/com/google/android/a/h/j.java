package com.google.android.a.h;

import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.a.g.o;
import com.google.android.a.g.r;
import com.google.android.a.g.s;
import java.io.IOException;

public class j<T> implements com.google.android.a.g.o.a {
    volatile String a;
    private final com.google.android.a.g.s.a<T> b;
    private final r c;
    private final Handler d;
    private final a e;
    private int f;
    private o g;
    private s<T> h;
    private long i;
    private int j;
    private long k;
    private b l;
    private volatile T m;
    private volatile long n;
    private volatile long o;

    public interface c {
        String a();
    }

    public interface a {
        void a();

        void a(IOException iOException);

        void b();
    }

    public static final class b extends IOException {
        public b(Throwable th) {
            super(th);
        }
    }

    private long a(long j) {
        return Math.min((j - 1) * 1000, 5000);
    }

    private void a(final IOException iOException) {
        if (this.d != null && this.e != null) {
            this.d.post(new Runnable() {
                public void run() {
                    j.this.e.a(iOException);
                }
            });
        }
    }

    private void g() {
        if (this.d != null && this.e != null) {
            this.d.post(new Runnable() {
                public void run() {
                    j.this.e.a();
                }
            });
        }
    }

    private void h() {
        if (this.d != null && this.e != null) {
            this.d.post(new Runnable() {
                public void run() {
                    j.this.e.b();
                }
            });
        }
    }

    public T a() {
        return this.m;
    }

    public void a(com.google.android.a.g.o.c cVar) {
        if (this.h == cVar) {
            this.m = this.h.a();
            this.n = this.i;
            this.o = SystemClock.elapsedRealtime();
            this.j = 0;
            this.l = null;
            if (this.m instanceof c) {
                String a = ((c) this.m).a();
                if (!TextUtils.isEmpty(a)) {
                    this.a = a;
                }
            }
            h();
        }
    }

    public void a(com.google.android.a.g.o.c cVar, IOException iOException) {
        if (this.h == cVar) {
            this.j++;
            this.k = SystemClock.elapsedRealtime();
            this.l = new b(iOException);
            a(this.l);
        }
    }

    public long b() {
        return this.n;
    }

    public void b(com.google.android.a.g.o.c cVar) {
    }

    public void c() {
        if (this.l != null && this.j > 1) {
            throw this.l;
        }
    }

    public void d() {
        int i = this.f;
        this.f = i + 1;
        if (i == 0) {
            this.j = 0;
            this.l = null;
        }
    }

    public void e() {
        int i = this.f - 1;
        this.f = i;
        if (i == 0 && this.g != null) {
            this.g.c();
            this.g = null;
        }
    }

    public void f() {
        if (this.l == null || SystemClock.elapsedRealtime() >= this.k + a((long) this.j)) {
            if (this.g == null) {
                this.g = new o("manifestLoader");
            }
            if (!this.g.a()) {
                this.h = new s(this.a, this.c, this.b);
                this.i = SystemClock.elapsedRealtime();
                this.g.a(this.h, (com.google.android.a.g.o.a) this);
                g();
            }
        }
    }
}
