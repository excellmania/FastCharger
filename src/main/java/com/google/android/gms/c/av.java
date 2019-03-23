package com.google.android.gms.c;

public interface av {

    public static final class a extends ek<a> {
        public String a;
        public Long b;
        public String c;
        public String d;
        public String e;
        public Long f;
        public Long g;
        public String h;
        public Long i;
        public String j;

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
            this.ah = -1;
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
                    case 16:
                        this.b = Long.valueOf(eiVar.d());
                        continue;
                    case 26:
                        this.c = eiVar.g();
                        continue;
                    case 34:
                        this.d = eiVar.g();
                        continue;
                    case 42:
                        this.e = eiVar.g();
                        continue;
                    case 48:
                        this.f = Long.valueOf(eiVar.d());
                        continue;
                    case 56:
                        this.g = Long.valueOf(eiVar.d());
                        continue;
                    case 66:
                        this.h = eiVar.g();
                        continue;
                    case 72:
                        this.i = Long.valueOf(eiVar.d());
                        continue;
                    case 82:
                        this.j = eiVar.g();
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
                ejVar.b(2, this.b.longValue());
            }
            if (this.c != null) {
                ejVar.a(3, this.c);
            }
            if (this.d != null) {
                ejVar.a(4, this.d);
            }
            if (this.e != null) {
                ejVar.a(5, this.e);
            }
            if (this.f != null) {
                ejVar.b(6, this.f.longValue());
            }
            if (this.g != null) {
                ejVar.b(7, this.g.longValue());
            }
            if (this.h != null) {
                ejVar.a(8, this.h);
            }
            if (this.i != null) {
                ejVar.b(9, this.i.longValue());
            }
            if (this.j != null) {
                ejVar.a(10, this.j);
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
                b += ej.e(2, this.b.longValue());
            }
            if (this.c != null) {
                b += ej.b(3, this.c);
            }
            if (this.d != null) {
                b += ej.b(4, this.d);
            }
            if (this.e != null) {
                b += ej.b(5, this.e);
            }
            if (this.f != null) {
                b += ej.e(6, this.f.longValue());
            }
            if (this.g != null) {
                b += ej.e(7, this.g.longValue());
            }
            if (this.h != null) {
                b += ej.b(8, this.h);
            }
            if (this.i != null) {
                b += ej.e(9, this.i.longValue());
            }
            return this.j != null ? b + ej.b(10, this.j) : b;
        }
    }
}
