package com.google.android.gms.c;

public class oy<T> {
    public final T a;
    public final com.google.android.gms.c.dk.a b;
    public final uc c;
    public boolean d;

    public interface a {
        void a(uc ucVar);
    }

    public interface b<T> {
        void a(T t);
    }

    private oy(uc ucVar) {
        this.d = false;
        this.a = null;
        this.b = null;
        this.c = ucVar;
    }

    private oy(T t, com.google.android.gms.c.dk.a aVar) {
        this.d = false;
        this.a = t;
        this.b = aVar;
        this.c = null;
    }

    public static <T> oy<T> a(uc ucVar) {
        return new oy(ucVar);
    }

    public static <T> oy<T> a(T t, com.google.android.gms.c.dk.a aVar) {
        return new oy(t, aVar);
    }

    public boolean a() {
        return this.c == null;
    }
}
