package com.google.android.gms.c;

@pa
public class rb {
    public final String a;
    public final String b;
    public final int c;
    public final long d;

    public static final class a {
        private String a;
        private String b;
        private int c;
        private long d;

        public a a(int i) {
            this.c = i;
            return this;
        }

        public a a(long j) {
            this.d = j;
            return this;
        }

        public a a(String str) {
            this.a = str;
            return this;
        }

        public rb a() {
            return new rb(this);
        }

        public a b(String str) {
            this.b = str;
            return this;
        }
    }

    private rb(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
    }
}
