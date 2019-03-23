package com.google.android.gms.c;

import java.io.IOException;

public abstract class eq {
    protected volatile int ah = -1;

    public static final <T extends eq> T a(T t, byte[] bArr) {
        return b(t, bArr, 0, bArr.length);
    }

    public static final void a(eq eqVar, byte[] bArr, int i, int i2) {
        try {
            ej a = ej.a(bArr, i, i2);
            eqVar.a(a);
            a.b();
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    public static final byte[] a(eq eqVar) {
        byte[] bArr = new byte[eqVar.f()];
        a(eqVar, bArr, 0, bArr.length);
        return bArr;
    }

    public static final <T extends eq> T b(T t, byte[] bArr, int i, int i2) {
        try {
            ei a = ei.a(bArr, i, i2);
            t.b(a);
            a.a(0);
            return t;
        } catch (ep e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
    }

    public void a(ej ejVar) {
    }

    /* Access modifiers changed, original: protected */
    public int b() {
        return 0;
    }

    public abstract eq b(ei eiVar);

    /* renamed from: d */
    public eq clone() {
        return (eq) super.clone();
    }

    public int e() {
        if (this.ah < 0) {
            f();
        }
        return this.ah;
    }

    public int f() {
        int b = b();
        this.ah = b;
        return b;
    }

    public String toString() {
        return er.a(this);
    }
}
