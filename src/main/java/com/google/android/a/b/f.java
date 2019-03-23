package com.google.android.a.b;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.a.e.c;
import com.google.android.a.g.o;
import com.google.android.a.h.b;
import com.google.android.a.k;
import com.google.android.a.r;
import com.google.android.a.s;
import com.google.android.a.u;
import com.google.android.a.v;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class f implements com.google.android.a.g.o.a, v, com.google.android.a.v.a {
    private final int a;
    private final k b;
    private final g c;
    private final e d;
    private final LinkedList<b> e;
    private final List<b> f;
    private final c g;
    private final int h;
    private final Handler i;
    private final a j;
    private final int k;
    private int l;
    private long m;
    private long n;
    private long o;
    private long p;
    private boolean q;
    private o r;
    private boolean s;
    private IOException t;
    private int u;
    private int v;
    private long w;
    private long x;
    private r y;
    private i z;

    public interface a extends a {
    }

    public f(g gVar, k kVar, int i) {
        this(gVar, kVar, i, null, null, 0);
    }

    public f(g gVar, k kVar, int i, Handler handler, a aVar, int i2) {
        this(gVar, kVar, i, handler, aVar, i2, 3);
    }

    public f(g gVar, k kVar, int i, Handler handler, a aVar, int i2, int i3) {
        this.c = gVar;
        this.b = kVar;
        this.h = i;
        this.i = handler;
        this.j = aVar;
        this.a = i2;
        this.k = i3;
        this.d = new e();
        this.e = new LinkedList();
        this.f = Collections.unmodifiableList(this.e);
        this.g = new c(kVar.b());
        this.l = 0;
        this.o = Long.MIN_VALUE;
    }

    private void a(long j, int i, int i2, i iVar, long j2, long j3) {
        if (this.i != null && this.j != null) {
            final long j4 = j;
            final int i3 = i;
            final int i4 = i2;
            final i iVar2 = iVar;
            final long j5 = j2;
            final long j6 = j3;
            this.i.post(new Runnable() {
                public void run() {
                    f.this.j.a(f.this.a, j4, i3, i4, iVar2, f.this.c(j5), f.this.c(j6));
                }
            });
        }
    }

    private void a(long j, int i, int i2, i iVar, long j2, long j3, long j4, long j5) {
        if (this.i != null && this.j != null) {
            final long j6 = j;
            final int i3 = i;
            final int i4 = i2;
            final i iVar2 = iVar;
            final long j7 = j2;
            final long j8 = j3;
            final long j9 = j4;
            final long j10 = j5;
            this.i.post(new Runnable() {
                public void run() {
                    f.this.j.a(f.this.a, j6, i3, i4, iVar2, f.this.c(j7), f.this.c(j8), j9, j10);
                }
            });
        }
    }

    private void a(long j, long j2) {
        if (this.i != null && this.j != null) {
            final long j3 = j;
            final long j4 = j2;
            this.i.post(new Runnable() {
                public void run() {
                    f.this.j.a(f.this.a, f.this.c(j3), f.this.c(j4));
                }
            });
        }
    }

    private void a(i iVar, int i, long j) {
        if (this.i != null && this.j != null) {
            final i iVar2 = iVar;
            final int i2 = i;
            final long j2 = j;
            this.i.post(new Runnable() {
                public void run() {
                    f.this.j.a(f.this.a, iVar2, i2, f.this.c(j2));
                }
            });
        }
    }

    private void a(final IOException iOException) {
        if (this.i != null && this.j != null) {
            this.i.post(new Runnable() {
                public void run() {
                    f.this.j.a(f.this.a, iOException);
                }
            });
        }
    }

    private boolean a(c cVar) {
        return cVar instanceof b;
    }

    private void d(long j) {
        this.o = j;
        this.s = false;
        if (this.r.a()) {
            this.r.b();
            return;
        }
        this.g.a();
        this.e.clear();
        f();
        h();
    }

    private boolean d(int i) {
        if (this.e.size() <= i) {
            return false;
        }
        long j = 0;
        long j2 = ((b) this.e.getLast()).i;
        b bVar = null;
        while (this.e.size() > i) {
            bVar = (b) this.e.removeLast();
            j = bVar.h;
            this.s = false;
        }
        this.g.a(bVar.a());
        a(j, j2);
        return true;
    }

    private long e(long j) {
        return Math.min((j - 1) * 1000, 5000);
    }

    private void f() {
        this.d.b = null;
        g();
    }

    private void f(final long j) {
        if (this.i != null && this.j != null) {
            this.i.post(new Runnable() {
                public void run() {
                    f.this.j.a(f.this.a, j);
                }
            });
        }
    }

    private void g() {
        this.t = null;
        this.v = 0;
    }

    private void h() {
        boolean d;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long i = i();
        Object obj = this.t != null ? 1 : null;
        boolean z = this.r.a() || obj != null;
        if (!z && ((this.d.b == null && i != -1) || elapsedRealtime - this.p > 2000)) {
            this.p = elapsedRealtime;
            l();
            d = d(this.d.a);
            if (this.d.b == null) {
                i = -1;
            } else if (d) {
                i = i();
            }
        }
        d = this.b.a(this, this.m, i, z);
        if (obj != null) {
            if (elapsedRealtime - this.w >= e((long) this.v)) {
                j();
            }
        } else if (!this.r.a() && d) {
            k();
        }
    }

    private long i() {
        return m() ? this.o : this.s ? -1 : ((b) this.e.getLast()).i;
    }

    private void j() {
        this.t = null;
        o.c cVar = this.d.b;
        if (!a((c) cVar)) {
            l();
            d(this.d.a);
            if (this.d.b == cVar) {
                this.r.a(cVar, (com.google.android.a.g.o.a) this);
                return;
            }
            f(cVar.e());
            k();
        } else if (cVar == this.e.getFirst()) {
            this.r.a(cVar, (com.google.android.a.g.o.a) this);
        } else {
            o.c cVar2 = (b) this.e.removeLast();
            b.b(cVar == cVar2);
            l();
            this.e.add(cVar2);
            if (this.d.b == cVar) {
                this.r.a(cVar, (com.google.android.a.g.o.a) this);
                return;
            }
            f(cVar.e());
            d(this.d.a);
            g();
            k();
        }
    }

    private void k() {
        o.c cVar = this.d.b;
        if (cVar != null) {
            this.x = SystemClock.elapsedRealtime();
            if (a((c) cVar)) {
                b bVar = (b) cVar;
                bVar.a(this.g);
                this.e.add(bVar);
                if (m()) {
                    this.o = Long.MIN_VALUE;
                }
                a(bVar.e.e, bVar.b, bVar.c, bVar.d, bVar.h, bVar.i);
            } else {
                a(cVar.e.e, cVar.b, cVar.c, cVar.d, -1, -1);
            }
            this.r.a(cVar, (com.google.android.a.g.o.a) this);
        }
    }

    private void l() {
        this.d.c = false;
        this.d.a = this.f.size();
        this.c.a(this.f, this.o != Long.MIN_VALUE ? this.o : this.m, this.d);
        this.s = this.d.c;
    }

    private boolean m() {
        return this.o != Long.MIN_VALUE;
    }

    public int a(int i, long j, s sVar, u uVar) {
        int i2 = 0;
        int i3 = 1;
        b.b(this.l == 3);
        this.m = j;
        if (this.q || m()) {
            return -2;
        }
        int i4 = !this.g.g() ? 1 : 0;
        m mVar = (b) this.e.getFirst();
        while (i4 != 0 && this.e.size() > 1 && ((b) this.e.get(1)).a() <= this.g.c()) {
            this.e.removeFirst();
            mVar = (b) this.e.getFirst();
        }
        i iVar = mVar.d;
        if (!iVar.equals(this.z)) {
            a(iVar, mVar.c, mVar.h);
        }
        this.z = iVar;
        if (i4 != 0 || mVar.a) {
            r b = mVar.b();
            if (b.equals(this.y)) {
                this.y = b;
            } else {
                sVar.a = b;
                sVar.b = mVar.c();
                this.y = b;
                return -4;
            }
        }
        if (i4 == 0) {
            return this.s ? -1 : -2;
        } else {
            if (!this.g.a(uVar)) {
                return -2;
            }
            if (uVar.e >= this.n) {
                i3 = 0;
            }
            int i5 = uVar.d;
            if (i3 != 0) {
                i2 = 134217728;
            }
            uVar.d = i5 | i2;
            a(mVar, uVar);
            return -3;
        }
    }

    public r a(int i) {
        boolean z = this.l == 2 || this.l == 3;
        b.b(z);
        return this.c.a(i);
    }

    public void a(int i, long j) {
        boolean z = true;
        b.b(this.l == 2);
        int i2 = this.u;
        this.u = i2 + 1;
        if (i2 != 0) {
            z = false;
        }
        b.b(z);
        this.l = 3;
        this.c.b(i);
        this.b.a(this, this.h);
        this.z = null;
        this.y = null;
        this.m = j;
        this.n = j;
        this.q = false;
        d(j);
    }

    /* Access modifiers changed, original: protected */
    public void a(m mVar, u uVar) {
    }

    public void a(o.c cVar) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = elapsedRealtime - this.x;
        c cVar2 = this.d.b;
        this.c.a(cVar2);
        if (a(cVar2)) {
            b bVar = (b) cVar2;
            a(cVar2.e(), bVar.b, bVar.c, bVar.d, bVar.h, bVar.i, elapsedRealtime, j);
        } else {
            a(cVar2.e(), cVar2.b, cVar2.c, cVar2.d, -1, -1, elapsedRealtime, j);
        }
        f();
        h();
    }

    public void a(o.c cVar, IOException iOException) {
        this.t = iOException;
        this.v++;
        this.w = SystemClock.elapsedRealtime();
        a(iOException);
        this.c.a(this.d.b, iOException);
        h();
    }

    public boolean a(long j) {
        boolean z = this.l == 1 || this.l == 2;
        b.b(z);
        if (this.l == 2) {
            return true;
        }
        if (!this.c.b()) {
            return false;
        }
        if (this.c.c() > 0) {
            this.r = new o("Loader:" + this.c.a(0).b);
        }
        this.l = 2;
        return true;
    }

    public long b(int i) {
        if (!this.q) {
            return Long.MIN_VALUE;
        }
        this.q = false;
        return this.n;
    }

    public void b() {
        if (this.t != null && this.v > this.k) {
            throw this.t;
        } else if (this.d.b == null) {
            this.c.a();
        }
    }

    public void b(long j) {
        int i = 0;
        b.b(this.l == 3);
        long j2 = m() ? this.o : this.m;
        this.m = j;
        this.n = j;
        if (j2 != j) {
            int i2 = (m() || !this.g.b(j)) ? 0 : 1;
            if (i2 != 0) {
                if (!this.g.g()) {
                    i = 1;
                }
                while (i != 0 && this.e.size() > 1 && ((b) this.e.get(1)).a() <= this.g.c()) {
                    this.e.removeFirst();
                }
            } else {
                d(j);
            }
            this.q = true;
        }
    }

    public void b(o.c cVar) {
        f(this.d.b.e());
        f();
        if (this.l == 3) {
            d(this.o);
            return;
        }
        this.g.a();
        this.e.clear();
        f();
        this.b.a();
    }

    public boolean b(int i, long j) {
        b.b(this.l == 3);
        this.m = j;
        this.c.a(j);
        h();
        return this.s || !this.g.g();
    }

    public com.google.android.a.v.a b_() {
        b.b(this.l == 0);
        this.l = 1;
        return this;
    }

    public int c() {
        boolean z = this.l == 2 || this.l == 3;
        b.b(z);
        return this.c.c();
    }

    /* Access modifiers changed, original: protected|final */
    public final long c(long j) {
        return j / 1000;
    }

    public void c(int i) {
        boolean z = true;
        b.b(this.l == 3);
        int i2 = this.u - 1;
        this.u = i2;
        if (i2 != 0) {
            z = false;
        }
        b.b(z);
        this.l = 2;
        try {
            this.c.a(this.e);
        } finally {
            this.b.a(this);
            if (this.r.a()) {
                this.r.b();
            } else {
                this.g.a();
                this.e.clear();
                f();
                this.b.a();
            }
        }
    }

    public long d() {
        b.b(this.l == 3);
        if (m()) {
            return this.o;
        }
        if (this.s) {
            return -3;
        }
        long f = this.g.f();
        return f == Long.MIN_VALUE ? this.m : f;
    }

    public void e() {
        b.b(this.l != 3);
        if (this.r != null) {
            this.r.c();
            this.r = null;
        }
        this.l = 0;
    }
}
