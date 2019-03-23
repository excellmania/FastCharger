package com.google.android.gms.c;

public class uc extends Exception {
    public final ku a;
    private long b;

    public uc() {
        this.a = null;
    }

    public uc(ku kuVar) {
        this.a = kuVar;
    }

    public uc(Throwable th) {
        super(th);
        this.a = null;
    }

    /* Access modifiers changed, original: 0000 */
    public void a(long j) {
        this.b = j;
    }
}
