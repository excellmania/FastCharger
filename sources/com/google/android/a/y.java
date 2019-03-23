package com.google.android.a;

import com.google.android.a.h.c;

public interface y {

    public static final class a implements y {
        private final long a;
        private final long b;
        private final long c;
        private final long d;
        private final c e;

        public a(long j, long j2, long j3, long j4, c cVar) {
            this.a = j;
            this.b = j2;
            this.c = j3;
            this.d = j4;
            this.e = cVar;
        }

        public long[] a(long[] jArr) {
            if (jArr == null || jArr.length < 2) {
                jArr = new long[2];
            }
            long min = Math.min(this.b, (this.e.a() * 1000) - this.c);
            long j = this.a;
            if (this.d != -1) {
                j = Math.max(j, min - this.d);
            }
            jArr[0] = j;
            jArr[1] = min;
            return jArr;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return aVar.a == this.a && aVar.b == this.b && aVar.c == this.c && aVar.d == this.d;
        }

        public int hashCode() {
            return ((((((((int) this.a) + 527) * 31) + ((int) this.b)) * 31) + ((int) this.c)) * 31) + ((int) this.d);
        }
    }

    public static final class b implements y {
        private final long a;
        private final long b;

        public b(long j, long j2) {
            this.a = j;
            this.b = j2;
        }

        public long[] a(long[] jArr) {
            if (jArr == null || jArr.length < 2) {
                jArr = new long[2];
            }
            jArr[0] = this.a;
            jArr[1] = this.b;
            return jArr;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return bVar.a == this.a && bVar.b == this.b;
        }

        public int hashCode() {
            return ((((int) this.a) + 527) * 31) + ((int) this.b);
        }
    }

    long[] a(long[] jArr);
}
