package com.google.android.gms.c;

import java.io.IOException;
import java.lang.reflect.Array;

public class el<M extends ek<M>, T> {
    protected final int a;
    protected final Class<T> b;
    public final int c;
    protected final boolean d;

    /* Access modifiers changed, original: 0000 */
    public int a(Object obj) {
        return this.d ? b(obj) : c(obj);
    }

    /* Access modifiers changed, original: 0000 */
    public void a(Object obj, ej ejVar) {
        if (this.d) {
            c(obj, ejVar);
        } else {
            b(obj, ejVar);
        }
    }

    /* Access modifiers changed, original: protected */
    public int b(Object obj) {
        int i = 0;
        int length = Array.getLength(obj);
        for (int i2 = 0; i2 < length; i2++) {
            if (Array.get(obj, i2) != null) {
                i += c(Array.get(obj, i2));
            }
        }
        return i;
    }

    /* Access modifiers changed, original: protected */
    public void b(Object obj, ej ejVar) {
        try {
            ejVar.e(this.c);
            switch (this.a) {
                case 10:
                    eq eqVar = (eq) obj;
                    int b = et.b(this.c);
                    ejVar.a(eqVar);
                    ejVar.c(b, 4);
                    return;
                case 11:
                    ejVar.b((eq) obj);
                    return;
                default:
                    throw new IllegalArgumentException("Unknown type " + this.a);
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
        throw new IllegalStateException(e);
    }

    /* Access modifiers changed, original: protected */
    public int c(Object obj) {
        int b = et.b(this.c);
        switch (this.a) {
            case 10:
                return ej.b(b, (eq) obj);
            case 11:
                return ej.c(b, (eq) obj);
            default:
                throw new IllegalArgumentException("Unknown type " + this.a);
        }
    }

    /* Access modifiers changed, original: protected */
    public void c(Object obj, ej ejVar) {
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            Object obj2 = Array.get(obj, i);
            if (obj2 != null) {
                b(obj2, ejVar);
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof el)) {
            return false;
        }
        el elVar = (el) obj;
        return this.a == elVar.a && this.b == elVar.b && this.c == elVar.c && this.d == elVar.d;
    }

    public int hashCode() {
        return (this.d ? 1 : 0) + ((((((this.a + 1147) * 31) + this.b.hashCode()) * 31) + this.c) * 31);
    }
}
