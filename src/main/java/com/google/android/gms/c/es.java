package com.google.android.gms.c;

import java.util.Arrays;

final class es {
    final int a;
    final byte[] b;

    es(int i, byte[] bArr) {
        this.a = i;
        this.b = bArr;
    }

    /* Access modifiers changed, original: 0000 */
    public int a() {
        return (ej.f(this.a) + 0) + this.b.length;
    }

    /* Access modifiers changed, original: 0000 */
    public void a(ej ejVar) {
        ejVar.e(this.a);
        ejVar.d(this.b);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof es)) {
            return false;
        }
        es esVar = (es) obj;
        return this.a == esVar.a && Arrays.equals(this.b, esVar.b);
    }

    public int hashCode() {
        return ((this.a + 527) * 31) + Arrays.hashCode(this.b);
    }
}
