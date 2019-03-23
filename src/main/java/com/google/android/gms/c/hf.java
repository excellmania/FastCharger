package com.google.android.gms.c;

@pa
public class hf {
    private static final Object a = new Object();
    private static hf b;
    private final sy c = new sy();
    private final he d = new he(new gu(), new gt(), new ia(), new kj(), new qv(), new od(), new nn());

    static {
        a(new hf());
    }

    protected hf() {
    }

    public static sy a() {
        return c().c;
    }

    protected static void a(hf hfVar) {
        synchronized (a) {
            b = hfVar;
        }
    }

    public static he b() {
        return c().d;
    }

    private static hf c() {
        hf hfVar;
        synchronized (a) {
            hfVar = b;
        }
        return hfVar;
    }
}
