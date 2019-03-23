package com.google.android.gms.c;

public final class em implements Cloneable {
    private static final en a = new en();
    private boolean b;
    private int[] c;
    private en[] d;
    private int e;

    em() {
        this(10);
    }

    em(int i) {
        this.b = false;
        int c = c(i);
        this.c = new int[c];
        this.d = new en[c];
        this.e = 0;
    }

    private boolean a(int[] iArr, int[] iArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private boolean a(en[] enVarArr, en[] enVarArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (!enVarArr[i2].equals(enVarArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    private int c(int i) {
        return d(i * 4) / 4;
    }

    private int d(int i) {
        for (int i2 = 4; i2 < 32; i2++) {
            if (i <= (1 << i2) - 12) {
                return (1 << i2) - 12;
            }
        }
        return i;
    }

    private int e(int i) {
        int i2 = 0;
        int i3 = this.e - 1;
        while (i2 <= i3) {
            int i4 = (i2 + i3) >>> 1;
            int i5 = this.c[i4];
            if (i5 < i) {
                i2 = i4 + 1;
            } else if (i5 <= i) {
                return i4;
            } else {
                i3 = i4 - 1;
            }
        }
        return i2 ^ -1;
    }

    /* Access modifiers changed, original: 0000 */
    public int a() {
        return this.e;
    }

    /* Access modifiers changed, original: 0000 */
    public en a(int i) {
        int e = e(i);
        return (e < 0 || this.d[e] == a) ? null : this.d[e];
    }

    /* Access modifiers changed, original: 0000 */
    public void a(int i, en enVar) {
        int e = e(i);
        if (e >= 0) {
            this.d[e] = enVar;
            return;
        }
        e ^= -1;
        if (e >= this.e || this.d[e] != a) {
            if (this.e >= this.c.length) {
                int c = c(this.e + 1);
                int[] iArr = new int[c];
                en[] enVarArr = new en[c];
                System.arraycopy(this.c, 0, iArr, 0, this.c.length);
                System.arraycopy(this.d, 0, enVarArr, 0, this.d.length);
                this.c = iArr;
                this.d = enVarArr;
            }
            if (this.e - e != 0) {
                System.arraycopy(this.c, e, this.c, e + 1, this.e - e);
                System.arraycopy(this.d, e, this.d, e + 1, this.e - e);
            }
            this.c[e] = i;
            this.d[e] = enVar;
            this.e++;
            return;
        }
        this.c[e] = i;
        this.d[e] = enVar;
    }

    /* Access modifiers changed, original: 0000 */
    public en b(int i) {
        return this.d[i];
    }

    public boolean b() {
        return a() == 0;
    }

    /* renamed from: c */
    public final em clone() {
        int a = a();
        em emVar = new em(a);
        System.arraycopy(this.c, 0, emVar.c, 0, a);
        for (int i = 0; i < a; i++) {
            if (this.d[i] != null) {
                emVar.d[i] = (en) this.d[i].clone();
            }
        }
        emVar.e = a;
        return emVar;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof em)) {
            return false;
        }
        em emVar = (em) obj;
        return a() != emVar.a() ? false : a(this.c, emVar.c, this.e) && a(this.d, emVar.d, this.e);
    }

    public int hashCode() {
        int i = 17;
        for (int i2 = 0; i2 < this.e; i2++) {
            i = (((i * 31) + this.c[i2]) * 31) + this.d[i2].hashCode();
        }
        return i;
    }
}
