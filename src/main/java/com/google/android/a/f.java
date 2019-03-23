package com.google.android.a;

import android.os.Handler;
import com.google.android.a.g.p;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class f implements k {
    private final com.google.android.a.g.b a;
    private final List<Object> b;
    private final HashMap<Object, b> c;
    private final Handler d;
    private final a e;
    private final long f;
    private final long g;
    private final float h;
    private final float i;
    private int j;
    private long k;
    private int l;
    private boolean m;
    private boolean n;

    public interface a {
        void a(boolean z);
    }

    private static class b {
        public final int a;
        public int b = 0;
        public boolean c = false;
        public long d = -1;

        public b(int i) {
            this.a = i;
        }
    }

    public f(com.google.android.a.g.b bVar) {
        this(bVar, null, null);
    }

    public f(com.google.android.a.g.b bVar, Handler handler, a aVar) {
        this(bVar, handler, aVar, 15000, 30000, 0.2f, 0.8f);
    }

    public f(com.google.android.a.g.b bVar, Handler handler, a aVar, int i, int i2, float f, float f2) {
        this.a = bVar;
        this.d = handler;
        this.e = aVar;
        this.b = new ArrayList();
        this.c = new HashMap();
        this.f = ((long) i) * 1000;
        this.g = ((long) i2) * 1000;
        this.h = f;
        this.i = f2;
    }

    private int a(int i) {
        float f = ((float) i) / ((float) this.j);
        return f > this.i ? 0 : f < this.h ? 2 : 1;
    }

    private int a(long j, long j2) {
        if (j2 == -1) {
            return 0;
        }
        long j3 = j2 - j;
        return j3 <= this.g ? j3 < this.f ? 2 : 1 : 0;
    }

    private void a(final boolean z) {
        if (this.d != null && this.e != null) {
            this.d.post(new Runnable() {
                public void run() {
                    f.this.e.a(z);
                }
            });
        }
    }

    private void c() {
        int i = 0;
        int i2 = this.l;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < this.b.size(); i5++) {
            b bVar = (b) this.c.get(this.b.get(i5));
            i4 |= bVar.c;
            i3 |= bVar.d != -1 ? 1 : 0;
            i2 = Math.max(i2, bVar.b);
        }
        boolean z = !this.b.isEmpty() && (!(i4 == 0 && i3 == 0) && (i2 == 2 || (i2 == 1 && this.m)));
        this.m = z;
        if (this.m && !this.n) {
            p.a.a(0);
            this.n = true;
            a(true);
        } else if (!this.m && this.n && i4 == 0) {
            p.a.b(0);
            this.n = false;
            a(false);
        }
        this.k = -1;
        if (this.m) {
            while (i < this.b.size()) {
                long j = ((b) this.c.get(this.b.get(i))).d;
                if (j != -1 && (this.k == -1 || j < this.k)) {
                    this.k = j;
                }
                i++;
            }
        }
    }

    public void a() {
        this.a.a(this.j);
    }

    public void a(Object obj) {
        this.b.remove(obj);
        this.j -= ((b) this.c.remove(obj)).a;
        c();
    }

    public void a(Object obj, int i) {
        this.b.add(obj);
        this.c.put(obj, new b(i));
        this.j += i;
    }

    public boolean a(Object obj, long j, long j2, boolean z) {
        int a = a(j, j2);
        b bVar = (b) this.c.get(obj);
        Object obj2 = (bVar.b == a && bVar.d == j2 && bVar.c == z) ? null : 1;
        if (obj2 != null) {
            bVar.b = a;
            bVar.d = j2;
            bVar.c = z;
        }
        a = this.a.b();
        int a2 = a(a);
        Object obj3 = this.l != a2 ? 1 : null;
        if (obj3 != null) {
            this.l = a2;
        }
        if (!(obj2 == null && obj3 == null)) {
            c();
        }
        return a < this.j && j2 != -1 && j2 <= this.k;
    }

    public com.google.android.a.g.b b() {
        return this.a;
    }
}
