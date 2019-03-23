package com.google.android.a.e.d;

import com.google.android.a.e.d.i.b;
import com.google.android.a.e.d.i.c;
import com.google.android.a.e.d.i.d;
import com.google.android.a.e.f;
import com.google.android.a.e.j;
import com.google.android.a.e.l;
import com.google.android.a.h.o;
import com.google.android.a.r;
import com.google.android.a.t;
import java.util.ArrayList;

final class h extends f implements l {
    private a e;
    private int g;
    private long h;
    private boolean i;
    private final d j = new d();
    private long k = -1;
    private d l;
    private b m;
    private long n;
    private long o;
    private long p;
    private long q;

    static final class a {
        public final d a;
        public final b b;
        public final byte[] c;
        public final c[] d;
        public final int e;

        public a(d dVar, b bVar, byte[] bArr, c[] cVarArr, int i) {
            this.a = dVar;
            this.b = bVar;
            this.c = bArr;
            this.d = cVarArr;
            this.e = i;
        }
    }

    h() {
    }

    private static int a(byte b, a aVar) {
        return !aVar.d[e.a(b, aVar.e, 1)].a ? aVar.a.g : aVar.a.h;
    }

    static void a(o oVar, long j) {
        oVar.a(oVar.c() + 4);
        oVar.a[oVar.c() - 4] = (byte) ((int) (j & 255));
        oVar.a[oVar.c() - 3] = (byte) ((int) ((j >>> 8) & 255));
        oVar.a[oVar.c() - 2] = (byte) ((int) ((j >>> 16) & 255));
        oVar.a[oVar.c() - 1] = (byte) ((int) ((j >>> 24) & 255));
    }

    static boolean a(o oVar) {
        try {
            return i.a(1, oVar, true);
        } catch (t e) {
            return false;
        }
    }

    public int a(f fVar, j jVar) {
        if (this.p == 0) {
            if (this.e == null) {
                this.n = fVar.d();
                this.e = a(fVar, this.a);
                this.o = fVar.c();
                this.d.a((l) this);
                if (this.n != -1) {
                    jVar.a = Math.max(0, fVar.d() - 8000);
                    return 1;
                }
            }
            this.p = this.n == -1 ? -1 : this.b.a(fVar);
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.e.a.j);
            arrayList.add(this.e.c);
            this.q = this.n == -1 ? -1 : (this.p * 1000000) / this.e.a.c;
            this.c.a(r.a(null, "audio/vorbis", this.e.a.e, 65025, this.q, this.e.a.b, (int) this.e.a.c, arrayList, null));
            if (this.n != -1) {
                this.j.a(this.n - this.o, this.p);
                jVar.a = this.o;
                return 1;
            }
        }
        if (!this.i && this.k > -1) {
            e.a(fVar);
            long a = this.j.a(this.k, fVar);
            if (a != -1) {
                jVar.a = a;
                return 1;
            }
            this.h = this.b.a(fVar, this.k);
            this.g = this.l.g;
            this.i = true;
        }
        if (!this.b.a(fVar, this.a)) {
            return -1;
        }
        if ((this.a.a[0] & 1) != 1) {
            int a2 = a(this.a.a[0], this.e);
            int i = this.i ? (this.g + a2) / 4 : 0;
            if (this.h + ((long) i) >= this.k) {
                a(this.a, (long) i);
                long j = (this.h * 1000000) / this.e.a.c;
                this.c.a(this.a, this.a.c());
                this.c.a(j, 1, this.a.c(), 0, null);
                this.k = -1;
            }
            this.i = true;
            this.h = ((long) i) + this.h;
            this.g = a2;
        }
        this.a.a();
        return 0;
    }

    /* Access modifiers changed, original: 0000 */
    public a a(f fVar, o oVar) {
        if (this.l == null) {
            this.b.a(fVar, oVar);
            this.l = i.a(oVar);
            oVar.a();
        }
        if (this.m == null) {
            this.b.a(fVar, oVar);
            this.m = i.b(oVar);
            oVar.a();
        }
        this.b.a(fVar, oVar);
        byte[] bArr = new byte[oVar.c()];
        System.arraycopy(oVar.a, 0, bArr, 0, oVar.c());
        c[] a = i.a(oVar, this.l.b);
        int a2 = i.a(a.length - 1);
        oVar.a();
        return new a(this.l, this.m, bArr, a, a2);
    }

    public boolean a() {
        return (this.e == null || this.n == -1) ? false : true;
    }

    public long b(long j) {
        if (j == 0) {
            this.k = -1;
            return this.o;
        }
        this.k = (this.e.a.c * j) / 1000000;
        return Math.max(this.o, (((this.n - this.o) * j) / this.q) - 4000);
    }

    public void b() {
        super.b();
        this.g = 0;
        this.h = 0;
        this.i = false;
    }
}
