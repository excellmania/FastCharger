package com.google.android.a.e.a;

import com.google.android.a.h.b;
import com.google.android.a.h.m;
import com.google.android.a.h.n;
import com.google.android.a.h.o;
import com.google.android.a.r;
import java.util.ArrayList;
import java.util.List;

final class e extends d {
    private final o b = new o(m.a);
    private final o c = new o(4);
    private int d;
    private boolean e;
    private int f;

    private static final class a {
        public final List<byte[]> a;
        public final int b;
        public final float c;
        public final int d;
        public final int e;

        public a(List<byte[]> list, int i, int i2, int i3, float f) {
            this.a = list;
            this.b = i;
            this.c = f;
            this.d = i2;
            this.e = i3;
        }
    }

    public e(com.google.android.a.e.m mVar) {
        super(mVar);
    }

    private a b(o oVar) {
        int i;
        int i2;
        int i3 = -1;
        oVar.b(4);
        int f = (oVar.f() & 3) + 1;
        b.b(f != 3);
        ArrayList arrayList = new ArrayList();
        int f2 = oVar.f() & 31;
        for (i = 0; i < f2; i++) {
            arrayList.add(m.a(oVar));
        }
        int f3 = oVar.f();
        for (i = 0; i < f3; i++) {
            arrayList.add(m.a(oVar));
        }
        float f4 = 1.0f;
        if (f2 > 0) {
            n nVar = new n((byte[]) arrayList.get(0));
            nVar.a((f + 1) * 8);
            m.b a = m.a(nVar);
            i2 = a.b;
            i3 = a.c;
            f4 = a.d;
        } else {
            i2 = -1;
        }
        return new a(arrayList, f, i2, i3, f4);
    }

    /* Access modifiers changed, original: protected */
    public void a(o oVar, long j) {
        int f = oVar.f();
        long j2 = j + (((long) oVar.j()) * 1000);
        if (f == 0 && !this.e) {
            o oVar2 = new o(new byte[oVar.b()]);
            oVar.a(oVar2.a, 0, oVar.b());
            a b = b(oVar2);
            this.d = b.b;
            this.a.a(r.a(null, "video/avc", -1, -1, a(), b.d, b.e, b.a, -1, b.c));
            this.e = true;
        } else if (f == 1) {
            byte[] bArr = this.c.a;
            bArr[0] = (byte) 0;
            bArr[1] = (byte) 0;
            bArr[2] = (byte) 0;
            f = 4 - this.d;
            int i = 0;
            while (oVar.b() > 0) {
                oVar.a(this.c.a, f, this.d);
                this.c.b(0);
                int s = this.c.s();
                this.b.b(0);
                this.a.a(this.b, 4);
                int i2 = i + 4;
                this.a.a(oVar, s);
                i = i2 + s;
            }
            this.a.a(j2, this.f == 1 ? 1 : 0, i, 0, null);
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean a(o oVar) {
        int f = oVar.f();
        int i = (f >> 4) & 15;
        f &= 15;
        if (f != 7) {
            throw new com.google.android.a.e.a.d.a("Video format not supported: " + f);
        }
        this.f = i;
        return i != 5;
    }
}
