package com.google.android.a;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import com.google.android.a.h.a;
import com.google.android.a.h.b;
import com.google.android.a.h.s;
import com.google.android.a.h.v;
import com.google.android.a.h.x;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

final class j implements Callback {
    private final Handler a;
    private final HandlerThread b;
    private final Handler c;
    private final x d;
    private final AtomicInteger e;
    private final List<z> f;
    private final r[][] g;
    private final int[] h;
    private final long i;
    private final long j;
    private z[] k;
    private z l;
    private l m;
    private boolean n;
    private boolean o;
    private boolean p;
    private int q;
    private int r = 0;
    private int s = 0;
    private long t;
    private long u;
    private volatile long v;
    private volatile long w;
    private volatile long x;

    public j(Handler handler, boolean z, int[] iArr, int i, int i2) {
        this.c = handler;
        this.o = z;
        this.i = ((long) i) * 1000;
        this.j = ((long) i2) * 1000;
        this.h = Arrays.copyOf(iArr, iArr.length);
        this.q = 1;
        this.v = -1;
        this.x = -1;
        this.d = new x();
        this.e = new AtomicInteger();
        this.f = new ArrayList(iArr.length);
        this.g = new r[iArr.length][];
        this.b = new s("ExoPlayerImplInternal:Handler", -16);
        this.b.start();
        this.a = new Handler(this.b.getLooper(), this);
    }

    private void a(int i) {
        if (this.q != i) {
            this.q = i;
            this.c.obtainMessage(2, i, 0).sendToTarget();
        }
    }

    private void a(int i, int i2) {
        boolean z = true;
        if (this.h[i] != i2) {
            this.h[i] = i2;
            if (this.q != 1 && this.q != 2) {
                z zVar = this.k[i];
                int u = zVar.u();
                if (u != 0 && u != -1 && zVar.t() != 0) {
                    boolean z2 = u == 2 || u == 3;
                    boolean z3 = i2 >= 0 && i2 < this.g[i].length;
                    if (z2) {
                        if (!z3 && zVar == this.l) {
                            this.d.a(this.m.a());
                        }
                        e(zVar);
                        this.f.remove(zVar);
                    }
                    if (z3) {
                        z3 = this.o && this.q == 4;
                        if (z2 || !z3) {
                            z = false;
                        }
                        a(zVar, i2, z);
                        if (z3) {
                            zVar.v();
                        }
                        this.a.sendEmptyMessage(7);
                    }
                }
            }
        }
    }

    private void a(int i, long j, long j2) {
        long elapsedRealtime = (j + j2) - SystemClock.elapsedRealtime();
        if (elapsedRealtime <= 0) {
            this.a.sendEmptyMessage(i);
        } else {
            this.a.sendEmptyMessageDelayed(i, elapsedRealtime);
        }
    }

    private <T> void a(int i, Object obj) {
        try {
            Pair pair = (Pair) obj;
            ((a) pair.first).a(i, pair.second);
            if (!(this.q == 1 || this.q == 2)) {
                this.a.sendEmptyMessage(7);
            }
            synchronized (this) {
                this.s++;
                notifyAll();
            }
        } catch (Throwable th) {
            synchronized (this) {
                this.s++;
                notifyAll();
            }
        }
    }

    private void a(z zVar, int i, boolean z) {
        zVar.b(i, this.w, z);
        this.f.add(zVar);
        l b = zVar.b();
        if (b != null) {
            b.b(this.m == null);
            this.m = b;
            this.l = zVar;
        }
    }

    private boolean a(z zVar) {
        boolean z = false;
        if (zVar.e()) {
            return true;
        }
        if (!zVar.f()) {
            return false;
        }
        if (this.q == 4) {
            return true;
        }
        long q = zVar.q();
        long p = zVar.p();
        long j = this.p ? this.j : this.i;
        if (j <= 0 || p == -1 || p == -3 || p >= j + this.w || !(q == -1 || q == -2 || p < q)) {
            z = true;
        }
        return z;
    }

    private void b(long j) {
        try {
            if (j != this.w / 1000) {
                this.p = false;
                this.w = j * 1000;
                this.d.c();
                this.d.a(this.w);
                if (this.q == 1 || this.q == 2) {
                    this.e.decrementAndGet();
                    return;
                }
                for (int i = 0; i < this.f.size(); i++) {
                    z zVar = (z) this.f.get(i);
                    d(zVar);
                    zVar.d(this.w);
                }
                a(3);
                this.a.sendEmptyMessage(7);
                this.e.decrementAndGet();
            }
        } finally {
            this.e.decrementAndGet();
        }
    }

    private void b(z zVar) {
        try {
            e(zVar);
        } catch (g e) {
            Log.e("ExoPlayerImplInternal", "Stop failed.", e);
        } catch (RuntimeException e2) {
            Log.e("ExoPlayerImplInternal", "Stop failed.", e2);
        }
    }

    private void b(boolean z) {
        try {
            this.p = false;
            this.o = z;
            if (!z) {
                g();
                h();
            } else if (this.q == 4) {
                f();
                this.a.sendEmptyMessage(7);
            } else if (this.q == 3) {
                this.a.sendEmptyMessage(7);
            }
            this.c.obtainMessage(3).sendToTarget();
        } catch (Throwable th) {
            this.c.obtainMessage(3).sendToTarget();
        }
    }

    private void b(z[] zVarArr) {
        l();
        this.k = zVarArr;
        Arrays.fill(this.g, null);
        a(2);
        e();
    }

    private void c(z zVar) {
        try {
            zVar.y();
        } catch (g e) {
            Log.e("ExoPlayerImplInternal", "Release failed.", e);
        } catch (RuntimeException e2) {
            Log.e("ExoPlayerImplInternal", "Release failed.", e2);
        }
    }

    private void d(z zVar) {
        if (zVar.u() == 3) {
            zVar.w();
        }
    }

    private void e() {
        int i;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Object obj = 1;
        for (z zVar : this.k) {
            if (zVar.u() == 0 && zVar.f(this.w) == 0) {
                zVar.r();
                obj = null;
            }
        }
        if (obj == null) {
            a(2, elapsedRealtime, 10);
            return;
        }
        long j = 0;
        Object obj2 = 1;
        obj = 1;
        for (i = 0; i < this.k.length; i++) {
            int i2;
            z zVar2 = this.k[i];
            int t = zVar2.t();
            r[] rVarArr = new r[t];
            for (i2 = 0; i2 < t; i2++) {
                rVarArr[i2] = zVar2.b(i2);
            }
            this.g[i] = rVarArr;
            if (t > 0) {
                if (j != -1) {
                    long q = zVar2.q();
                    if (q == -1) {
                        j = -1;
                    } else if (q != -2) {
                        j = Math.max(j, q);
                    }
                }
                i2 = this.h[i];
                if (i2 >= 0 && i2 < rVarArr.length) {
                    a(zVar2, i2, false);
                    obj2 = (obj2 == null || !zVar2.e()) ? null : 1;
                    obj = (obj == null || !a(zVar2)) ? null : 1;
                }
            }
        }
        this.v = j;
        if (obj2 == null || (j != -1 && j > this.w)) {
            this.q = obj != null ? 4 : 3;
        } else {
            this.q = 5;
        }
        this.c.obtainMessage(1, this.q, 0, this.g).sendToTarget();
        if (this.o && this.q == 4) {
            f();
        }
        this.a.sendEmptyMessage(7);
    }

    private void e(z zVar) {
        d(zVar);
        if (zVar.u() == 2) {
            zVar.x();
            if (zVar == this.l) {
                this.m = null;
                this.l = null;
            }
        }
    }

    private void f() {
        boolean z = false;
        this.p = false;
        this.d.b();
        while (true) {
            boolean z2 = z;
            if (z2 < this.f.size()) {
                ((z) this.f.get(z2)).v();
                z = z2 + 1;
            } else {
                return;
            }
        }
    }

    private void g() {
        this.d.c();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f.size()) {
                d((z) this.f.get(i2));
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private void h() {
        if (this.m == null || !this.f.contains(this.l) || this.l.e()) {
            this.w = this.d.a();
        } else {
            this.w = this.m.a();
            this.d.a(this.w);
        }
        this.u = SystemClock.elapsedRealtime() * 1000;
    }

    private void i() {
        v.a("doSomeWork");
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.v != -1 ? this.v : Long.MAX_VALUE;
        h();
        Object obj = 1;
        Object obj2 = 1;
        long j2 = j;
        for (int i = 0; i < this.f.size(); i++) {
            z zVar = (z) this.f.get(i);
            zVar.a(this.w, this.u);
            obj2 = (obj2 == null || !zVar.e()) ? null : 1;
            boolean a = a(zVar);
            if (!a) {
                zVar.r();
            }
            obj = (obj == null || !a) ? null : 1;
            if (j2 != -1) {
                long q = zVar.q();
                long p = zVar.p();
                if (p == -1) {
                    j2 = -1;
                } else if (p != -3 && (q == -1 || q == -2 || p < q)) {
                    j2 = Math.min(j2, p);
                }
            }
        }
        this.x = j2;
        if (obj2 != null && (this.v == -1 || this.v <= this.w)) {
            a(5);
            g();
        } else if (this.q == 3 && obj != null) {
            a(4);
            if (this.o) {
                f();
            }
        } else if (this.q == 4 && obj == null) {
            this.p = this.o;
            a(3);
            g();
        }
        this.a.removeMessages(7);
        if ((this.o && this.q == 4) || this.q == 3) {
            a(7, elapsedRealtime, 10);
        } else if (!this.f.isEmpty()) {
            a(7, elapsedRealtime, 1000);
        }
        v.a();
    }

    private void j() {
        l();
        a(1);
    }

    private void k() {
        l();
        a(1);
        synchronized (this) {
            this.n = true;
            notifyAll();
        }
    }

    private void l() {
        int i = 0;
        this.a.removeMessages(7);
        this.a.removeMessages(2);
        this.p = false;
        this.d.c();
        if (this.k != null) {
            while (i < this.k.length) {
                z zVar = this.k[i];
                b(zVar);
                c(zVar);
                i++;
            }
            this.k = null;
            this.m = null;
            this.l = null;
            this.f.clear();
        }
    }

    public long a() {
        return this.e.get() > 0 ? this.t : this.w / 1000;
    }

    public void a(long j) {
        this.t = j;
        this.e.incrementAndGet();
        this.a.obtainMessage(6, x.a(j), x.b(j)).sendToTarget();
    }

    public void a(a aVar, int i, Object obj) {
        this.r++;
        this.a.obtainMessage(9, i, 0, Pair.create(aVar, obj)).sendToTarget();
    }

    public void a(boolean z) {
        this.a.obtainMessage(3, z ? 1 : 0, 0).sendToTarget();
    }

    public void a(z... zVarArr) {
        this.a.obtainMessage(1, zVarArr).sendToTarget();
    }

    public long b() {
        return this.x == -1 ? -1 : this.x / 1000;
    }

    public long c() {
        return this.v == -1 ? -1 : this.v / 1000;
    }

    public synchronized void d() {
        if (!this.n) {
            this.a.sendEmptyMessage(5);
            while (!this.n) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
            this.b.quit();
        }
    }

    public boolean handleMessage(Message message) {
        boolean z = false;
        try {
            switch (message.what) {
                case 1:
                    b((z[]) message.obj);
                    return true;
                case 2:
                    e();
                    return true;
                case 3:
                    if (message.arg1 != 0) {
                        z = true;
                    }
                    b(z);
                    return true;
                case 4:
                    j();
                    return true;
                case 5:
                    k();
                    return true;
                case 6:
                    b(x.b(message.arg1, message.arg2));
                    return true;
                case 7:
                    i();
                    return true;
                case 8:
                    a(message.arg1, message.arg2);
                    return true;
                case 9:
                    a(message.arg1, message.obj);
                    return true;
                default:
                    return false;
            }
        } catch (g e) {
            Log.e("ExoPlayerImplInternal", "Internal track renderer error.", e);
            this.c.obtainMessage(4, e).sendToTarget();
            j();
            return true;
        } catch (RuntimeException e2) {
            Log.e("ExoPlayerImplInternal", "Internal runtime error.", e2);
            this.c.obtainMessage(4, new g(e2, true)).sendToTarget();
            j();
            return true;
        }
    }
}
