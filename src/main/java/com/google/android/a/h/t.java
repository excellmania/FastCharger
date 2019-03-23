package com.google.android.a.h;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public final class t {
    private static final Comparator<a> a = new Comparator<a>() {
        /* renamed from: a */
        public int compare(a aVar, a aVar2) {
            return aVar.a - aVar2.a;
        }
    };
    private static final Comparator<a> b = new Comparator<a>() {
        /* renamed from: a */
        public int compare(a aVar, a aVar2) {
            return aVar.c < aVar2.c ? -1 : aVar2.c < aVar.c ? 1 : 0;
        }
    };
    private final int c;
    private final ArrayList<a> d = new ArrayList();
    private final a[] e = new a[5];
    private int f = -1;
    private int g;
    private int h;
    private int i;

    private static class a {
        public int a;
        public int b;
        public float c;

        private a() {
        }

        /* synthetic */ a(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public t(int i) {
        this.c = i;
    }

    private void a() {
        if (this.f != 1) {
            Collections.sort(this.d, a);
            this.f = 1;
        }
    }

    private void b() {
        if (this.f != 0) {
            Collections.sort(this.d, b);
            this.f = 0;
        }
    }

    public float a(float f) {
        b();
        float f2 = f * ((float) this.h);
        int i = 0;
        for (int i2 = 0; i2 < this.d.size(); i2++) {
            a aVar = (a) this.d.get(i2);
            i += aVar.b;
            if (((float) i) >= f2) {
                return aVar.c;
            }
        }
        return this.d.isEmpty() ? Float.NaN : ((a) this.d.get(this.d.size() - 1)).c;
    }

    public void a(int i, float f) {
        int i2;
        a aVar;
        a();
        if (this.i > 0) {
            a[] aVarArr = this.e;
            i2 = this.i - 1;
            this.i = i2;
            aVar = aVarArr[i2];
        } else {
            aVar = new a();
        }
        i2 = this.g;
        this.g = i2 + 1;
        aVar.a = i2;
        aVar.b = i;
        aVar.c = f;
        this.d.add(aVar);
        this.h += i;
        while (this.h > this.c) {
            i2 = this.h - this.c;
            aVar = (a) this.d.get(0);
            if (aVar.b <= i2) {
                this.h -= aVar.b;
                this.d.remove(0);
                if (this.i < 5) {
                    a[] aVarArr2 = this.e;
                    int i3 = this.i;
                    this.i = i3 + 1;
                    aVarArr2[i3] = aVar;
                }
            } else {
                aVar.b -= i2;
                this.h -= i2;
            }
        }
    }
}
