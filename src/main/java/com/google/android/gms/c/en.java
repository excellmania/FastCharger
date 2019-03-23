package com.google.android.gms.c;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

class en implements Cloneable {
    private el<?, ?> a;
    private Object b;
    private List<es> c = new ArrayList();

    en() {
    }

    private byte[] c() {
        byte[] bArr = new byte[a()];
        a(ej.a(bArr));
        return bArr;
    }

    /* Access modifiers changed, original: 0000 */
    public int a() {
        int i = 0;
        if (this.b != null) {
            return this.a.a(this.b);
        }
        Iterator it = this.c.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            i = ((es) it.next()).a() + i2;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(ej ejVar) {
        if (this.b != null) {
            this.a.a(this.b, ejVar);
            return;
        }
        for (es a : this.c) {
            a.a(ejVar);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(es esVar) {
        this.c.add(esVar);
    }

    /* renamed from: b */
    public final en clone() {
        int i = 0;
        en enVar = new en();
        try {
            enVar.a = this.a;
            if (this.c == null) {
                enVar.c = null;
            } else {
                enVar.c.addAll(this.c);
            }
            if (this.b != null) {
                int i2;
                if (this.b instanceof eq) {
                    enVar.b = (eq) ((eq) this.b).clone();
                } else if (this.b instanceof byte[]) {
                    enVar.b = ((byte[]) this.b).clone();
                } else if (this.b instanceof byte[][]) {
                    byte[][] bArr = (byte[][]) this.b;
                    byte[][] bArr2 = new byte[bArr.length][];
                    enVar.b = bArr2;
                    for (i2 = 0; i2 < bArr.length; i2++) {
                        bArr2[i2] = (byte[]) bArr[i2].clone();
                    }
                } else if (this.b instanceof boolean[]) {
                    enVar.b = ((boolean[]) this.b).clone();
                } else if (this.b instanceof int[]) {
                    enVar.b = ((int[]) this.b).clone();
                } else if (this.b instanceof long[]) {
                    enVar.b = ((long[]) this.b).clone();
                } else if (this.b instanceof float[]) {
                    enVar.b = ((float[]) this.b).clone();
                } else if (this.b instanceof double[]) {
                    enVar.b = ((double[]) this.b).clone();
                } else if (this.b instanceof eq[]) {
                    eq[] eqVarArr = (eq[]) this.b;
                    eq[] eqVarArr2 = new eq[eqVarArr.length];
                    enVar.b = eqVarArr2;
                    while (true) {
                        i2 = i;
                        if (i2 >= eqVarArr.length) {
                            break;
                        }
                        eqVarArr2[i2] = (eq) eqVarArr[i2].clone();
                        i = i2 + 1;
                    }
                }
            }
            return enVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof en)) {
            return false;
        }
        en enVar = (en) obj;
        if (this.b != null && enVar.b != null) {
            return this.a == enVar.a ? !this.a.b.isArray() ? this.b.equals(enVar.b) : this.b instanceof byte[] ? Arrays.equals((byte[]) this.b, (byte[]) enVar.b) : this.b instanceof int[] ? Arrays.equals((int[]) this.b, (int[]) enVar.b) : this.b instanceof long[] ? Arrays.equals((long[]) this.b, (long[]) enVar.b) : this.b instanceof float[] ? Arrays.equals((float[]) this.b, (float[]) enVar.b) : this.b instanceof double[] ? Arrays.equals((double[]) this.b, (double[]) enVar.b) : this.b instanceof boolean[] ? Arrays.equals((boolean[]) this.b, (boolean[]) enVar.b) : Arrays.deepEquals((Object[]) this.b, (Object[]) enVar.b) : false;
        } else {
            if (this.c != null && enVar.c != null) {
                return this.c.equals(enVar.c);
            }
            try {
                return Arrays.equals(c(), enVar.c());
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }
    }

    public int hashCode() {
        try {
            return Arrays.hashCode(c()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}
