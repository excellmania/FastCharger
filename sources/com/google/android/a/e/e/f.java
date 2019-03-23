package com.google.android.a.e.e;

import android.util.Pair;
import com.google.android.a.e.m;
import com.google.android.a.h.o;
import com.google.android.a.r;
import java.util.Arrays;
import java.util.Collections;

final class f extends e {
    private static final double[] b = new double[]{23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    private boolean c;
    private long d;
    private final boolean[] e = new boolean[4];
    private final a f = new a(128);
    private boolean g;
    private long h;
    private long i;
    private boolean j;
    private boolean k;
    private long l;
    private long m;

    private static final class a {
        public int a;
        public int b;
        public byte[] c;
        private boolean d;

        public a(int i) {
            this.c = new byte[i];
        }

        public void a() {
            this.d = false;
            this.a = 0;
            this.b = 0;
        }

        public void a(byte[] bArr, int i, int i2) {
            if (this.d) {
                int i3 = i2 - i;
                if (this.c.length < this.a + i3) {
                    this.c = Arrays.copyOf(this.c, (this.a + i3) * 2);
                }
                System.arraycopy(bArr, i, this.c, this.a, i3);
                this.a = i3 + this.a;
            }
        }

        public boolean a(int i, int i2) {
            if (this.d) {
                if (this.b == 0 && i == 181) {
                    this.b = this.a;
                } else {
                    this.a -= i2;
                    this.d = false;
                    return true;
                }
            } else if (i == 179) {
                this.d = true;
            }
            return false;
        }
    }

    public f(m mVar) {
        super(mVar);
    }

    private static Pair<r, Long> a(a aVar) {
        byte[] copyOf = Arrays.copyOf(aVar.c, aVar.a);
        int i = copyOf[5] & 255;
        int i2 = ((copyOf[4] & 255) << 4) | (i >> 4);
        int i3 = ((i & 15) << 8) | (copyOf[6] & 255);
        float f = 1.0f;
        switch ((copyOf[7] & 240) >> 4) {
            case 2:
                f = ((float) (i3 * 4)) / ((float) (i2 * 3));
                break;
            case 3:
                f = ((float) (i3 * 16)) / ((float) (i2 * 9));
                break;
            case 4:
                f = ((float) (i3 * 121)) / ((float) (i2 * 100));
                break;
        }
        r a = r.a(null, "video/mpeg2", -1, -1, -1, i2, i3, Collections.singletonList(copyOf), -1, f);
        long j = 0;
        int i4 = (copyOf[7] & 15) - 1;
        if (i4 >= 0 && i4 < b.length) {
            double d = b[i4];
            i4 = aVar.b;
            int i5 = (copyOf[i4 + 9] & 96) >> 5;
            i4 = copyOf[i4 + 9] & 31;
            if (i5 != i4) {
                d *= (((double) i5) + 1.0d) / ((double) (i4 + 1));
            }
            j = (long) (1000000.0d / d);
        }
        return Pair.create(a, Long.valueOf(j));
    }

    public void a() {
        com.google.android.a.h.m.a(this.e);
        this.f.a();
        this.j = false;
        this.g = false;
        this.h = 0;
    }

    public void a(long j, boolean z) {
        this.j = j != -1;
        if (this.j) {
            this.i = j;
        }
    }

    public void a(o oVar) {
        if (oVar.b() > 0) {
            int d = oVar.d();
            int c = oVar.c();
            byte[] bArr = oVar.a;
            this.h += (long) oVar.b();
            this.a.a(oVar, oVar.b());
            int i = d;
            while (true) {
                int a = com.google.android.a.h.m.a(bArr, d, c, this.e);
                if (a == c) {
                    break;
                }
                int i2 = oVar.a[a + 3] & 255;
                if (!this.c) {
                    d = a - i;
                    if (d > 0) {
                        this.f.a(bArr, i, a);
                    }
                    if (this.f.a(i2, d < 0 ? -d : 0)) {
                        Pair a2 = a(this.f);
                        this.a.a((r) a2.first);
                        this.d = ((Long) a2.second).longValue();
                        this.c = true;
                    }
                }
                if (this.c && (i2 == 184 || i2 == 0)) {
                    int i3 = c - a;
                    if (this.g) {
                        this.a.a(this.m, this.k ? 1 : 0, ((int) (this.h - this.l)) - i3, i3, null);
                        this.k = false;
                    }
                    if (i2 == 184) {
                        this.g = false;
                        this.k = true;
                    } else {
                        this.m = this.j ? this.i : this.m + this.d;
                        this.l = this.h - ((long) i3);
                        this.j = false;
                        this.g = true;
                    }
                }
                d = a + 3;
                i = a;
            }
            if (!this.c) {
                this.f.a(bArr, i, c);
            }
        }
    }

    public void b() {
    }
}
