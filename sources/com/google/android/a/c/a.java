package com.google.android.a.c;

import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.a.b.g;
import com.google.android.a.b.i;
import com.google.android.a.b.j;
import com.google.android.a.b.l;
import com.google.android.a.b.m;
import com.google.android.a.b.n;
import com.google.android.a.c.a.h;
import com.google.android.a.e.c.e;
import com.google.android.a.g.f;
import com.google.android.a.h.k;
import com.google.android.a.h.u;
import com.google.android.a.r;
import com.google.android.a.y;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class a implements g, com.google.android.a.c.c.a {
    private final Handler a;
    private final a b;
    private final f c;
    private final j d;
    private final com.google.android.a.b.j.b e;
    private final com.google.android.a.h.j<com.google.android.a.c.a.d> f;
    private final c g;
    private final ArrayList<b> h;
    private final SparseArray<c> i;
    private final com.google.android.a.h.c j;
    private final long k;
    private final long l;
    private final long[] m;
    private final boolean n;
    private final int o;
    private com.google.android.a.c.a.d p;
    private com.google.android.a.c.a.d q;
    private b r;
    private int s;
    private y t;
    private boolean u;
    private boolean v;
    private boolean w;
    private IOException x;

    public interface a {
        void a(int i, y yVar);
    }

    protected static final class b {
        public final r a;
        public final int b;
        public final int c;
        private final int d;
        private final i e;
        private final i[] f;

        public b(r rVar, int i, i iVar) {
            this.a = rVar;
            this.d = i;
            this.e = iVar;
            this.f = null;
            this.b = -1;
            this.c = -1;
        }

        public b(r rVar, int i, i[] iVarArr, int i2, int i3) {
            this.a = rVar;
            this.d = i;
            this.f = iVarArr;
            this.b = i2;
            this.c = i3;
            this.e = null;
        }

        public boolean a() {
            return this.f != null;
        }
    }

    protected static final class c {
        public final int a;
        public final long b;
        public final HashMap<String, d> c;
        private final int[] d;
        private com.google.android.a.d.a e;
        private boolean f;
        private boolean g;
        private long h;
        private long i;

        public c(int i, com.google.android.a.c.a.d dVar, int i2, b bVar) {
            int i3;
            this.a = i;
            com.google.android.a.c.a.f a = dVar.a(i2);
            long a2 = a(dVar, i2);
            com.google.android.a.c.a.a aVar = (com.google.android.a.c.a.a) a.c.get(bVar.d);
            List list = aVar.c;
            this.b = a.b * 1000;
            this.e = a(aVar);
            if (bVar.a()) {
                this.d = new int[bVar.f.length];
                for (i3 = 0; i3 < bVar.f.length; i3++) {
                    this.d[i3] = a(list, bVar.f[i3].a);
                }
            } else {
                this.d = new int[]{a(list, bVar.e.a)};
            }
            this.c = new HashMap();
            for (int i4 : this.d) {
                h hVar = (h) list.get(i4);
                this.c.put(hVar.c.a, new d(this.b, a2, hVar));
            }
            a(a2, (h) list.get(this.d[0]));
        }

        private static int a(List<h> list, String str) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= list.size()) {
                    throw new IllegalStateException("Missing format id: " + str);
                } else if (str.equals(((h) list.get(i2)).c.a)) {
                    return i2;
                } else {
                    i = i2 + 1;
                }
            }
        }

        private static long a(com.google.android.a.c.a.d dVar, int i) {
            long b = dVar.b(i);
            return b == -1 ? -1 : 1000 * b;
        }

        private static com.google.android.a.d.a a(com.google.android.a.c.a.a aVar) {
            com.google.android.a.d.a aVar2 = null;
            if (!aVar.d.isEmpty()) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= aVar.d.size()) {
                        break;
                    }
                    com.google.android.a.c.a.b bVar = (com.google.android.a.c.a.b) aVar.d.get(i2);
                    if (!(bVar.b == null || bVar.c == null)) {
                        if (aVar2 == null) {
                            aVar2 = new com.google.android.a.d.a.a();
                        }
                        aVar2.a(bVar.b, bVar.c);
                    }
                    i = i2 + 1;
                }
            }
            return aVar2;
        }

        private void a(long j, h hVar) {
            boolean z = true;
            b e = hVar.e();
            if (e != null) {
                int a = e.a();
                int a2 = e.a(j);
                if (a2 != -1) {
                    z = false;
                }
                this.f = z;
                this.g = e.b();
                this.h = this.b + e.a(a);
                if (!this.f) {
                    this.i = (this.b + e.a(a2)) + e.a(a2, j);
                    return;
                }
                return;
            }
            this.f = false;
            this.g = true;
            this.h = this.b;
            this.i = this.b + j;
        }

        public long a() {
            return this.h;
        }

        public void a(com.google.android.a.c.a.d dVar, int i, b bVar) {
            com.google.android.a.c.a.f a = dVar.a(i);
            long a2 = a(dVar, i);
            List list = ((com.google.android.a.c.a.a) a.c.get(bVar.d)).c;
            for (int i2 : this.d) {
                h hVar = (h) list.get(i2);
                ((d) this.c.get(hVar.c.a)).a(a2, hVar);
            }
            a(a2, (h) list.get(this.d[0]));
        }

        public long b() {
            if (!c()) {
                return this.i;
            }
            throw new IllegalStateException("Period has unbounded index");
        }

        public boolean c() {
            return this.f;
        }

        public boolean d() {
            return this.g;
        }
    }

    protected static final class d {
        public final boolean a;
        public final com.google.android.a.b.d b;
        public h c;
        public b d;
        public r e;
        private final long f;
        private long g;
        private int h;

        public d(long j, long j2, h hVar) {
            com.google.android.a.b.d dVar;
            this.f = j;
            this.g = j2;
            this.c = hVar;
            String str = hVar.c.b;
            this.a = a.b(str);
            if (this.a) {
                dVar = null;
            } else {
                dVar = new com.google.android.a.b.d(a.a(str) ? new com.google.android.a.e.g.f() : new e());
            }
            this.b = dVar;
            this.d = hVar.e();
        }

        public int a() {
            return this.d.a(this.g);
        }

        public int a(long j) {
            return this.d.a(j - this.f, this.g) + this.h;
        }

        public long a(int i) {
            return this.d.a(i - this.h) + this.f;
        }

        public void a(long j, h hVar) {
            b e = this.c.e();
            b e2 = hVar.e();
            this.g = j;
            this.c = hVar;
            if (e != null) {
                this.d = e2;
                if (e.b()) {
                    int a = e.a(this.g);
                    long a2 = e.a(a, this.g) + e.a(a);
                    int a3 = e2.a();
                    long a4 = e2.a(a3);
                    if (a2 == a4) {
                        this.h = ((e.a(this.g) + 1) - a3) + this.h;
                    } else if (a2 < a4) {
                        throw new com.google.android.a.a();
                    } else {
                        this.h = (e.a(a4, this.g) - a3) + this.h;
                    }
                }
            }
        }

        public int b() {
            return this.d.a() + this.h;
        }

        public long b(int i) {
            return a(i) + this.d.a(i - this.h, this.g);
        }

        public boolean c(int i) {
            int a = a();
            return a != -1 && i > a + this.h;
        }

        public com.google.android.a.c.a.g d(int i) {
            return this.d.b(i - this.h);
        }
    }

    public a(com.google.android.a.c.a.d dVar, c cVar, f fVar, j jVar) {
        this(null, dVar, cVar, fVar, jVar, new u(), 0, 0, false, null, null, 0);
    }

    a(com.google.android.a.h.j<com.google.android.a.c.a.d> jVar, com.google.android.a.c.a.d dVar, c cVar, f fVar, j jVar2, com.google.android.a.h.c cVar2, long j, long j2, boolean z, Handler handler, a aVar, int i) {
        this.f = jVar;
        this.p = dVar;
        this.g = cVar;
        this.c = fVar;
        this.d = jVar2;
        this.j = cVar2;
        this.k = j;
        this.l = j2;
        this.v = z;
        this.a = handler;
        this.b = aVar;
        this.o = i;
        this.e = new com.google.android.a.b.j.b();
        this.m = new long[2];
        this.i = new SparseArray();
        this.h = new ArrayList();
        this.n = dVar.d;
    }

    private com.google.android.a.b.c a(com.google.android.a.c.a.g gVar, com.google.android.a.c.a.g gVar2, h hVar, com.google.android.a.b.d dVar, f fVar, int i, int i2) {
        if (gVar != null) {
            gVar2 = gVar.a(gVar2);
            if (gVar2 != null) {
                gVar = gVar2;
            }
        } else {
            gVar = gVar2;
        }
        return new l(fVar, new com.google.android.a.g.h(gVar.a(), gVar.a, gVar.b, hVar.f()), i2, hVar.c, dVar, i);
    }

    private static r a(int i, i iVar, String str, long j) {
        switch (i) {
            case 0:
                return r.a(iVar.a, str, iVar.c, -1, j, iVar.d, iVar.e, null);
            case 1:
                return r.a(iVar.a, str, iVar.c, -1, j, iVar.g, iVar.h, null, iVar.j);
            case 2:
                return r.a(iVar.a, str, iVar.c, j, iVar.j);
            default:
                return null;
        }
    }

    private static String a(i iVar) {
        String str = iVar.b;
        if (k.a(str)) {
            return k.e(iVar.i);
        }
        if (k.b(str)) {
            return k.d(iVar.i);
        }
        if (b(str)) {
            return str;
        }
        if ("application/mp4".equals(str)) {
            if ("stpp".equals(iVar.i)) {
                return "application/ttml+xml";
            }
            if ("wvtt".equals(iVar.i)) {
                return "application/x-mp4vtt";
            }
        }
        return null;
    }

    private void a(com.google.android.a.c.a.d dVar) {
        com.google.android.a.c.a.f a = dVar.a(0);
        while (this.i.size() > 0 && ((c) this.i.valueAt(0)).b < a.b * 1000) {
            this.i.remove(((c) this.i.valueAt(0)).a);
        }
        if (this.i.size() <= dVar.b()) {
            try {
                int size = this.i.size();
                if (size > 0) {
                    ((c) this.i.valueAt(0)).a(dVar, 0, this.r);
                    if (size > 1) {
                        size--;
                        ((c) this.i.valueAt(size)).a(dVar, size, this.r);
                    }
                }
                for (int size2 = this.i.size(); size2 < dVar.b(); size2++) {
                    this.i.put(this.s, new c(this.s, dVar, size2, this.r));
                    this.s++;
                }
                y c = c(d());
                if (this.t == null || !this.t.equals(c)) {
                    this.t = c;
                    a(this.t);
                }
                this.p = dVar;
            } catch (com.google.android.a.a e) {
                this.x = e;
            }
        }
    }

    private void a(final y yVar) {
        if (this.a != null && this.b != null) {
            this.a.post(new Runnable() {
                public void run() {
                    a.this.b.a(a.this.o, yVar);
                }
            });
        }
    }

    static boolean a(String str) {
        return str.startsWith("video/webm") || str.startsWith("audio/webm") || str.startsWith("application/webm");
    }

    private c b(long j) {
        int i = 0;
        if (j < ((c) this.i.valueAt(0)).a()) {
            return (c) this.i.valueAt(0);
        }
        while (i < this.i.size() - 1) {
            c cVar = (c) this.i.valueAt(i);
            if (j < cVar.b()) {
                return cVar;
            }
            i++;
        }
        return (c) this.i.valueAt(this.i.size() - 1);
    }

    static boolean b(String str) {
        return "text/vtt".equals(str) || "application/ttml+xml".equals(str);
    }

    private y c(long j) {
        long j2 = -1;
        c cVar = (c) this.i.valueAt(0);
        c cVar2 = (c) this.i.valueAt(this.i.size() - 1);
        if (!this.p.d || cVar2.d()) {
            return new com.google.android.a.y.b(cVar.a(), cVar2.b());
        }
        long a = cVar.a();
        long b = cVar2.c() ? Long.MAX_VALUE : cVar2.b();
        long a2 = (this.j.a() * 1000) - (j - (this.p.a * 1000));
        if (this.p.f != -1) {
            j2 = this.p.f * 1000;
        }
        return new com.google.android.a.y.a(a, b, a2, j2, this.j);
    }

    private long d() {
        return this.l != 0 ? (this.j.a() * 1000) + this.l : System.currentTimeMillis() * 1000;
    }

    /* Access modifiers changed, original: protected */
    public com.google.android.a.b.c a(c cVar, d dVar, f fVar, r rVar, b bVar, int i, int i2) {
        h hVar = dVar.c;
        i iVar = hVar.c;
        long a = dVar.a(i);
        long b = dVar.b(i);
        com.google.android.a.c.a.g d = dVar.d(i);
        com.google.android.a.g.h hVar2 = new com.google.android.a.g.h(d.a(), d.a, d.b, hVar.f());
        long j = cVar.b - hVar.d;
        if (b(iVar.b)) {
            return new n(fVar, hVar2, 1, iVar, a, b, i, bVar.a, null, cVar.a);
        }
        return new com.google.android.a.b.h(fVar, hVar2, i2, iVar, a, b, i, j, dVar.b, rVar, bVar.b, bVar.c, cVar.e, rVar != null, cVar.a);
    }

    public final r a(int i) {
        return ((b) this.h.get(i)).a;
    }

    public void a() {
        if (this.x != null) {
            throw this.x;
        } else if (this.f != null) {
            this.f.c();
        }
    }

    public void a(long j) {
        if (this.f != null && this.p.d && this.x == null) {
            com.google.android.a.c.a.d dVar = (com.google.android.a.c.a.d) this.f.a();
            if (!(dVar == null || dVar == this.q)) {
                a(dVar);
                this.q = dVar;
            }
            long j2 = this.p.e;
            if (j2 == 0) {
                j2 = 5000;
            }
            if (SystemClock.elapsedRealtime() > j2 + this.f.b()) {
                this.f.f();
            }
        }
    }

    public void a(com.google.android.a.b.c cVar) {
        if (cVar instanceof l) {
            l lVar = (l) cVar;
            String str = lVar.d.a;
            c cVar2 = (c) this.i.get(lVar.f);
            if (cVar2 != null) {
                d dVar = (d) cVar2.c.get(str);
                if (lVar.a()) {
                    dVar.e = lVar.b();
                }
                if (dVar.d == null && lVar.i()) {
                    dVar.d = new d((com.google.android.a.e.a) lVar.j(), lVar.e.a.toString());
                }
                if (cVar2.e == null && lVar.c()) {
                    cVar2.e = lVar.d();
                }
            }
        }
    }

    public void a(com.google.android.a.b.c cVar, Exception exception) {
    }

    public void a(com.google.android.a.c.a.d dVar, int i, int i2, int i3) {
        com.google.android.a.c.a.a aVar = (com.google.android.a.c.a.a) dVar.a(i).c.get(i2);
        i iVar = ((h) aVar.c.get(i3)).c;
        String a = a(iVar);
        if (a == null) {
            Log.w("DashChunkSource", "Skipped track " + iVar.a + " (unknown media mime type)");
            return;
        }
        r a2 = a(aVar.b, iVar, a, dVar.d ? -1 : dVar.b * 1000);
        if (a2 == null) {
            Log.w("DashChunkSource", "Skipped track " + iVar.a + " (unknown media format)");
        } else {
            this.h.add(new b(a2, i2, iVar));
        }
    }

    public void a(com.google.android.a.c.a.d dVar, int i, int i2, int[] iArr) {
        if (this.d == null) {
            Log.w("DashChunkSource", "Skipping adaptive track (missing format evaluator)");
            return;
        }
        com.google.android.a.c.a.a aVar = (com.google.android.a.c.a.a) dVar.a(i).c.get(i2);
        int i3 = 0;
        int i4 = 0;
        i iVar = null;
        i[] iVarArr = new i[iArr.length];
        int i5 = 0;
        while (i5 < iVarArr.length) {
            i iVar2 = ((h) aVar.c.get(iArr[i5])).c;
            i iVar3 = (iVar == null || iVar2.e > i4) ? iVar2 : iVar;
            i3 = Math.max(i3, iVar2.d);
            i4 = Math.max(i4, iVar2.e);
            iVarArr[i5] = iVar2;
            i5++;
            iVar = iVar3;
        }
        Arrays.sort(iVarArr, new com.google.android.a.b.i.a());
        long j = this.n ? -1 : dVar.b * 1000;
        String a = a(iVar);
        if (a == null) {
            Log.w("DashChunkSource", "Skipped adaptive track (unknown media mime type)");
            return;
        }
        r a2 = a(aVar.b, iVar, a, j);
        if (a2 == null) {
            Log.w("DashChunkSource", "Skipped adaptive track (unknown media format)");
        } else {
            this.h.add(new b(a2.a(null), i2, iVarArr, i3, i4));
        }
    }

    public void a(List<? extends m> list) {
        if (this.r.a()) {
            this.d.b();
        }
        if (this.f != null) {
            this.f.e();
        }
        this.i.clear();
        this.e.c = null;
        this.t = null;
        this.x = null;
        this.r = null;
    }

    public final void a(List<? extends m> list, long j, com.google.android.a.b.e eVar) {
        if (this.x != null) {
            eVar.b = null;
            return;
        }
        this.e.a = list.size();
        if (this.e.c == null || !this.w) {
            if (this.r.a()) {
                this.d.a(list, j, this.r.f, this.e);
            } else {
                this.e.c = this.r.e;
                this.e.b = 2;
            }
        }
        i iVar = this.e.c;
        eVar.a = this.e.a;
        if (iVar == null) {
            eVar.b = null;
        } else if (eVar.a != list.size() || eVar.b == null || !eVar.b.d.equals(iVar)) {
            c b;
            Object obj;
            eVar.b = null;
            this.t.a(this.m);
            if (list.isEmpty()) {
                if (this.n) {
                    j = this.v ? Math.max(this.m[0], this.m[1] - this.k) : Math.max(Math.min(j, this.m[1] - 1), this.m[0]);
                }
                b = b(j);
                obj = 1;
            } else {
                if (this.v) {
                    this.v = false;
                }
                m mVar = (m) list.get(eVar.a - 1);
                long j2 = mVar.i;
                if (this.n && j2 < this.m[0]) {
                    this.x = new com.google.android.a.a();
                    return;
                } else if (!this.p.d || j2 < this.m[1]) {
                    c cVar = (c) this.i.valueAt(this.i.size() - 1);
                    if (mVar.f != cVar.a || !((d) cVar.c.get(mVar.d.a)).c(mVar.i())) {
                        cVar = (c) this.i.get(mVar.f);
                        int obj2;
                        if (cVar == null) {
                            b = (c) this.i.valueAt(0);
                            obj2 = 1;
                        } else if (cVar.c() || !((d) cVar.c.get(mVar.d.a)).c(mVar.i())) {
                            b = cVar;
                            obj2 = null;
                        } else {
                            b = (c) this.i.get(mVar.f + 1);
                            obj2 = 1;
                        }
                    } else if (!this.p.d) {
                        eVar.c = true;
                        return;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            d dVar = (d) b.c.get(iVar.a);
            h hVar = dVar.c;
            com.google.android.a.c.a.g gVar = null;
            com.google.android.a.c.a.g gVar2 = null;
            r rVar = dVar.e;
            if (rVar == null) {
                gVar = hVar.c();
            }
            if (dVar.d == null) {
                gVar2 = hVar.d();
            }
            com.google.android.a.b.c a;
            if (gVar == null && gVar2 == null) {
                int a2 = list.isEmpty() ? dVar.a(j) : obj2 != null ? dVar.b() : ((m) list.get(eVar.a - 1)).i();
                a = a(b, dVar, this.c, rVar, this.r, a2, this.e.b);
                this.w = false;
                eVar.b = a;
                return;
            }
            a = a(gVar, gVar2, hVar, dVar.b, this.c, b.a, this.e.b);
            this.w = true;
            eVar.b = a;
        }
    }

    public void b(int i) {
        this.r = (b) this.h.get(i);
        if (this.r.a()) {
            this.d.a();
        }
        if (this.f != null) {
            this.f.d();
            a((com.google.android.a.c.a.d) this.f.a());
            return;
        }
        a(this.p);
    }

    public boolean b() {
        if (!this.u) {
            this.u = true;
            try {
                this.g.a(this.p, 0, this);
            } catch (IOException e) {
                this.x = e;
            }
        }
        return this.x == null;
    }

    public int c() {
        return this.h.size();
    }
}
