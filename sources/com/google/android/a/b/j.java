package com.google.android.a.b;

import com.google.android.a.g.d;
import java.util.List;

public interface j {

    public static final class a implements j {
        private final d a;
        private final int b;
        private final long c;
        private final long d;
        private final long e;
        private final float f;

        public a(d dVar) {
            this(dVar, 800000, 10000, 25000, 25000, 0.75f);
        }

        public a(d dVar, int i, int i2, int i3, int i4, float f) {
            this.a = dVar;
            this.b = i;
            this.c = ((long) i2) * 1000;
            this.d = ((long) i3) * 1000;
            this.e = ((long) i4) * 1000;
            this.f = f;
        }

        private i a(i[] iVarArr, long j) {
            long j2 = j == -1 ? (long) this.b : (long) (((float) j) * this.f);
            for (i iVar : iVarArr) {
                if (((long) iVar.c) <= j2) {
                    return iVar;
                }
            }
            return iVarArr[iVarArr.length - 1];
        }

        public void a() {
        }

        public void a(List<? extends m> list, long j, i[] iVarArr, b bVar) {
            i iVar;
            Object obj = null;
            long j2 = list.isEmpty() ? 0 : ((m) list.get(list.size() - 1)).i - j;
            i iVar2 = bVar.c;
            i a = a(iVarArr, this.a.a());
            Object obj2 = (a == null || iVar2 == null || a.c <= iVar2.c) ? null : 1;
            if (!(a == null || iVar2 == null || a.c >= iVar2.c)) {
                obj = 1;
            }
            if (obj2 == null) {
                if (!(obj == null || iVar2 == null || j2 < this.d)) {
                    iVar = iVar2;
                }
                iVar = a;
            } else if (j2 < this.c) {
                iVar = iVar2;
            } else {
                if (j2 >= this.e) {
                    for (int i = 1; i < list.size(); i++) {
                        m mVar = (m) list.get(i);
                        if (mVar.h - j >= this.e && mVar.d.c < a.c && mVar.d.e < a.e && mVar.d.e < 720 && mVar.d.d < 1280) {
                            bVar.a = i;
                            break;
                        }
                    }
                    iVar = a;
                }
                iVar = a;
            }
            if (!(iVar2 == null || iVar == iVar2)) {
                bVar.b = 3;
            }
            bVar.c = iVar;
        }

        public void b() {
        }
    }

    public static final class b {
        public int a;
        public int b = 1;
        public i c;
    }

    void a();

    void a(List<? extends m> list, long j, i[] iVarArr, b bVar);

    void b();
}
