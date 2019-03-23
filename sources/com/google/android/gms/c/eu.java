package com.google.android.gms.c;

import android.support.v4.media.TransportMediator;
import java.util.Arrays;

public interface eu {

    public static final class a extends ek<a> implements Cloneable {
        public int a;
        public String b;
        public String c;

        public a() {
            a();
        }

        public a a() {
            this.a = 0;
            this.b = "";
            this.c = "";
            this.ag = null;
            this.ah = -1;
            return this;
        }

        /* renamed from: a */
        public a b(ei eiVar) {
            while (true) {
                int a = eiVar.a();
                switch (a) {
                    case 0:
                        break;
                    case 8:
                        this.a = eiVar.e();
                        continue;
                    case 18:
                        this.b = eiVar.g();
                        continue;
                    case 26:
                        this.c = eiVar.g();
                        continue;
                    default:
                        if (!super.a(eiVar, a)) {
                            break;
                        }
                        continue;
                }
            }
            return this;
        }

        public void a(ej ejVar) {
            if (this.a != 0) {
                ejVar.a(1, this.a);
            }
            if (!(this.b == null || this.b.equals(""))) {
                ejVar.a(2, this.b);
            }
            if (!(this.c == null || this.c.equals(""))) {
                ejVar.a(3, this.c);
            }
            super.a(ejVar);
        }

        /* Access modifiers changed, original: protected */
        public int b() {
            int b = super.b();
            if (this.a != 0) {
                b += ej.b(1, this.a);
            }
            if (!(this.b == null || this.b.equals(""))) {
                b += ej.b(2, this.b);
            }
            return (this.c == null || this.c.equals("")) ? b : b + ej.b(3, this.c);
        }

        public /* synthetic */ ek c() {
            return (a) d();
        }

        public /* synthetic */ eq d() {
            return (a) clone();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.a != aVar.a) {
                return false;
            }
            if (this.b == null) {
                if (aVar.b != null) {
                    return false;
                }
            } else if (!this.b.equals(aVar.b)) {
                return false;
            }
            if (this.c == null) {
                if (aVar.c != null) {
                    return false;
                }
            } else if (!this.c.equals(aVar.c)) {
                return false;
            }
            return (this.ag == null || this.ag.b()) ? aVar.ag == null || aVar.ag.b() : this.ag.equals(aVar.ag);
        }

        /* renamed from: g */
        public a clone() {
            try {
                return (a) super.clone();
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.c == null ? 0 : this.c.hashCode()) + (((this.b == null ? 0 : this.b.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + this.a) * 31)) * 31)) * 31;
            if (!(this.ag == null || this.ag.b())) {
                i = this.ag.hashCode();
            }
            return hashCode + i;
        }
    }

    public static final class b extends ek<b> implements Cloneable {
        public byte[] a;
        public String b;
        public byte[][] c;
        public boolean d;

        public b() {
            a();
        }

        public b a() {
            this.a = et.h;
            this.b = "";
            this.c = et.g;
            this.d = false;
            this.ag = null;
            this.ah = -1;
            return this;
        }

        /* renamed from: a */
        public b b(ei eiVar) {
            while (true) {
                int a = eiVar.a();
                switch (a) {
                    case 0:
                        break;
                    case 10:
                        this.a = eiVar.h();
                        continue;
                    case 18:
                        int b = et.b(eiVar, 18);
                        a = this.c == null ? 0 : this.c.length;
                        byte[][] bArr = new byte[(b + a)][];
                        if (a != 0) {
                            System.arraycopy(this.c, 0, bArr, 0, a);
                        }
                        while (a < bArr.length - 1) {
                            bArr[a] = eiVar.h();
                            eiVar.a();
                            a++;
                        }
                        bArr[a] = eiVar.h();
                        this.c = bArr;
                        continue;
                    case 24:
                        this.d = eiVar.f();
                        continue;
                    case 34:
                        this.b = eiVar.g();
                        continue;
                    default:
                        if (!super.a(eiVar, a)) {
                            break;
                        }
                        continue;
                }
            }
            return this;
        }

        public void a(ej ejVar) {
            if (!Arrays.equals(this.a, et.h)) {
                ejVar.a(1, this.a);
            }
            if (this.c != null && this.c.length > 0) {
                for (byte[] bArr : this.c) {
                    if (bArr != null) {
                        ejVar.a(2, bArr);
                    }
                }
            }
            if (this.d) {
                ejVar.a(3, this.d);
            }
            if (!(this.b == null || this.b.equals(""))) {
                ejVar.a(4, this.b);
            }
            super.a(ejVar);
        }

        /* Access modifiers changed, original: protected */
        public int b() {
            int i = 0;
            int b = super.b();
            if (!Arrays.equals(this.a, et.h)) {
                b += ej.b(1, this.a);
            }
            if (this.c != null && this.c.length > 0) {
                int i2 = 0;
                int i3 = 0;
                while (i < this.c.length) {
                    byte[] bArr = this.c[i];
                    if (bArr != null) {
                        i3++;
                        i2 += ej.c(bArr);
                    }
                    i++;
                }
                b = (b + i2) + (i3 * 1);
            }
            if (this.d) {
                b += ej.b(3, this.d);
            }
            return (this.b == null || this.b.equals("")) ? b : b + ej.b(4, this.b);
        }

        public /* synthetic */ ek c() {
            return (b) d();
        }

        public /* synthetic */ eq d() {
            return (b) clone();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (!Arrays.equals(this.a, bVar.a)) {
                return false;
            }
            if (this.b == null) {
                if (bVar.b != null) {
                    return false;
                }
            } else if (!this.b.equals(bVar.b)) {
                return false;
            }
            return (eo.a(this.c, bVar.c) && this.d == bVar.d) ? (this.ag == null || this.ag.b()) ? bVar.ag == null || bVar.ag.b() : this.ag.equals(bVar.ag) : false;
        }

        /* renamed from: g */
        public b clone() {
            try {
                b bVar = (b) super.clone();
                if (this.c != null && this.c.length > 0) {
                    bVar.c = (byte[][]) this.c.clone();
                }
                return bVar;
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.d ? 1231 : 1237) + (((((this.b == null ? 0 : this.b.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + Arrays.hashCode(this.a)) * 31)) * 31) + eo.a(this.c)) * 31)) * 31;
            if (!(this.ag == null || this.ag.b())) {
                i = this.ag.hashCode();
            }
            return hashCode + i;
        }
    }

    public static final class c extends ek<c> implements Cloneable {
        public long a;
        public long b;
        public long c;
        public String d;
        public int e;
        public int f;
        public boolean g;
        public d[] h;
        public byte[] i;
        public a j;
        public byte[] k;
        public String l;
        public String m;
        public String n;
        public long o;
        public b p;
        public byte[] q;
        public String r;
        public int s;
        public int[] t;
        public long u;
        public e v;

        public c() {
            a();
        }

        public c a() {
            this.a = 0;
            this.b = 0;
            this.c = 0;
            this.d = "";
            this.e = 0;
            this.f = 0;
            this.g = false;
            this.h = d.a();
            this.i = et.h;
            this.j = null;
            this.k = et.h;
            this.l = "";
            this.m = "";
            this.n = "";
            this.o = 180000;
            this.p = null;
            this.q = et.h;
            this.r = "";
            this.s = 0;
            this.t = et.a;
            this.u = 0;
            this.v = null;
            this.ag = null;
            this.ah = -1;
            return this;
        }

        /* renamed from: a */
        public c b(ei eiVar) {
            while (true) {
                int a = eiVar.a();
                int b;
                switch (a) {
                    case 0:
                        break;
                    case 8:
                        this.a = eiVar.d();
                        continue;
                    case 18:
                        this.d = eiVar.g();
                        continue;
                    case 26:
                        b = et.b(eiVar, 26);
                        a = this.h == null ? 0 : this.h.length;
                        d[] dVarArr = new d[(b + a)];
                        if (a != 0) {
                            System.arraycopy(this.h, 0, dVarArr, 0, a);
                        }
                        while (a < dVarArr.length - 1) {
                            dVarArr[a] = new d();
                            eiVar.a(dVarArr[a]);
                            eiVar.a();
                            a++;
                        }
                        dVarArr[a] = new d();
                        eiVar.a(dVarArr[a]);
                        this.h = dVarArr;
                        continue;
                    case 34:
                        this.i = eiVar.h();
                        continue;
                    case 50:
                        this.k = eiVar.h();
                        continue;
                    case 66:
                        this.l = eiVar.g();
                        continue;
                    case 74:
                        if (this.j == null) {
                            this.j = new a();
                        }
                        eiVar.a(this.j);
                        continue;
                    case 80:
                        this.g = eiVar.f();
                        continue;
                    case 88:
                        this.e = eiVar.e();
                        continue;
                    case 96:
                        this.f = eiVar.e();
                        continue;
                    case 106:
                        this.m = eiVar.g();
                        continue;
                    case 114:
                        this.n = eiVar.g();
                        continue;
                    case 120:
                        this.o = eiVar.i();
                        continue;
                    case TransportMediator.KEYCODE_MEDIA_RECORD /*130*/:
                        if (this.p == null) {
                            this.p = new b();
                        }
                        eiVar.a(this.p);
                        continue;
                    case 136:
                        this.b = eiVar.d();
                        continue;
                    case 146:
                        this.q = eiVar.h();
                        continue;
                    case 152:
                        a = eiVar.e();
                        switch (a) {
                            case 0:
                            case 1:
                            case 2:
                                this.s = a;
                                break;
                            default:
                                continue;
                        }
                    case 160:
                        b = et.b(eiVar, 160);
                        a = this.t == null ? 0 : this.t.length;
                        int[] iArr = new int[(b + a)];
                        if (a != 0) {
                            System.arraycopy(this.t, 0, iArr, 0, a);
                        }
                        while (a < iArr.length - 1) {
                            iArr[a] = eiVar.e();
                            eiVar.a();
                            a++;
                        }
                        iArr[a] = eiVar.e();
                        this.t = iArr;
                        continue;
                    case 162:
                        int c = eiVar.c(eiVar.j());
                        b = eiVar.p();
                        a = 0;
                        while (eiVar.n() > 0) {
                            eiVar.e();
                            a++;
                        }
                        eiVar.e(b);
                        b = this.t == null ? 0 : this.t.length;
                        int[] iArr2 = new int[(a + b)];
                        if (b != 0) {
                            System.arraycopy(this.t, 0, iArr2, 0, b);
                        }
                        while (b < iArr2.length) {
                            iArr2[b] = eiVar.e();
                            b++;
                        }
                        this.t = iArr2;
                        eiVar.d(c);
                        continue;
                    case 168:
                        this.c = eiVar.d();
                        continue;
                    case 176:
                        this.u = eiVar.d();
                        continue;
                    case 186:
                        if (this.v == null) {
                            this.v = new e();
                        }
                        eiVar.a(this.v);
                        continue;
                    case 194:
                        this.r = eiVar.g();
                        continue;
                    default:
                        if (!super.a(eiVar, a)) {
                            break;
                        }
                        continue;
                }
            }
            return this;
        }

        public void a(ej ejVar) {
            int i = 0;
            if (this.a != 0) {
                ejVar.b(1, this.a);
            }
            if (!(this.d == null || this.d.equals(""))) {
                ejVar.a(2, this.d);
            }
            if (this.h != null && this.h.length > 0) {
                for (eq eqVar : this.h) {
                    if (eqVar != null) {
                        ejVar.a(3, eqVar);
                    }
                }
            }
            if (!Arrays.equals(this.i, et.h)) {
                ejVar.a(4, this.i);
            }
            if (!Arrays.equals(this.k, et.h)) {
                ejVar.a(6, this.k);
            }
            if (!(this.l == null || this.l.equals(""))) {
                ejVar.a(8, this.l);
            }
            if (this.j != null) {
                ejVar.a(9, this.j);
            }
            if (this.g) {
                ejVar.a(10, this.g);
            }
            if (this.e != 0) {
                ejVar.a(11, this.e);
            }
            if (this.f != 0) {
                ejVar.a(12, this.f);
            }
            if (!(this.m == null || this.m.equals(""))) {
                ejVar.a(13, this.m);
            }
            if (!(this.n == null || this.n.equals(""))) {
                ejVar.a(14, this.n);
            }
            if (this.o != 180000) {
                ejVar.c(15, this.o);
            }
            if (this.p != null) {
                ejVar.a(16, this.p);
            }
            if (this.b != 0) {
                ejVar.b(17, this.b);
            }
            if (!Arrays.equals(this.q, et.h)) {
                ejVar.a(18, this.q);
            }
            if (this.s != 0) {
                ejVar.a(19, this.s);
            }
            if (this.t != null && this.t.length > 0) {
                while (i < this.t.length) {
                    ejVar.a(20, this.t[i]);
                    i++;
                }
            }
            if (this.c != 0) {
                ejVar.b(21, this.c);
            }
            if (this.u != 0) {
                ejVar.b(22, this.u);
            }
            if (this.v != null) {
                ejVar.a(23, this.v);
            }
            if (!(this.r == null || this.r.equals(""))) {
                ejVar.a(24, this.r);
            }
            super.a(ejVar);
        }

        /* Access modifiers changed, original: protected */
        public int b() {
            int i;
            int i2 = 0;
            int b = super.b();
            if (this.a != 0) {
                b += ej.e(1, this.a);
            }
            if (!(this.d == null || this.d.equals(""))) {
                b += ej.b(2, this.d);
            }
            if (this.h != null && this.h.length > 0) {
                i = b;
                for (eq eqVar : this.h) {
                    if (eqVar != null) {
                        i += ej.c(3, eqVar);
                    }
                }
                b = i;
            }
            if (!Arrays.equals(this.i, et.h)) {
                b += ej.b(4, this.i);
            }
            if (!Arrays.equals(this.k, et.h)) {
                b += ej.b(6, this.k);
            }
            if (!(this.l == null || this.l.equals(""))) {
                b += ej.b(8, this.l);
            }
            if (this.j != null) {
                b += ej.c(9, this.j);
            }
            if (this.g) {
                b += ej.b(10, this.g);
            }
            if (this.e != 0) {
                b += ej.b(11, this.e);
            }
            if (this.f != 0) {
                b += ej.b(12, this.f);
            }
            if (!(this.m == null || this.m.equals(""))) {
                b += ej.b(13, this.m);
            }
            if (!(this.n == null || this.n.equals(""))) {
                b += ej.b(14, this.n);
            }
            if (this.o != 180000) {
                b += ej.f(15, this.o);
            }
            if (this.p != null) {
                b += ej.c(16, this.p);
            }
            if (this.b != 0) {
                b += ej.e(17, this.b);
            }
            if (!Arrays.equals(this.q, et.h)) {
                b += ej.b(18, this.q);
            }
            if (this.s != 0) {
                b += ej.b(19, this.s);
            }
            if (this.t != null && this.t.length > 0) {
                i = 0;
                while (i2 < this.t.length) {
                    i += ej.b(this.t[i2]);
                    i2++;
                }
                b = (b + i) + (this.t.length * 2);
            }
            if (this.c != 0) {
                b += ej.e(21, this.c);
            }
            if (this.u != 0) {
                b += ej.e(22, this.u);
            }
            if (this.v != null) {
                b += ej.c(23, this.v);
            }
            return (this.r == null || this.r.equals("")) ? b : b + ej.b(24, this.r);
        }

        public /* synthetic */ ek c() {
            return (c) d();
        }

        public /* synthetic */ eq d() {
            return (c) clone();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (this.a != cVar.a || this.b != cVar.b || this.c != cVar.c) {
                return false;
            }
            if (this.d == null) {
                if (cVar.d != null) {
                    return false;
                }
            } else if (!this.d.equals(cVar.d)) {
                return false;
            }
            if (this.e != cVar.e || this.f != cVar.f || this.g != cVar.g || !eo.a(this.h, cVar.h) || !Arrays.equals(this.i, cVar.i)) {
                return false;
            }
            if (this.j == null) {
                if (cVar.j != null) {
                    return false;
                }
            } else if (!this.j.equals(cVar.j)) {
                return false;
            }
            if (!Arrays.equals(this.k, cVar.k)) {
                return false;
            }
            if (this.l == null) {
                if (cVar.l != null) {
                    return false;
                }
            } else if (!this.l.equals(cVar.l)) {
                return false;
            }
            if (this.m == null) {
                if (cVar.m != null) {
                    return false;
                }
            } else if (!this.m.equals(cVar.m)) {
                return false;
            }
            if (this.n == null) {
                if (cVar.n != null) {
                    return false;
                }
            } else if (!this.n.equals(cVar.n)) {
                return false;
            }
            if (this.o != cVar.o) {
                return false;
            }
            if (this.p == null) {
                if (cVar.p != null) {
                    return false;
                }
            } else if (!this.p.equals(cVar.p)) {
                return false;
            }
            if (!Arrays.equals(this.q, cVar.q)) {
                return false;
            }
            if (this.r == null) {
                if (cVar.r != null) {
                    return false;
                }
            } else if (!this.r.equals(cVar.r)) {
                return false;
            }
            if (this.s != cVar.s || !eo.a(this.t, cVar.t) || this.u != cVar.u) {
                return false;
            }
            if (this.v == null) {
                if (cVar.v != null) {
                    return false;
                }
            } else if (!this.v.equals(cVar.v)) {
                return false;
            }
            return (this.ag == null || this.ag.b()) ? cVar.ag == null || cVar.ag.b() : this.ag.equals(cVar.ag);
        }

        /* renamed from: g */
        public c clone() {
            try {
                c cVar = (c) super.clone();
                if (this.h != null && this.h.length > 0) {
                    cVar.h = new d[this.h.length];
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= this.h.length) {
                            break;
                        }
                        if (this.h[i2] != null) {
                            cVar.h[i2] = (d) this.h[i2].d();
                        }
                        i = i2 + 1;
                    }
                }
                if (this.j != null) {
                    cVar.j = (a) this.j.d();
                }
                if (this.p != null) {
                    cVar.p = (b) this.p.d();
                }
                if (this.t != null && this.t.length > 0) {
                    cVar.t = (int[]) this.t.clone();
                }
                if (this.v != null) {
                    cVar.v = (e) this.v.d();
                }
                return cVar;
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.v == null ? 0 : this.v.hashCode()) + (((((((((this.r == null ? 0 : this.r.hashCode()) + (((((this.p == null ? 0 : this.p.hashCode()) + (((((this.n == null ? 0 : this.n.hashCode()) + (((this.m == null ? 0 : this.m.hashCode()) + (((this.l == null ? 0 : this.l.hashCode()) + (((((this.j == null ? 0 : this.j.hashCode()) + (((((((this.g ? 1231 : 1237) + (((((((this.d == null ? 0 : this.d.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + ((int) (this.a ^ (this.a >>> 32)))) * 31) + ((int) (this.b ^ (this.b >>> 32)))) * 31) + ((int) (this.c ^ (this.c >>> 32)))) * 31)) * 31) + this.e) * 31) + this.f) * 31)) * 31) + eo.a(this.h)) * 31) + Arrays.hashCode(this.i)) * 31)) * 31) + Arrays.hashCode(this.k)) * 31)) * 31)) * 31)) * 31) + ((int) (this.o ^ (this.o >>> 32)))) * 31)) * 31) + Arrays.hashCode(this.q)) * 31)) * 31) + this.s) * 31) + eo.a(this.t)) * 31) + ((int) (this.u ^ (this.u >>> 32)))) * 31)) * 31;
            if (!(this.ag == null || this.ag.b())) {
                i = this.ag.hashCode();
            }
            return hashCode + i;
        }
    }

    public static final class d extends ek<d> implements Cloneable {
        private static volatile d[] c;
        public String a;
        public String b;

        public d() {
            g();
        }

        public static d[] a() {
            if (c == null) {
                synchronized (eo.c) {
                    if (c == null) {
                        c = new d[0];
                    }
                }
            }
            return c;
        }

        /* renamed from: a */
        public d b(ei eiVar) {
            while (true) {
                int a = eiVar.a();
                switch (a) {
                    case 0:
                        break;
                    case 10:
                        this.a = eiVar.g();
                        continue;
                    case 18:
                        this.b = eiVar.g();
                        continue;
                    default:
                        if (!super.a(eiVar, a)) {
                            break;
                        }
                        continue;
                }
            }
            return this;
        }

        public void a(ej ejVar) {
            if (!(this.a == null || this.a.equals(""))) {
                ejVar.a(1, this.a);
            }
            if (!(this.b == null || this.b.equals(""))) {
                ejVar.a(2, this.b);
            }
            super.a(ejVar);
        }

        /* Access modifiers changed, original: protected */
        public int b() {
            int b = super.b();
            if (!(this.a == null || this.a.equals(""))) {
                b += ej.b(1, this.a);
            }
            return (this.b == null || this.b.equals("")) ? b : b + ej.b(2, this.b);
        }

        public /* synthetic */ ek c() {
            return (d) d();
        }

        public /* synthetic */ eq d() {
            return (d) clone();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (this.a == null) {
                if (dVar.a != null) {
                    return false;
                }
            } else if (!this.a.equals(dVar.a)) {
                return false;
            }
            if (this.b == null) {
                if (dVar.b != null) {
                    return false;
                }
            } else if (!this.b.equals(dVar.b)) {
                return false;
            }
            return (this.ag == null || this.ag.b()) ? dVar.ag == null || dVar.ag.b() : this.ag.equals(dVar.ag);
        }

        public d g() {
            this.a = "";
            this.b = "";
            this.ag = null;
            this.ah = -1;
            return this;
        }

        /* renamed from: h */
        public d clone() {
            try {
                return (d) super.clone();
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.b == null ? 0 : this.b.hashCode()) + (((this.a == null ? 0 : this.a.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31;
            if (!(this.ag == null || this.ag.b())) {
                i = this.ag.hashCode();
            }
            return hashCode + i;
        }
    }

    public static final class e extends ek<e> implements Cloneable {
        public int a;
        public int b;

        public e() {
            a();
        }

        public e a() {
            this.a = -1;
            this.b = 0;
            this.ag = null;
            this.ah = -1;
            return this;
        }

        /* renamed from: a */
        public e b(ei eiVar) {
            while (true) {
                int a = eiVar.a();
                switch (a) {
                    case 0:
                        break;
                    case 8:
                        a = eiVar.e();
                        switch (a) {
                            case -1:
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                                this.a = a;
                                break;
                            default:
                                continue;
                        }
                    case 16:
                        a = eiVar.e();
                        switch (a) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                            case 16:
                            case 100:
                                this.b = a;
                                break;
                            default:
                                continue;
                        }
                    default:
                        if (!super.a(eiVar, a)) {
                            break;
                        }
                        continue;
                }
            }
            return this;
        }

        public void a(ej ejVar) {
            if (this.a != -1) {
                ejVar.a(1, this.a);
            }
            if (this.b != 0) {
                ejVar.a(2, this.b);
            }
            super.a(ejVar);
        }

        /* Access modifiers changed, original: protected */
        public int b() {
            int b = super.b();
            if (this.a != -1) {
                b += ej.b(1, this.a);
            }
            return this.b != 0 ? b + ej.b(2, this.b) : b;
        }

        public /* synthetic */ ek c() {
            return (e) d();
        }

        public /* synthetic */ eq d() {
            return (e) clone();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return (this.a == eVar.a && this.b == eVar.b) ? (this.ag == null || this.ag.b()) ? eVar.ag == null || eVar.ag.b() : this.ag.equals(eVar.ag) : false;
        }

        /* renamed from: g */
        public e clone() {
            try {
                return (e) super.clone();
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        public int hashCode() {
            int hashCode = (((((getClass().getName().hashCode() + 527) * 31) + this.a) * 31) + this.b) * 31;
            int hashCode2 = (this.ag == null || this.ag.b()) ? 0 : this.ag.hashCode();
            return hashCode2 + hashCode;
        }
    }
}
