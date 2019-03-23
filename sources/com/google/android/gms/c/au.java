package com.google.android.gms.c;

public interface au {

    public static final class a extends eq {
        public b a;
        public c b;

        public a() {
            a();
        }

        public static a a(byte[] bArr) {
            return (a) eq.a(new a(), bArr);
        }

        public a a() {
            this.a = null;
            this.b = null;
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
                    case 10:
                        if (this.a == null) {
                            this.a = new b();
                        }
                        eiVar.a(this.a);
                        continue;
                    case 18:
                        if (this.b == null) {
                            this.b = new c();
                        }
                        eiVar.a(this.b);
                        continue;
                    default:
                        if (!et.a(eiVar, a)) {
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
                b += ej.c(1, this.a);
            }
            return this.b != null ? b + ej.c(2, this.b) : b;
        }
    }

    public static final class b extends eq {
        public Integer a;

        public b() {
            a();
        }

        public b a() {
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
                    case 216:
                        a = eiVar.e();
                        switch (a) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                this.a = Integer.valueOf(a);
                                break;
                            default:
                                continue;
                        }
                    default:
                        if (!et.a(eiVar, a)) {
                            break;
                        }
                        continue;
                }
            }
            return this;
        }

        public void a(ej ejVar) {
            if (this.a != null) {
                ejVar.a(27, this.a.intValue());
            }
            super.a(ejVar);
        }

        /* Access modifiers changed, original: protected */
        public int b() {
            int b = super.b();
            return this.a != null ? b + ej.b(27, this.a.intValue()) : b;
        }
    }

    public static final class c extends eq {
        public String a;
        public String b;
        public String c;
        public String d;
        public String e;

        public c() {
            a();
        }

        public c a() {
            this.a = null;
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = null;
            this.ah = -1;
            return this;
        }

        /* renamed from: a */
        public c b(ei eiVar) {
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
                    case 26:
                        this.c = eiVar.g();
                        continue;
                    case 34:
                        this.d = eiVar.g();
                        continue;
                    case 42:
                        this.e = eiVar.g();
                        continue;
                    default:
                        if (!et.a(eiVar, a)) {
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
            if (this.e != null) {
                ejVar.a(5, this.e);
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
            if (this.d != null) {
                b += ej.b(4, this.d);
            }
            return this.e != null ? b + ej.b(5, this.e) : b;
        }
    }
}
