package com.google.android.a.e.e;

import android.support.v4.media.TransportMediator;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.android.a.e.e;
import com.google.android.a.e.f;
import com.google.android.a.e.g;
import com.google.android.a.e.j;
import com.google.android.a.e.l;
import com.google.android.a.h.n;
import com.google.android.a.h.x;

public final class o implements e {
    private static final long d = ((long) x.e("AC-3"));
    private static final long e = ((long) x.e("EAC3"));
    private static final long f = ((long) x.e("HEVC"));
    final SparseArray<d> a;
    final SparseBooleanArray b;
    i c;
    private final m g;
    private final int h;
    private final com.google.android.a.h.o i;
    private final n j;
    private g k;

    private static abstract class d {
        private d() {
        }

        public abstract void a();

        public abstract void a(com.google.android.a.h.o oVar, boolean z, g gVar);
    }

    private class a extends d {
        private final n b = new n(new byte[4]);

        public a() {
            super();
        }

        public void a() {
        }

        public void a(com.google.android.a.h.o oVar, boolean z, g gVar) {
            if (z) {
                oVar.c(oVar.f());
            }
            oVar.a(this.b, 3);
            this.b.b(12);
            int c = this.b.c(12);
            oVar.c(5);
            int i = (c - 9) / 4;
            for (c = 0; c < i; c++) {
                oVar.a(this.b, 4);
                int c2 = this.b.c(16);
                this.b.b(3);
                if (c2 == 0) {
                    this.b.b(13);
                } else {
                    o.this.a.put(this.b.c(13), new c());
                }
            }
        }
    }

    private static final class b extends d {
        private final e a;
        private final m b;
        private final n c = new n(new byte[10]);
        private int d = 0;
        private int e;
        private boolean f;
        private boolean g;
        private boolean h;
        private int i;
        private int j;
        private boolean k;
        private long l;

        public b(e eVar, m mVar) {
            super();
            this.a = eVar;
            this.b = mVar;
        }

        private void a(int i) {
            this.d = i;
            this.e = 0;
        }

        private boolean a(com.google.android.a.h.o oVar, byte[] bArr, int i) {
            int min = Math.min(oVar.b(), i - this.e);
            if (min <= 0) {
                return true;
            }
            if (bArr == null) {
                oVar.c(min);
            } else {
                oVar.a(bArr, this.e, min);
            }
            this.e = min + this.e;
            return this.e == i;
        }

        private boolean b() {
            this.c.a(0);
            int c = this.c.c(24);
            if (c != 1) {
                Log.w("TsExtractor", "Unexpected start code prefix: " + c);
                this.j = -1;
                return false;
            }
            this.c.b(8);
            int c2 = this.c.c(16);
            this.c.b(5);
            this.k = this.c.b();
            this.c.b(2);
            this.f = this.c.b();
            this.g = this.c.b();
            this.c.b(6);
            this.i = this.c.c(8);
            if (c2 == 0) {
                this.j = -1;
            } else {
                this.j = ((c2 + 6) - 9) - this.i;
            }
            return true;
        }

        private void c() {
            this.c.a(0);
            this.l = -1;
            if (this.f) {
                this.c.b(4);
                long c = ((long) this.c.c(3)) << 30;
                this.c.b(1);
                c |= (long) (this.c.c(15) << 15);
                this.c.b(1);
                c |= (long) this.c.c(15);
                this.c.b(1);
                if (!this.h && this.g) {
                    this.c.b(4);
                    long c2 = ((long) this.c.c(3)) << 30;
                    this.c.b(1);
                    c2 |= (long) (this.c.c(15) << 15);
                    this.c.b(1);
                    c2 |= (long) this.c.c(15);
                    this.c.b(1);
                    this.b.a(c2);
                    this.h = true;
                }
                this.l = this.b.a(c);
            }
        }

        public void a() {
            this.d = 0;
            this.e = 0;
            this.h = false;
            this.a.a();
        }

        public void a(com.google.android.a.h.o oVar, boolean z, g gVar) {
            if (z) {
                switch (this.d) {
                    case 2:
                        Log.w("TsExtractor", "Unexpected start indicator reading extended header");
                        break;
                    case 3:
                        if (this.j != -1) {
                            Log.w("TsExtractor", "Unexpected start indicator: expected " + this.j + " more bytes");
                        }
                        this.a.b();
                        break;
                }
                a(1);
            }
            while (oVar.b() > 0) {
                switch (this.d) {
                    case 0:
                        oVar.c(oVar.b());
                        break;
                    case 1:
                        if (!a(oVar, this.c.a, 9)) {
                            break;
                        }
                        a(b() ? 2 : 0);
                        break;
                    case 2:
                        if (a(oVar, this.c.a, Math.min(10, this.i)) && a(oVar, null, this.i)) {
                            c();
                            this.a.a(this.l, this.k);
                            a(3);
                            break;
                        }
                    case 3:
                        int b = oVar.b();
                        int i = this.j == -1 ? 0 : b - this.j;
                        if (i > 0) {
                            b -= i;
                            oVar.a(oVar.d() + b);
                        }
                        this.a.a(oVar);
                        if (this.j == -1) {
                            break;
                        }
                        this.j -= b;
                        if (this.j != 0) {
                            break;
                        }
                        this.a.b();
                        a(1);
                        break;
                    default:
                        break;
                }
            }
        }
    }

    private class c extends d {
        private final n b = new n(new byte[5]);
        private final com.google.android.a.h.o c = new com.google.android.a.h.o();
        private int d;
        private int e;

        public c() {
            super();
        }

        private int a(com.google.android.a.h.o oVar, int i) {
            int i2 = -1;
            int d = oVar.d() + i;
            while (oVar.d() < d) {
                int f = oVar.f();
                int f2 = oVar.f();
                if (f == 5) {
                    long k = oVar.k();
                    if (k == o.d) {
                        i2 = 129;
                    } else if (k == o.e) {
                        i2 = 135;
                    } else if (k == o.f) {
                        i2 = 36;
                    }
                    oVar.b(d);
                    return i2;
                }
                if (f == 106) {
                    i2 = 129;
                } else if (f == 122) {
                    i2 = 135;
                } else if (f == 123) {
                    i2 = 138;
                }
                oVar.c(f2);
            }
            oVar.b(d);
            return i2;
        }

        public void a() {
        }

        public void a(com.google.android.a.h.o oVar, boolean z, g gVar) {
            if (z) {
                oVar.c(oVar.f());
                oVar.a(this.b, 3);
                this.b.b(12);
                this.d = this.b.c(12);
                if (this.c.e() < this.d) {
                    this.c.a(new byte[this.d], this.d);
                } else {
                    this.c.a();
                    this.c.a(this.d);
                }
            }
            int min = Math.min(oVar.b(), this.d - this.e);
            oVar.a(this.c.a, this.e, min);
            this.e = min + this.e;
            if (this.e >= this.d) {
                this.c.c(7);
                this.c.a(this.b, 2);
                this.b.b(4);
                min = this.b.c(12);
                this.c.c(min);
                if (o.this.c == null) {
                    o.this.c = new i(gVar.a_(21));
                }
                int i = ((this.d - 9) - min) - 4;
                while (i > 0) {
                    this.c.a(this.b, 5);
                    min = this.b.c(8);
                    this.b.b(3);
                    int c = this.b.c(13);
                    this.b.b(4);
                    int c2 = this.b.c(12);
                    if (min == 6) {
                        min = a(this.c, c2);
                    } else {
                        this.c.c(c2);
                    }
                    int i2 = i - (c2 + 5);
                    if (o.this.b.get(min)) {
                        i = i2;
                    } else {
                        e fVar;
                        switch (min) {
                            case 2:
                                fVar = new f(gVar.a_(2));
                                break;
                            case 3:
                                fVar = new j(gVar.a_(3));
                                break;
                            case 4:
                                fVar = new j(gVar.a_(4));
                                break;
                            case 15:
                                if ((o.this.h & 2) == 0) {
                                    fVar = new c(gVar.a_(15), new com.google.android.a.e.d());
                                    break;
                                } else {
                                    fVar = null;
                                    break;
                                }
                            case 21:
                                fVar = o.this.c;
                                break;
                            case 27:
                                if ((o.this.h & 4) == 0) {
                                    fVar = new g(gVar.a_(27), new n(gVar.a_(256)), (o.this.h & 1) != 0, (o.this.h & 8) != 0);
                                    break;
                                } else {
                                    fVar = null;
                                    break;
                                }
                            case 36:
                                fVar = new h(gVar.a_(36), new n(gVar.a_(256)));
                                break;
                            case 129:
                                fVar = new a(gVar.a_(129), false);
                                break;
                            case TransportMediator.KEYCODE_MEDIA_RECORD /*130*/:
                            case 138:
                                fVar = new d(gVar.a_(138));
                                break;
                            case 135:
                                fVar = new a(gVar.a_(135), true);
                                break;
                            default:
                                fVar = null;
                                break;
                        }
                        if (fVar != null) {
                            o.this.b.put(min, true);
                            o.this.a.put(c, new b(fVar, o.this.g));
                        }
                        i = i2;
                    }
                }
                gVar.a();
            }
        }
    }

    public o() {
        this(new m(0));
    }

    public o(m mVar) {
        this(mVar, 0);
    }

    public o(m mVar, int i) {
        this.g = mVar;
        this.h = i;
        this.i = new com.google.android.a.h.o(188);
        this.j = new n(new byte[3]);
        this.a = new SparseArray();
        this.a.put(0, new a());
        this.b = new SparseBooleanArray();
    }

    public int a(f fVar, j jVar) {
        if (!fVar.a(this.i.a, 0, 188, true)) {
            return -1;
        }
        this.i.b(0);
        this.i.a(188);
        if (this.i.f() != 71) {
            return 0;
        }
        this.i.a(this.j, 3);
        this.j.b(1);
        boolean b = this.j.b();
        this.j.b(1);
        int c = this.j.c(13);
        this.j.b(2);
        boolean b2 = this.j.b();
        boolean b3 = this.j.b();
        if (b2) {
            this.i.c(this.i.f());
        }
        if (b3) {
            d dVar = (d) this.a.get(c);
            if (dVar != null) {
                dVar.a(this.i, b, this.k);
            }
        }
        return 0;
    }

    public void a(g gVar) {
        this.k = gVar;
        gVar.a(l.f);
    }

    public boolean a(f fVar) {
        byte[] bArr = new byte[1];
        for (int i = 0; i < 5; i++) {
            fVar.c(bArr, 0, 1);
            if ((bArr[0] & 255) != 71) {
                return false;
            }
            fVar.c(187);
        }
        return true;
    }

    public void b() {
        this.g.a();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.a.size()) {
                ((d) this.a.valueAt(i2)).a();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void c() {
    }
}
