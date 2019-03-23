package com.google.android.a.e.g;

import com.google.android.a.e.f;
import com.google.android.a.h.b;
import com.google.android.a.t;
import java.util.Stack;

final class a implements b {
    private final byte[] a = new byte[8];
    private final Stack<a> b = new Stack();
    private final e c = new e();
    private c d;
    private int e;
    private int f;
    private long g;

    private static final class a {
        private final int a;
        private final long b;

        private a(int i, long j) {
            this.a = i;
            this.b = j;
        }
    }

    a() {
    }

    private long a(f fVar, int i) {
        int i2 = 0;
        fVar.b(this.a, 0, i);
        long j = 0;
        while (i2 < i) {
            j = (j << 8) | ((long) (this.a[i2] & 255));
            i2++;
        }
        return j;
    }

    private double b(f fVar, int i) {
        long a = a(fVar, i);
        return i == 4 ? (double) Float.intBitsToFloat((int) a) : Double.longBitsToDouble(a);
    }

    private long b(f fVar) {
        fVar.a();
        while (true) {
            fVar.c(this.a, 0, 4);
            int a = e.a(this.a[0]);
            if (a != -1 && a <= 4) {
                int a2 = (int) e.a(this.a, a, false);
                if (this.d.b(a2)) {
                    fVar.b(a);
                    return (long) a2;
                }
            }
            fVar.b(1);
        }
    }

    private String c(f fVar, int i) {
        if (i == 0) {
            return "";
        }
        byte[] bArr = new byte[i];
        fVar.b(bArr, 0, i);
        return new String(bArr);
    }

    public void a() {
        this.e = 0;
        this.b.clear();
        this.c.a();
    }

    public void a(c cVar) {
        this.d = cVar;
    }

    public boolean a(f fVar) {
        b.b(this.d != null);
        while (true) {
            if (this.b.isEmpty() || fVar.c() < ((a) this.b.peek()).b) {
                if (this.e == 0) {
                    long a = this.c.a(fVar, true, false, 4);
                    if (a == -2) {
                        a = b(fVar);
                    }
                    if (a == -1) {
                        return false;
                    }
                    this.f = (int) a;
                    this.e = 1;
                }
                if (this.e == 1) {
                    this.g = this.c.a(fVar, false, true, 8);
                    this.e = 2;
                }
                int a2 = this.d.a(this.f);
                switch (a2) {
                    case 0:
                        fVar.b((int) this.g);
                        this.e = 0;
                    case 1:
                        long c = fVar.c();
                        this.b.add(new a(this.f, this.g + c));
                        this.d.a(this.f, c, this.g);
                        this.e = 0;
                        return true;
                    case 2:
                        if (this.g > 8) {
                            throw new t("Invalid integer size: " + this.g);
                        }
                        this.d.a(this.f, a(fVar, (int) this.g));
                        this.e = 0;
                        return true;
                    case 3:
                        if (this.g > 2147483647L) {
                            throw new t("String element size: " + this.g);
                        }
                        this.d.a(this.f, c(fVar, (int) this.g));
                        this.e = 0;
                        return true;
                    case 4:
                        this.d.a(this.f, (int) this.g, fVar);
                        this.e = 0;
                        return true;
                    case 5:
                        if (this.g == 4 || this.g == 8) {
                            this.d.a(this.f, b(fVar, (int) this.g));
                            this.e = 0;
                            return true;
                        }
                        throw new t("Invalid float size: " + this.g);
                    default:
                        throw new t("Invalid element type " + a2);
                }
            }
            this.d.c(((a) this.b.pop()).a);
            return true;
        }
    }
}
