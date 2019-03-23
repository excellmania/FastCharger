package com.google.android.a;

public final class g extends Exception {
    public final boolean a;

    public g(String str) {
        super(str);
        this.a = false;
    }

    public g(Throwable th) {
        super(th);
        this.a = false;
    }

    g(Throwable th, boolean z) {
        super(th);
        this.a = z;
    }
}
