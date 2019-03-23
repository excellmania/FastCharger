package com.google.android.a.e;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.util.SparseArray;
import com.google.android.a.g.f;
import com.google.android.a.g.o;
import com.google.android.a.h.x;
import com.google.android.a.r;
import com.google.android.a.s;
import com.google.android.a.t;
import com.google.android.a.u;
import com.google.android.a.v;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public final class h implements g, com.google.android.a.g.o.a, v, com.google.android.a.v.a {
    private static final List<Class<? extends e>> a = new ArrayList();
    private long A;
    private long B;
    private o C;
    private b D;
    private IOException E;
    private int F;
    private long G;
    private boolean H;
    private int I;
    private int J;
    private final c b;
    private final com.google.android.a.g.b c;
    private final int d;
    private final SparseArray<d> e;
    private final int f;
    private final Uri g;
    private final f h;
    private final Handler i;
    private final a j;
    private final int k;
    private volatile boolean l;
    private volatile l m;
    private volatile com.google.android.a.d.a n;
    private boolean o;
    private int p;
    private r[] q;
    private long r;
    private boolean[] s;
    private boolean[] t;
    private boolean[] u;
    private int v;
    private long w;
    private long x;
    private long y;
    private boolean z;

    public interface a {
        void onLoadError(int i, IOException iOException);
    }

    private static class b implements com.google.android.a.g.o.c {
        private final Uri a;
        private final f b;
        private final c c;
        private final com.google.android.a.g.b d;
        private final int e;
        private final j f = new j();
        private volatile boolean g;
        private boolean h;

        public b(Uri uri, f fVar, c cVar, com.google.android.a.g.b bVar, int i, long j) {
            this.a = (Uri) com.google.android.a.h.b.a((Object) uri);
            this.b = (f) com.google.android.a.h.b.a((Object) fVar);
            this.c = (c) com.google.android.a.h.b.a((Object) cVar);
            this.d = (com.google.android.a.g.b) com.google.android.a.h.b.a((Object) bVar);
            this.e = i;
            this.f.a = j;
            this.h = true;
        }

        public void f() {
            this.g = true;
        }

        public boolean g() {
            return this.g;
        }

        public void h() {
            int i;
            f fVar;
            Throwable th;
            int i2 = 0;
            while (i2 == 0 && !this.g) {
                try {
                    long j = this.f.a;
                    long a = this.b.a(new com.google.android.a.g.h(this.a, j, -1, null));
                    if (a != -1) {
                        a += j;
                    }
                    f bVar = new b(this.b, j, a);
                    try {
                        int i3;
                        e a2 = this.c.a(bVar);
                        if (this.h) {
                            a2.b();
                            this.h = false;
                        }
                        int i4 = i2;
                        while (i4 == 0) {
                            try {
                                if (this.g) {
                                    break;
                                }
                                this.d.b(this.e);
                                i4 = a2.a(bVar, this.f);
                            } catch (Throwable th2) {
                                Throwable th3 = th2;
                                i = i4;
                                fVar = bVar;
                                th = th3;
                                if (!(i == 1 || fVar == null)) {
                                    this.f.a = fVar.c();
                                }
                                this.b.b();
                                throw th;
                            }
                        }
                        if (i4 == 1) {
                            i3 = 0;
                        } else {
                            if (bVar != null) {
                                this.f.a = bVar.c();
                            }
                            i3 = i4;
                        }
                        this.b.b();
                        i2 = i3;
                    } catch (Throwable th4) {
                        i = i2;
                        f fVar2 = bVar;
                        th = th4;
                        fVar = fVar2;
                        this.f.a = fVar.c();
                        this.b.b();
                        throw th;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    fVar = null;
                    i = i2;
                    this.f.a = fVar.c();
                    this.b.b();
                    throw th;
                }
            }
        }
    }

    private static final class c {
        private final e[] a;
        private final g b;
        private e c;

        public c(e[] eVarArr, g gVar) {
            this.a = eVarArr;
            this.b = gVar;
        }

        public e a(f fVar) {
            if (this.c != null) {
                return this.c;
            }
            e[] eVarArr = this.a;
            int length = eVarArr.length;
            int i = 0;
            loop0:
            while (i < length) {
                e eVar = eVarArr[i];
                try {
                    if (eVar.a(fVar)) {
                        this.c = eVar;
                        fVar.a();
                        break loop0;
                    }
                    i++;
                } catch (EOFException e) {
                    i++;
                } finally {
                    fVar.a();
                }
            }
            if (this.c == null) {
                throw new e(this.a);
            }
            this.c.a(this.b);
            return this.c;
        }
    }

    private class d extends c {
        public d(com.google.android.a.g.b bVar) {
            super(bVar);
        }

        public void a(long j, int i, int i2, int i3, byte[] bArr) {
            super.a(j, i, i2, i3, bArr);
            h.this.I = h.this.I + 1;
        }
    }

    public static final class e extends t {
        public e(e[] eVarArr) {
            super("None of the available extractors (" + x.a((Object[]) eVarArr) + ") could read the stream.");
        }
    }

    static {
        try {
            a.add(Class.forName("com.google.android.a.e.g.f").asSubclass(e.class));
        } catch (ClassNotFoundException e) {
        }
        try {
            a.add(Class.forName("com.google.android.a.e.c.e").asSubclass(e.class));
        } catch (ClassNotFoundException e2) {
        }
        try {
            a.add(Class.forName("com.google.android.a.e.c.f").asSubclass(e.class));
        } catch (ClassNotFoundException e3) {
        }
        try {
            a.add(Class.forName("com.google.android.a.e.b.c").asSubclass(e.class));
        } catch (ClassNotFoundException e4) {
        }
        try {
            a.add(Class.forName("com.google.android.a.e.e.b").asSubclass(e.class));
        } catch (ClassNotFoundException e5) {
        }
        try {
            a.add(Class.forName("com.google.android.a.e.e.o").asSubclass(e.class));
        } catch (ClassNotFoundException e6) {
        }
        try {
            a.add(Class.forName("com.google.android.a.e.a.b").asSubclass(e.class));
        } catch (ClassNotFoundException e7) {
        }
        try {
            a.add(Class.forName("com.google.android.a.e.d.b").asSubclass(e.class));
        } catch (ClassNotFoundException e8) {
        }
        try {
            a.add(Class.forName("com.google.android.a.e.e.l").asSubclass(e.class));
        } catch (ClassNotFoundException e9) {
        }
        try {
            a.add(Class.forName("com.google.android.a.e.f.a").asSubclass(e.class));
        } catch (ClassNotFoundException e10) {
        }
        try {
            a.add(Class.forName("com.google.android.exoplayer.ext.flac.FlacExtractor").asSubclass(e.class));
        } catch (ClassNotFoundException e11) {
        }
    }

    public h(Uri uri, f fVar, com.google.android.a.g.b bVar, int i, int i2, Handler handler, a aVar, int i3, e... eVarArr) {
        this.g = uri;
        this.h = fVar;
        this.j = aVar;
        this.i = handler;
        this.k = i3;
        this.c = bVar;
        this.d = i;
        this.f = i2;
        if (eVarArr == null || eVarArr.length == 0) {
            eVarArr = new e[a.size()];
            int i4 = 0;
            while (true) {
                int i5 = i4;
                if (i5 >= eVarArr.length) {
                    break;
                }
                try {
                    eVarArr[i5] = (e) ((Class) a.get(i5)).newInstance();
                    i4 = i5 + 1;
                } catch (InstantiationException e) {
                    throw new IllegalStateException("Unexpected error creating default extractor", e);
                } catch (IllegalAccessException e2) {
                    throw new IllegalStateException("Unexpected error creating default extractor", e2);
                }
            }
        }
        this.b = new c(eVarArr, this);
        this.e = new SparseArray();
        this.y = Long.MIN_VALUE;
    }

    public h(Uri uri, f fVar, com.google.android.a.g.b bVar, int i, Handler handler, a aVar, int i2, e... eVarArr) {
        this(uri, fVar, bVar, i, -1, handler, aVar, i2, eVarArr);
    }

    private void a(final IOException iOException) {
        if (this.i != null && this.j != null) {
            this.i.post(new Runnable() {
                public void run() {
                    h.this.j.onLoadError(h.this.k, iOException);
                }
            });
        }
    }

    private void c(long j) {
        this.y = j;
        this.H = false;
        if (this.C.a()) {
            this.C.b();
            return;
        }
        i();
        f();
    }

    private b d(long j) {
        return new b(this.g, this.h, this.b, this.c, this.d, this.m.b(j));
    }

    private void e(long j) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.u.length) {
                if (!this.u[i2]) {
                    ((d) this.e.valueAt(i2)).a(j);
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private long f(long j) {
        return Math.min((j - 1) * 1000, 5000);
    }

    private void f() {
        int i = 0;
        if (!this.H && !this.C.a()) {
            if (this.E == null) {
                this.B = 0;
                this.z = false;
                if (this.o) {
                    com.google.android.a.h.b.b(j());
                    if (this.r == -1 || this.y < this.r) {
                        this.D = d(this.y);
                        this.y = Long.MIN_VALUE;
                    } else {
                        this.H = true;
                        this.y = Long.MIN_VALUE;
                        return;
                    }
                }
                this.D = g();
                this.J = this.I;
                this.C.a(this.D, (com.google.android.a.g.o.a) this);
            } else if (!k()) {
                com.google.android.a.h.b.b(this.D != null);
                if (SystemClock.elapsedRealtime() - this.G >= f((long) this.F)) {
                    this.E = null;
                    if (!this.o) {
                        while (i < this.e.size()) {
                            ((d) this.e.valueAt(i)).a();
                            i++;
                        }
                        this.D = g();
                    } else if (!this.m.a() && this.r == -1) {
                        while (i < this.e.size()) {
                            ((d) this.e.valueAt(i)).a();
                            i++;
                        }
                        this.D = g();
                        this.A = this.w;
                        this.z = true;
                    }
                    this.J = this.I;
                    this.C.a(this.D, (com.google.android.a.g.o.a) this);
                }
            }
        }
    }

    private b g() {
        return new b(this.g, this.h, this.b, this.c, this.d, 0);
    }

    private boolean h() {
        for (int i = 0; i < this.e.size(); i++) {
            if (!((d) this.e.valueAt(i)).d()) {
                return false;
            }
        }
        return true;
    }

    private void i() {
        for (int i = 0; i < this.e.size(); i++) {
            ((d) this.e.valueAt(i)).a();
        }
        this.D = null;
        this.E = null;
        this.F = 0;
    }

    private boolean j() {
        return this.y != Long.MIN_VALUE;
    }

    private boolean k() {
        return this.E instanceof e;
    }

    public int a(int i, long j, s sVar, u uVar) {
        this.w = j;
        if (this.t[i] || j()) {
            return -2;
        }
        d dVar = (d) this.e.valueAt(i);
        if (this.s[i]) {
            sVar.a = dVar.e();
            sVar.b = this.n;
            this.s[i] = false;
            return -4;
        } else if (!dVar.a(uVar)) {
            return this.H ? -1 : -2;
        } else {
            uVar.d = ((uVar.e > this.x ? 1 : (uVar.e == this.x ? 0 : -1)) < 0 ? 134217728 : 0) | uVar.d;
            if (this.z) {
                this.B = this.A - uVar.e;
                this.z = false;
            }
            uVar.e += this.B;
            return -3;
        }
    }

    public r a(int i) {
        com.google.android.a.h.b.b(this.o);
        return this.q[i];
    }

    public void a() {
        this.l = true;
    }

    public void a(int i, long j) {
        com.google.android.a.h.b.b(this.o);
        com.google.android.a.h.b.b(!this.u[i]);
        this.p++;
        this.u[i] = true;
        this.s[i] = true;
        this.t[i] = false;
        if (this.p == 1) {
            if (!this.m.a()) {
                j = 0;
            }
            this.w = j;
            this.x = j;
            c(j);
        }
    }

    public void a(com.google.android.a.d.a aVar) {
        this.n = aVar;
    }

    public void a(l lVar) {
        this.m = lVar;
    }

    public void a(com.google.android.a.g.o.c cVar) {
        this.H = true;
    }

    public void a(com.google.android.a.g.o.c cVar, IOException iOException) {
        this.E = iOException;
        this.F = this.I > this.J ? 1 : this.F + 1;
        this.G = SystemClock.elapsedRealtime();
        a(iOException);
        f();
    }

    public boolean a(long j) {
        if (this.o) {
            return true;
        }
        if (this.C == null) {
            this.C = new o("Loader:ExtractorSampleSource");
        }
        f();
        if (this.m == null || !this.l || !h()) {
            return false;
        }
        int size = this.e.size();
        this.u = new boolean[size];
        this.t = new boolean[size];
        this.s = new boolean[size];
        this.q = new r[size];
        this.r = -1;
        for (int i = 0; i < size; i++) {
            r e = ((d) this.e.valueAt(i)).e();
            this.q[i] = e;
            if (e.e != -1 && e.e > this.r) {
                this.r = e.e;
            }
        }
        this.o = true;
        return true;
    }

    public m a_(int i) {
        d dVar = (d) this.e.get(i);
        if (dVar != null) {
            return dVar;
        }
        dVar = new d(this.c);
        this.e.put(i, dVar);
        return dVar;
    }

    public long b(int i) {
        if (!this.t[i]) {
            return Long.MIN_VALUE;
        }
        this.t[i] = false;
        return this.x;
    }

    public void b() {
        if (this.E != null) {
            if (k()) {
                throw this.E;
            }
            int i = this.f != -1 ? this.f : (this.m == null || this.m.a()) ? 3 : 6;
            if (this.F > i) {
                throw this.E;
            }
        }
    }

    public void b(long j) {
        int i = 0;
        com.google.android.a.h.b.b(this.o);
        com.google.android.a.h.b.b(this.p > 0);
        if (!this.m.a()) {
            j = 0;
        }
        long j2 = j() ? this.y : this.w;
        this.w = j;
        this.x = j;
        if (j2 != j) {
            int i2 = 0;
            int i3 = !j();
            while (i3 != 0 && i2 < this.e.size()) {
                i3 &= ((d) this.e.valueAt(i2)).b(j);
                i2++;
            }
            if (i3 == 0) {
                c(j);
            }
            while (i < this.t.length) {
                this.t[i] = true;
                i++;
            }
        }
    }

    public void b(com.google.android.a.g.o.c cVar) {
        if (this.p > 0) {
            c(this.y);
            return;
        }
        i();
        this.c.a(0);
    }

    public boolean b(int i, long j) {
        com.google.android.a.h.b.b(this.o);
        com.google.android.a.h.b.b(this.u[i]);
        this.w = j;
        e(this.w);
        if (this.H) {
            return true;
        }
        f();
        if (j()) {
            return false;
        }
        return !((d) this.e.valueAt(i)).g();
    }

    public com.google.android.a.v.a b_() {
        this.v++;
        return this;
    }

    public int c() {
        return this.e.size();
    }

    public void c(int i) {
        com.google.android.a.h.b.b(this.o);
        com.google.android.a.h.b.b(this.u[i]);
        this.p--;
        this.u[i] = false;
        if (this.p == 0) {
            this.w = Long.MIN_VALUE;
            if (this.C.a()) {
                this.C.b();
                return;
            }
            i();
            this.c.a(0);
        }
    }

    public long d() {
        if (this.H) {
            return -3;
        }
        if (j()) {
            return this.y;
        }
        long j = Long.MIN_VALUE;
        for (int i = 0; i < this.e.size(); i++) {
            j = Math.max(j, ((d) this.e.valueAt(i)).f());
        }
        return j == Long.MIN_VALUE ? this.w : j;
    }

    public void e() {
        com.google.android.a.h.b.b(this.v > 0);
        int i = this.v - 1;
        this.v = i;
        if (i == 0) {
            if (this.C != null) {
                this.C.c();
                this.C = null;
            }
            if (this.b.c != null) {
                this.b.c.c();
                this.b.c = null;
            }
        }
    }
}
