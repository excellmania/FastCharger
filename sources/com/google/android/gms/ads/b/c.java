package com.google.android.gms.ads.b;

import android.support.annotation.Nullable;
import com.google.android.gms.ads.i;
import com.google.android.gms.c.pa;

@pa
public final class c {
    private final boolean a;
    private final int b;
    private final boolean c;
    private final int d;
    private final i e;

    public static final class a {
        private boolean a = false;
        private int b = 0;
        private boolean c = false;
        private i d;
        private int e = 1;

        public a a(int i) {
            this.b = i;
            return this;
        }

        public a a(i iVar) {
            this.d = iVar;
            return this;
        }

        public a a(boolean z) {
            this.a = z;
            return this;
        }

        public c a() {
            return new c(this);
        }

        public a b(int i) {
            this.e = i;
            return this;
        }

        public a b(boolean z) {
            this.c = z;
            return this;
        }
    }

    private c(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.e;
        this.e = aVar.d;
    }

    public boolean a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public boolean c() {
        return this.c;
    }

    public int d() {
        return this.d;
    }

    @Nullable
    public i e() {
        return this.e;
    }
}
