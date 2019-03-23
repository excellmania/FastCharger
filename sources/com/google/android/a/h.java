package com.google.android.a;

public interface h {

    public interface c {
        void onPlayWhenReadyCommitted();

        void onPlayerError(g gVar);

        void onPlayerStateChanged(boolean z, int i);
    }

    public interface a {
        void a(int i, Object obj);
    }

    public static final class b {
        public static h a(int i) {
            return new i(i, 2500, 5000);
        }
    }

    void a(long j);

    void a(a aVar, int i, Object obj);

    void a(c cVar);

    void a(boolean z);

    void a(z... zVarArr);

    boolean a();

    void b();

    void b(c cVar);

    long c();

    long d();

    int e();
}
