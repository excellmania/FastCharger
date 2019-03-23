package com.google.android.gms.c;

import org.apache.http.HttpStatus;

public interface aw {

    public static final class a extends ek<a> {
        public Long A;
        public String B;
        public Long C;
        public Long D;
        public Long E;
        public b F;
        public Long G;
        public Long H;
        public Long I;
        public Long J;
        public Long K;
        public Long L;
        public String M;
        public String N;
        public Integer O;
        public Integer P;
        public Long Q;
        public Long R;
        public Long S;
        public Long T;
        public Long U;
        public Integer V;
        public a W;
        public a[] X;
        public b Y;
        public Long Z;
        public String a;
        public String aa;
        public Integer ab;
        public Boolean ac;
        public String ad;
        public Long ae;
        public e af;
        public String b;
        public Long c;
        public Long d;
        public Long e;
        public Long f;
        public Long g;
        public Long h;
        public Long i;
        public Long j;
        public Long k;
        public Long l;
        public String m;
        public Long n;
        public Long o;
        public Long p;
        public Long q;
        public Long r;
        public Long s;
        public Long t;
        public Long u;
        public Long v;
        public String w;
        public String x;
        public Long y;
        public Long z;

        public static final class a extends ek<a> {
            private static volatile a[] m;
            public Long a;
            public Long b;
            public Long c;
            public Long d;
            public Long e;
            public Long f;
            public Integer g;
            public Long h;
            public Long i;
            public Long j;
            public Integer k;
            public Long l;

            public a() {
                this.a = null;
                this.b = null;
                this.c = null;
                this.d = null;
                this.e = null;
                this.f = null;
                this.g = null;
                this.h = null;
                this.i = null;
                this.j = null;
                this.k = null;
                this.l = null;
                this.ah = -1;
            }

            public static a[] a() {
                if (m == null) {
                    synchronized (eo.c) {
                        if (m == null) {
                            m = new a[0];
                        }
                    }
                }
                return m;
            }

            /* renamed from: a */
            public a b(ei eiVar) {
                while (true) {
                    int a = eiVar.a();
                    switch (a) {
                        case 0:
                            break;
                        case 8:
                            this.a = Long.valueOf(eiVar.d());
                            continue;
                        case 16:
                            this.b = Long.valueOf(eiVar.d());
                            continue;
                        case 24:
                            this.c = Long.valueOf(eiVar.d());
                            continue;
                        case 32:
                            this.d = Long.valueOf(eiVar.d());
                            continue;
                        case 40:
                            this.e = Long.valueOf(eiVar.d());
                            continue;
                        case 48:
                            this.f = Long.valueOf(eiVar.d());
                            continue;
                        case 56:
                            a = eiVar.e();
                            switch (a) {
                                case 0:
                                case 1:
                                case 2:
                                case 1000:
                                    this.g = Integer.valueOf(a);
                                    break;
                                default:
                                    continue;
                            }
                        case 64:
                            this.h = Long.valueOf(eiVar.d());
                            continue;
                        case 72:
                            this.i = Long.valueOf(eiVar.d());
                            continue;
                        case 80:
                            this.j = Long.valueOf(eiVar.d());
                            continue;
                        case 88:
                            a = eiVar.e();
                            switch (a) {
                                case 0:
                                case 1:
                                case 2:
                                case 1000:
                                    this.k = Integer.valueOf(a);
                                    break;
                                default:
                                    continue;
                            }
                        case 96:
                            this.l = Long.valueOf(eiVar.d());
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
                if (this.a != null) {
                    ejVar.b(1, this.a.longValue());
                }
                if (this.b != null) {
                    ejVar.b(2, this.b.longValue());
                }
                if (this.c != null) {
                    ejVar.b(3, this.c.longValue());
                }
                if (this.d != null) {
                    ejVar.b(4, this.d.longValue());
                }
                if (this.e != null) {
                    ejVar.b(5, this.e.longValue());
                }
                if (this.f != null) {
                    ejVar.b(6, this.f.longValue());
                }
                if (this.g != null) {
                    ejVar.a(7, this.g.intValue());
                }
                if (this.h != null) {
                    ejVar.b(8, this.h.longValue());
                }
                if (this.i != null) {
                    ejVar.b(9, this.i.longValue());
                }
                if (this.j != null) {
                    ejVar.b(10, this.j.longValue());
                }
                if (this.k != null) {
                    ejVar.a(11, this.k.intValue());
                }
                if (this.l != null) {
                    ejVar.b(12, this.l.longValue());
                }
                super.a(ejVar);
            }

            /* Access modifiers changed, original: protected */
            public int b() {
                int b = super.b();
                if (this.a != null) {
                    b += ej.e(1, this.a.longValue());
                }
                if (this.b != null) {
                    b += ej.e(2, this.b.longValue());
                }
                if (this.c != null) {
                    b += ej.e(3, this.c.longValue());
                }
                if (this.d != null) {
                    b += ej.e(4, this.d.longValue());
                }
                if (this.e != null) {
                    b += ej.e(5, this.e.longValue());
                }
                if (this.f != null) {
                    b += ej.e(6, this.f.longValue());
                }
                if (this.g != null) {
                    b += ej.b(7, this.g.intValue());
                }
                if (this.h != null) {
                    b += ej.e(8, this.h.longValue());
                }
                if (this.i != null) {
                    b += ej.e(9, this.i.longValue());
                }
                if (this.j != null) {
                    b += ej.e(10, this.j.longValue());
                }
                if (this.k != null) {
                    b += ej.b(11, this.k.intValue());
                }
                return this.l != null ? b + ej.e(12, this.l.longValue()) : b;
            }
        }

        public static final class b extends ek<b> {
            public Long a;
            public Long b;
            public Long c;

            public b() {
                this.a = null;
                this.b = null;
                this.c = null;
                this.ah = -1;
            }

            /* renamed from: a */
            public b b(ei eiVar) {
                while (true) {
                    int a = eiVar.a();
                    switch (a) {
                        case 0:
                            break;
                        case 8:
                            this.a = Long.valueOf(eiVar.d());
                            continue;
                        case 16:
                            this.b = Long.valueOf(eiVar.d());
                            continue;
                        case 24:
                            this.c = Long.valueOf(eiVar.d());
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
                if (this.a != null) {
                    ejVar.b(1, this.a.longValue());
                }
                if (this.b != null) {
                    ejVar.b(2, this.b.longValue());
                }
                if (this.c != null) {
                    ejVar.b(3, this.c.longValue());
                }
                super.a(ejVar);
            }

            /* Access modifiers changed, original: protected */
            public int b() {
                int b = super.b();
                if (this.a != null) {
                    b += ej.e(1, this.a.longValue());
                }
                if (this.b != null) {
                    b += ej.e(2, this.b.longValue());
                }
                return this.c != null ? b + ej.e(3, this.c.longValue()) : b;
            }
        }

        public a() {
            this.a = null;
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = null;
            this.f = null;
            this.g = null;
            this.h = null;
            this.i = null;
            this.j = null;
            this.k = null;
            this.l = null;
            this.m = null;
            this.n = null;
            this.o = null;
            this.p = null;
            this.q = null;
            this.r = null;
            this.s = null;
            this.t = null;
            this.u = null;
            this.v = null;
            this.w = null;
            this.x = null;
            this.y = null;
            this.z = null;
            this.A = null;
            this.B = null;
            this.C = null;
            this.D = null;
            this.E = null;
            this.G = null;
            this.H = null;
            this.I = null;
            this.J = null;
            this.K = null;
            this.L = null;
            this.M = null;
            this.N = null;
            this.O = null;
            this.P = null;
            this.Q = null;
            this.R = null;
            this.S = null;
            this.T = null;
            this.U = null;
            this.V = null;
            this.X = a.a();
            this.Z = null;
            this.aa = null;
            this.ab = null;
            this.ac = null;
            this.ad = null;
            this.ae = null;
            this.ah = -1;
        }

        public static a a(byte[] bArr) {
            return (a) eq.a(new a(), bArr);
        }

        /* renamed from: a */
        public a b(ei eiVar) {
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
                    case 24:
                        this.c = Long.valueOf(eiVar.d());
                        continue;
                    case 32:
                        this.d = Long.valueOf(eiVar.d());
                        continue;
                    case 40:
                        this.e = Long.valueOf(eiVar.d());
                        continue;
                    case 48:
                        this.f = Long.valueOf(eiVar.d());
                        continue;
                    case 56:
                        this.g = Long.valueOf(eiVar.d());
                        continue;
                    case 64:
                        this.h = Long.valueOf(eiVar.d());
                        continue;
                    case 72:
                        this.i = Long.valueOf(eiVar.d());
                        continue;
                    case 80:
                        this.j = Long.valueOf(eiVar.d());
                        continue;
                    case 88:
                        this.k = Long.valueOf(eiVar.d());
                        continue;
                    case 96:
                        this.l = Long.valueOf(eiVar.d());
                        continue;
                    case 106:
                        this.m = eiVar.g();
                        continue;
                    case 112:
                        this.n = Long.valueOf(eiVar.d());
                        continue;
                    case 120:
                        this.o = Long.valueOf(eiVar.d());
                        continue;
                    case 128:
                        this.p = Long.valueOf(eiVar.d());
                        continue;
                    case 136:
                        this.q = Long.valueOf(eiVar.d());
                        continue;
                    case 144:
                        this.r = Long.valueOf(eiVar.d());
                        continue;
                    case 152:
                        this.s = Long.valueOf(eiVar.d());
                        continue;
                    case 160:
                        this.t = Long.valueOf(eiVar.d());
                        continue;
                    case 168:
                        this.Z = Long.valueOf(eiVar.d());
                        continue;
                    case 176:
                        this.u = Long.valueOf(eiVar.d());
                        continue;
                    case 184:
                        this.v = Long.valueOf(eiVar.d());
                        continue;
                    case 194:
                        this.aa = eiVar.g();
                        continue;
                    case 200:
                        this.ae = Long.valueOf(eiVar.d());
                        continue;
                    case 208:
                        a = eiVar.e();
                        switch (a) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                                this.ab = Integer.valueOf(a);
                                break;
                            default:
                                continue;
                        }
                    case 218:
                        this.w = eiVar.g();
                        continue;
                    case 224:
                        this.ac = Boolean.valueOf(eiVar.f());
                        continue;
                    case 234:
                        this.x = eiVar.g();
                        continue;
                    case 242:
                        this.ad = eiVar.g();
                        continue;
                    case 248:
                        this.y = Long.valueOf(eiVar.d());
                        continue;
                    case 256:
                        this.z = Long.valueOf(eiVar.d());
                        continue;
                    case 264:
                        this.A = Long.valueOf(eiVar.d());
                        continue;
                    case 274:
                        this.B = eiVar.g();
                        continue;
                    case 280:
                        this.C = Long.valueOf(eiVar.d());
                        continue;
                    case 288:
                        this.D = Long.valueOf(eiVar.d());
                        continue;
                    case 296:
                        this.E = Long.valueOf(eiVar.d());
                        continue;
                    case 306:
                        if (this.F == null) {
                            this.F = new b();
                        }
                        eiVar.a(this.F);
                        continue;
                    case 312:
                        this.G = Long.valueOf(eiVar.d());
                        continue;
                    case 320:
                        this.H = Long.valueOf(eiVar.d());
                        continue;
                    case 328:
                        this.I = Long.valueOf(eiVar.d());
                        continue;
                    case 336:
                        this.J = Long.valueOf(eiVar.d());
                        continue;
                    case 346:
                        int b = et.b(eiVar, 346);
                        a = this.X == null ? 0 : this.X.length;
                        a[] aVarArr = new a[(b + a)];
                        if (a != 0) {
                            System.arraycopy(this.X, 0, aVarArr, 0, a);
                        }
                        while (a < aVarArr.length - 1) {
                            aVarArr[a] = new a();
                            eiVar.a(aVarArr[a]);
                            eiVar.a();
                            a++;
                        }
                        aVarArr[a] = new a();
                        eiVar.a(aVarArr[a]);
                        this.X = aVarArr;
                        continue;
                    case 352:
                        this.K = Long.valueOf(eiVar.d());
                        continue;
                    case 360:
                        this.L = Long.valueOf(eiVar.d());
                        continue;
                    case 370:
                        this.M = eiVar.g();
                        continue;
                    case 378:
                        this.N = eiVar.g();
                        continue;
                    case 384:
                        a = eiVar.e();
                        switch (a) {
                            case 0:
                            case 1:
                            case 2:
                            case 1000:
                                this.O = Integer.valueOf(a);
                                break;
                            default:
                                continue;
                        }
                    case 392:
                        a = eiVar.e();
                        switch (a) {
                            case 0:
                            case 1:
                            case 2:
                            case 1000:
                                this.P = Integer.valueOf(a);
                                break;
                            default:
                                continue;
                        }
                    case HttpStatus.SC_PAYMENT_REQUIRED /*402*/:
                        if (this.W == null) {
                            this.W = new a();
                        }
                        eiVar.a(this.W);
                        continue;
                    case HttpStatus.SC_REQUEST_TIMEOUT /*408*/:
                        this.Q = Long.valueOf(eiVar.d());
                        continue;
                    case HttpStatus.SC_REQUESTED_RANGE_NOT_SATISFIABLE /*416*/:
                        this.R = Long.valueOf(eiVar.d());
                        continue;
                    case HttpStatus.SC_FAILED_DEPENDENCY /*424*/:
                        this.S = Long.valueOf(eiVar.d());
                        continue;
                    case 432:
                        this.T = Long.valueOf(eiVar.d());
                        continue;
                    case 440:
                        this.U = Long.valueOf(eiVar.d());
                        continue;
                    case 448:
                        a = eiVar.e();
                        switch (a) {
                            case 0:
                            case 1:
                            case 2:
                            case 1000:
                                this.V = Integer.valueOf(a);
                                break;
                            default:
                                continue;
                        }
                    case 458:
                        if (this.Y == null) {
                            this.Y = new b();
                        }
                        eiVar.a(this.Y);
                        continue;
                    case 1610:
                        if (this.af == null) {
                            this.af = new e();
                        }
                        eiVar.a(this.af);
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
            if (this.a != null) {
                ejVar.a(1, this.a);
            }
            if (this.b != null) {
                ejVar.a(2, this.b);
            }
            if (this.c != null) {
                ejVar.b(3, this.c.longValue());
            }
            if (this.d != null) {
                ejVar.b(4, this.d.longValue());
            }
            if (this.e != null) {
                ejVar.b(5, this.e.longValue());
            }
            if (this.f != null) {
                ejVar.b(6, this.f.longValue());
            }
            if (this.g != null) {
                ejVar.b(7, this.g.longValue());
            }
            if (this.h != null) {
                ejVar.b(8, this.h.longValue());
            }
            if (this.i != null) {
                ejVar.b(9, this.i.longValue());
            }
            if (this.j != null) {
                ejVar.b(10, this.j.longValue());
            }
            if (this.k != null) {
                ejVar.b(11, this.k.longValue());
            }
            if (this.l != null) {
                ejVar.b(12, this.l.longValue());
            }
            if (this.m != null) {
                ejVar.a(13, this.m);
            }
            if (this.n != null) {
                ejVar.b(14, this.n.longValue());
            }
            if (this.o != null) {
                ejVar.b(15, this.o.longValue());
            }
            if (this.p != null) {
                ejVar.b(16, this.p.longValue());
            }
            if (this.q != null) {
                ejVar.b(17, this.q.longValue());
            }
            if (this.r != null) {
                ejVar.b(18, this.r.longValue());
            }
            if (this.s != null) {
                ejVar.b(19, this.s.longValue());
            }
            if (this.t != null) {
                ejVar.b(20, this.t.longValue());
            }
            if (this.Z != null) {
                ejVar.b(21, this.Z.longValue());
            }
            if (this.u != null) {
                ejVar.b(22, this.u.longValue());
            }
            if (this.v != null) {
                ejVar.b(23, this.v.longValue());
            }
            if (this.aa != null) {
                ejVar.a(24, this.aa);
            }
            if (this.ae != null) {
                ejVar.b(25, this.ae.longValue());
            }
            if (this.ab != null) {
                ejVar.a(26, this.ab.intValue());
            }
            if (this.w != null) {
                ejVar.a(27, this.w);
            }
            if (this.ac != null) {
                ejVar.a(28, this.ac.booleanValue());
            }
            if (this.x != null) {
                ejVar.a(29, this.x);
            }
            if (this.ad != null) {
                ejVar.a(30, this.ad);
            }
            if (this.y != null) {
                ejVar.b(31, this.y.longValue());
            }
            if (this.z != null) {
                ejVar.b(32, this.z.longValue());
            }
            if (this.A != null) {
                ejVar.b(33, this.A.longValue());
            }
            if (this.B != null) {
                ejVar.a(34, this.B);
            }
            if (this.C != null) {
                ejVar.b(35, this.C.longValue());
            }
            if (this.D != null) {
                ejVar.b(36, this.D.longValue());
            }
            if (this.E != null) {
                ejVar.b(37, this.E.longValue());
            }
            if (this.F != null) {
                ejVar.a(38, this.F);
            }
            if (this.G != null) {
                ejVar.b(39, this.G.longValue());
            }
            if (this.H != null) {
                ejVar.b(40, this.H.longValue());
            }
            if (this.I != null) {
                ejVar.b(41, this.I.longValue());
            }
            if (this.J != null) {
                ejVar.b(42, this.J.longValue());
            }
            if (this.X != null && this.X.length > 0) {
                for (eq eqVar : this.X) {
                    if (eqVar != null) {
                        ejVar.a(43, eqVar);
                    }
                }
            }
            if (this.K != null) {
                ejVar.b(44, this.K.longValue());
            }
            if (this.L != null) {
                ejVar.b(45, this.L.longValue());
            }
            if (this.M != null) {
                ejVar.a(46, this.M);
            }
            if (this.N != null) {
                ejVar.a(47, this.N);
            }
            if (this.O != null) {
                ejVar.a(48, this.O.intValue());
            }
            if (this.P != null) {
                ejVar.a(49, this.P.intValue());
            }
            if (this.W != null) {
                ejVar.a(50, this.W);
            }
            if (this.Q != null) {
                ejVar.b(51, this.Q.longValue());
            }
            if (this.R != null) {
                ejVar.b(52, this.R.longValue());
            }
            if (this.S != null) {
                ejVar.b(53, this.S.longValue());
            }
            if (this.T != null) {
                ejVar.b(54, this.T.longValue());
            }
            if (this.U != null) {
                ejVar.b(55, this.U.longValue());
            }
            if (this.V != null) {
                ejVar.a(56, this.V.intValue());
            }
            if (this.Y != null) {
                ejVar.a(57, this.Y);
            }
            if (this.af != null) {
                ejVar.a((int) HttpStatus.SC_CREATED, this.af);
            }
            super.a(ejVar);
        }

        /* Access modifiers changed, original: protected */
        public int b() {
            int b = super.b();
            if (this.a != null) {
                b += ej.b(1, this.a);
            }
            if (this.b != null) {
                b += ej.b(2, this.b);
            }
            if (this.c != null) {
                b += ej.e(3, this.c.longValue());
            }
            if (this.d != null) {
                b += ej.e(4, this.d.longValue());
            }
            if (this.e != null) {
                b += ej.e(5, this.e.longValue());
            }
            if (this.f != null) {
                b += ej.e(6, this.f.longValue());
            }
            if (this.g != null) {
                b += ej.e(7, this.g.longValue());
            }
            if (this.h != null) {
                b += ej.e(8, this.h.longValue());
            }
            if (this.i != null) {
                b += ej.e(9, this.i.longValue());
            }
            if (this.j != null) {
                b += ej.e(10, this.j.longValue());
            }
            if (this.k != null) {
                b += ej.e(11, this.k.longValue());
            }
            if (this.l != null) {
                b += ej.e(12, this.l.longValue());
            }
            if (this.m != null) {
                b += ej.b(13, this.m);
            }
            if (this.n != null) {
                b += ej.e(14, this.n.longValue());
            }
            if (this.o != null) {
                b += ej.e(15, this.o.longValue());
            }
            if (this.p != null) {
                b += ej.e(16, this.p.longValue());
            }
            if (this.q != null) {
                b += ej.e(17, this.q.longValue());
            }
            if (this.r != null) {
                b += ej.e(18, this.r.longValue());
            }
            if (this.s != null) {
                b += ej.e(19, this.s.longValue());
            }
            if (this.t != null) {
                b += ej.e(20, this.t.longValue());
            }
            if (this.Z != null) {
                b += ej.e(21, this.Z.longValue());
            }
            if (this.u != null) {
                b += ej.e(22, this.u.longValue());
            }
            if (this.v != null) {
                b += ej.e(23, this.v.longValue());
            }
            if (this.aa != null) {
                b += ej.b(24, this.aa);
            }
            if (this.ae != null) {
                b += ej.e(25, this.ae.longValue());
            }
            if (this.ab != null) {
                b += ej.b(26, this.ab.intValue());
            }
            if (this.w != null) {
                b += ej.b(27, this.w);
            }
            if (this.ac != null) {
                b += ej.b(28, this.ac.booleanValue());
            }
            if (this.x != null) {
                b += ej.b(29, this.x);
            }
            if (this.ad != null) {
                b += ej.b(30, this.ad);
            }
            if (this.y != null) {
                b += ej.e(31, this.y.longValue());
            }
            if (this.z != null) {
                b += ej.e(32, this.z.longValue());
            }
            if (this.A != null) {
                b += ej.e(33, this.A.longValue());
            }
            if (this.B != null) {
                b += ej.b(34, this.B);
            }
            if (this.C != null) {
                b += ej.e(35, this.C.longValue());
            }
            if (this.D != null) {
                b += ej.e(36, this.D.longValue());
            }
            if (this.E != null) {
                b += ej.e(37, this.E.longValue());
            }
            if (this.F != null) {
                b += ej.c(38, this.F);
            }
            if (this.G != null) {
                b += ej.e(39, this.G.longValue());
            }
            if (this.H != null) {
                b += ej.e(40, this.H.longValue());
            }
            if (this.I != null) {
                b += ej.e(41, this.I.longValue());
            }
            if (this.J != null) {
                b += ej.e(42, this.J.longValue());
            }
            if (this.X != null && this.X.length > 0) {
                int i = b;
                for (eq eqVar : this.X) {
                    if (eqVar != null) {
                        i += ej.c(43, eqVar);
                    }
                }
                b = i;
            }
            if (this.K != null) {
                b += ej.e(44, this.K.longValue());
            }
            if (this.L != null) {
                b += ej.e(45, this.L.longValue());
            }
            if (this.M != null) {
                b += ej.b(46, this.M);
            }
            if (this.N != null) {
                b += ej.b(47, this.N);
            }
            if (this.O != null) {
                b += ej.b(48, this.O.intValue());
            }
            if (this.P != null) {
                b += ej.b(49, this.P.intValue());
            }
            if (this.W != null) {
                b += ej.c(50, this.W);
            }
            if (this.Q != null) {
                b += ej.e(51, this.Q.longValue());
            }
            if (this.R != null) {
                b += ej.e(52, this.R.longValue());
            }
            if (this.S != null) {
                b += ej.e(53, this.S.longValue());
            }
            if (this.T != null) {
                b += ej.e(54, this.T.longValue());
            }
            if (this.U != null) {
                b += ej.e(55, this.U.longValue());
            }
            if (this.V != null) {
                b += ej.b(56, this.V.intValue());
            }
            if (this.Y != null) {
                b += ej.c(57, this.Y);
            }
            return this.af != null ? b + ej.c((int) HttpStatus.SC_CREATED, this.af) : b;
        }
    }

    public static final class b extends ek<b> {
        public Long a;
        public Integer b;
        public Boolean c;
        public int[] d;
        public Long e;

        public b() {
            this.a = null;
            this.b = null;
            this.c = null;
            this.d = et.a;
            this.e = null;
            this.ah = -1;
        }

        /* renamed from: a */
        public b b(ei eiVar) {
            while (true) {
                int a = eiVar.a();
                int b;
                switch (a) {
                    case 0:
                        break;
                    case 8:
                        this.a = Long.valueOf(eiVar.d());
                        continue;
                    case 16:
                        this.b = Integer.valueOf(eiVar.e());
                        continue;
                    case 24:
                        this.c = Boolean.valueOf(eiVar.f());
                        continue;
                    case 32:
                        b = et.b(eiVar, 32);
                        a = this.d == null ? 0 : this.d.length;
                        int[] iArr = new int[(b + a)];
                        if (a != 0) {
                            System.arraycopy(this.d, 0, iArr, 0, a);
                        }
                        while (a < iArr.length - 1) {
                            iArr[a] = eiVar.e();
                            eiVar.a();
                            a++;
                        }
                        iArr[a] = eiVar.e();
                        this.d = iArr;
                        continue;
                    case 34:
                        int c = eiVar.c(eiVar.j());
                        b = eiVar.p();
                        a = 0;
                        while (eiVar.n() > 0) {
                            eiVar.e();
                            a++;
                        }
                        eiVar.e(b);
                        b = this.d == null ? 0 : this.d.length;
                        int[] iArr2 = new int[(a + b)];
                        if (b != 0) {
                            System.arraycopy(this.d, 0, iArr2, 0, b);
                        }
                        while (b < iArr2.length) {
                            iArr2[b] = eiVar.e();
                            b++;
                        }
                        this.d = iArr2;
                        eiVar.d(c);
                        continue;
                    case 40:
                        this.e = Long.valueOf(eiVar.c());
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
            if (this.a != null) {
                ejVar.b(1, this.a.longValue());
            }
            if (this.b != null) {
                ejVar.a(2, this.b.intValue());
            }
            if (this.c != null) {
                ejVar.a(3, this.c.booleanValue());
            }
            if (this.d != null && this.d.length > 0) {
                for (int a : this.d) {
                    ejVar.a(4, a);
                }
            }
            if (this.e != null) {
                ejVar.a(5, this.e.longValue());
            }
            super.a(ejVar);
        }

        /* Access modifiers changed, original: protected */
        public int b() {
            int i = 0;
            int b = super.b();
            if (this.a != null) {
                b += ej.e(1, this.a.longValue());
            }
            if (this.b != null) {
                b += ej.b(2, this.b.intValue());
            }
            if (this.c != null) {
                b += ej.b(3, this.c.booleanValue());
            }
            if (this.d != null && this.d.length > 0) {
                int i2 = 0;
                while (i < this.d.length) {
                    i2 += ej.b(this.d[i]);
                    i++;
                }
                b = (b + i2) + (this.d.length * 1);
            }
            return this.e != null ? b + ej.d(5, this.e.longValue()) : b;
        }
    }

    public static final class c extends ek<c> {
        public byte[] a;
        public byte[] b;

        public c() {
            this.a = null;
            this.b = null;
            this.ah = -1;
        }

        /* renamed from: a */
        public c b(ei eiVar) {
            while (true) {
                int a = eiVar.a();
                switch (a) {
                    case 0:
                        break;
                    case 10:
                        this.a = eiVar.h();
                        continue;
                    case 18:
                        this.b = eiVar.h();
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
            if (this.a != null) {
                ejVar.a(1, this.a);
            }
            if (this.b != null) {
                ejVar.a(2, this.b);
            }
            super.a(ejVar);
        }

        /* Access modifiers changed, original: protected */
        public int b() {
            int b = super.b();
            if (this.a != null) {
                b += ej.b(1, this.a);
            }
            return this.b != null ? b + ej.b(2, this.b) : b;
        }
    }

    public static final class d extends ek<d> {
        public byte[] a;
        public byte[] b;
        public byte[] c;
        public byte[] d;

        public d() {
            this.a = null;
            this.b = null;
            this.c = null;
            this.d = null;
            this.ah = -1;
        }

        public static d a(byte[] bArr) {
            return (d) eq.a(new d(), bArr);
        }

        /* renamed from: a */
        public d b(ei eiVar) {
            while (true) {
                int a = eiVar.a();
                switch (a) {
                    case 0:
                        break;
                    case 10:
                        this.a = eiVar.h();
                        continue;
                    case 18:
                        this.b = eiVar.h();
                        continue;
                    case 26:
                        this.c = eiVar.h();
                        continue;
                    case 34:
                        this.d = eiVar.h();
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
            if (this.a != null) {
                ejVar.a(1, this.a);
            }
            if (this.b != null) {
                ejVar.a(2, this.b);
            }
            if (this.c != null) {
                ejVar.a(3, this.c);
            }
            if (this.d != null) {
                ejVar.a(4, this.d);
            }
            super.a(ejVar);
        }

        /* Access modifiers changed, original: protected */
        public int b() {
            int b = super.b();
            if (this.a != null) {
                b += ej.b(1, this.a);
            }
            if (this.b != null) {
                b += ej.b(2, this.b);
            }
            if (this.c != null) {
                b += ej.b(3, this.c);
            }
            return this.d != null ? b + ej.b(4, this.d) : b;
        }
    }

    public static final class e extends ek<e> {
        public Long a;
        public String b;
        public byte[] c;

        public e() {
            this.a = null;
            this.b = null;
            this.c = null;
            this.ah = -1;
        }

        /* renamed from: a */
        public e b(ei eiVar) {
            while (true) {
                int a = eiVar.a();
                switch (a) {
                    case 0:
                        break;
                    case 8:
                        this.a = Long.valueOf(eiVar.d());
                        continue;
                    case 26:
                        this.b = eiVar.g();
                        continue;
                    case 34:
                        this.c = eiVar.h();
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
            if (this.a != null) {
                ejVar.b(1, this.a.longValue());
            }
            if (this.b != null) {
                ejVar.a(3, this.b);
            }
            if (this.c != null) {
                ejVar.a(4, this.c);
            }
            super.a(ejVar);
        }

        /* Access modifiers changed, original: protected */
        public int b() {
            int b = super.b();
            if (this.a != null) {
                b += ej.e(1, this.a.longValue());
            }
            if (this.b != null) {
                b += ej.b(3, this.b);
            }
            return this.c != null ? b + ej.b(4, this.c) : b;
        }
    }

    public static final class f extends ek<f> {
        public byte[][] a;
        public byte[] b;
        public Integer c;
        public Integer d;

        public f() {
            this.a = et.g;
            this.b = null;
            this.c = null;
            this.d = null;
            this.ah = -1;
        }

        /* renamed from: a */
        public f b(ei eiVar) {
            while (true) {
                int a = eiVar.a();
                switch (a) {
                    case 0:
                        break;
                    case 10:
                        int b = et.b(eiVar, 10);
                        a = this.a == null ? 0 : this.a.length;
                        byte[][] bArr = new byte[(b + a)][];
                        if (a != 0) {
                            System.arraycopy(this.a, 0, bArr, 0, a);
                        }
                        while (a < bArr.length - 1) {
                            bArr[a] = eiVar.h();
                            eiVar.a();
                            a++;
                        }
                        bArr[a] = eiVar.h();
                        this.a = bArr;
                        continue;
                    case 18:
                        this.b = eiVar.h();
                        continue;
                    case 24:
                        a = eiVar.e();
                        switch (a) {
                            case 0:
                            case 1:
                                this.c = Integer.valueOf(a);
                                break;
                            default:
                                continue;
                        }
                    case 32:
                        a = eiVar.e();
                        switch (a) {
                            case 0:
                            case 1:
                                this.d = Integer.valueOf(a);
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
            if (this.a != null && this.a.length > 0) {
                for (byte[] bArr : this.a) {
                    if (bArr != null) {
                        ejVar.a(1, bArr);
                    }
                }
            }
            if (this.b != null) {
                ejVar.a(2, this.b);
            }
            if (this.c != null) {
                ejVar.a(3, this.c.intValue());
            }
            if (this.d != null) {
                ejVar.a(4, this.d.intValue());
            }
            super.a(ejVar);
        }

        /* Access modifiers changed, original: protected */
        public int b() {
            int i = 0;
            int b = super.b();
            if (this.a == null || this.a.length <= 0) {
                i = b;
            } else {
                int i2 = 0;
                int i3 = 0;
                while (i < this.a.length) {
                    byte[] bArr = this.a[i];
                    if (bArr != null) {
                        i3++;
                        i2 += ej.c(bArr);
                    }
                    i++;
                }
                i = (b + i2) + (i3 * 1);
            }
            if (this.b != null) {
                i += ej.b(2, this.b);
            }
            if (this.c != null) {
                i += ej.b(3, this.c.intValue());
            }
            return this.d != null ? i + ej.b(4, this.d.intValue()) : i;
        }
    }
}
