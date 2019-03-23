package com.google.android.a.c.a;

import com.google.android.a.h.x;
import java.util.List;

public abstract class i {
    final g a;
    final long b;
    final long c;

    public static abstract class a extends i {
        final int d;
        final long e;
        final List<d> f;

        public a(g gVar, long j, long j2, int i, long j3, List<d> list) {
            super(gVar, j, j2);
            this.d = i;
            this.e = j3;
            this.f = list;
        }

        public abstract int a(long j);

        public int a(long j, long j2) {
            int b = b();
            int a = a(j2);
            int i;
            if (this.f == null) {
                i = ((int) (j / ((this.e * 1000000) / this.b))) + this.d;
                return i < b ? b : (a == -1 || i <= a) ? i : a;
            } else {
                i = b;
                while (i <= a) {
                    int i2 = (i + a) / 2;
                    long a2 = a(i2);
                    if (a2 < j) {
                        i = i2 + 1;
                    } else if (a2 <= j) {
                        return i2;
                    } else {
                        a = i2 - 1;
                    }
                }
                if (i != b) {
                    i = a;
                }
                return i;
            }
        }

        public final long a(int i) {
            return x.a(this.f != null ? ((d) this.f.get(i - this.d)).a - this.c : ((long) (i - this.d)) * this.e, 1000000, this.b);
        }

        public final long a(int i, long j) {
            return this.f != null ? (((d) this.f.get(i - this.d)).b * 1000000) / this.b : i == a(j) ? j - a(i) : (this.e * 1000000) / this.b;
        }

        public abstract g a(h hVar, int i);

        public int b() {
            return this.d;
        }

        public boolean c() {
            return this.f != null;
        }
    }

    public static class b extends a {
        final List<g> g;

        public b(g gVar, long j, long j2, int i, long j3, List<d> list, List<g> list2) {
            super(gVar, j, j2, i, j3, list);
            this.g = list2;
        }

        public int a(long j) {
            return (this.d + this.g.size()) - 1;
        }

        public g a(h hVar, int i) {
            return (g) this.g.get(i - this.d);
        }

        public boolean c() {
            return true;
        }
    }

    public static class c extends a {
        final j g;
        final j h;
        private final String i;

        public c(g gVar, long j, long j2, int i, long j3, List<d> list, j jVar, j jVar2, String str) {
            super(gVar, j, j2, i, j3, list);
            this.g = jVar;
            this.h = jVar2;
            this.i = str;
        }

        public int a(long j) {
            if (this.f != null) {
                return (this.f.size() + this.d) - 1;
            }
            if (j == -1) {
                return -1;
            }
            long j2 = (this.e * 1000000) / this.b;
            return (((int) x.a(j, j2)) + this.d) - 1;
        }

        public g a(h hVar) {
            if (this.g == null) {
                return super.a(hVar);
            }
            return new g(this.i, this.g.a(hVar.c.a, 0, hVar.c.c, 0), 0, -1);
        }

        public g a(h hVar, int i) {
            return new g(this.i, this.h.a(hVar.c.a, i, hVar.c.c, this.f != null ? ((d) this.f.get(i - this.d)).a : ((long) (i - this.d)) * this.e), 0, -1);
        }
    }

    public static class d {
        long a;
        long b;

        public d(long j, long j2) {
            this.a = j;
            this.b = j2;
        }
    }

    public static class e extends i {
        public final String d;
        final long e;
        final long f;

        public e(g gVar, long j, long j2, String str, long j3, long j4) {
            super(gVar, j, j2);
            this.d = str;
            this.e = j3;
            this.f = j4;
        }

        public e(String str) {
            this(null, 1, 0, str, 0, -1);
        }

        public g b() {
            return this.f <= 0 ? null : new g(this.d, null, this.e, this.f);
        }
    }

    public i(g gVar, long j, long j2) {
        this.a = gVar;
        this.b = j;
        this.c = j2;
    }

    public long a() {
        return x.a(this.c, 1000000, this.b);
    }

    public g a(h hVar) {
        return this.a;
    }
}
