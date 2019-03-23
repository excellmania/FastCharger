package com.google.android.a.c;

import android.content.Context;
import com.google.android.a.b.o;
import com.google.android.a.c.a.d;
import com.google.android.a.c.a.f;
import com.google.android.a.c.c.a;
import com.google.android.a.h.x;
import java.util.List;

public final class e implements c {
    private final int a;
    private final Context b;
    private final boolean c;
    private final boolean d;

    private e(int i, Context context, boolean z, boolean z2) {
        this.a = i;
        this.b = context;
        this.c = z;
        this.d = z2;
    }

    public static e a() {
        return new e(1, null, false, false);
    }

    public static e a(Context context, boolean z, boolean z2) {
        return new e(0, context, z, z2);
    }

    public void a(d dVar, int i, a aVar) {
        f a = dVar.a(i);
        for (int i2 = 0; i2 < a.c.size(); i2++) {
            com.google.android.a.c.a.a aVar2 = (com.google.android.a.c.a.a) a.c.get(i2);
            if (aVar2.b == this.a) {
                int i3;
                if (this.a == 0) {
                    int[] a2;
                    if (this.c) {
                        Context context = this.b;
                        List list = aVar2.c;
                        boolean z = this.d && aVar2.a();
                        a2 = o.a(context, list, null, z);
                    } else {
                        a2 = x.a(aVar2.c.size());
                    }
                    if (r6 > 1) {
                        aVar.a(dVar, i, i2, a2);
                    }
                    for (int a3 : a2) {
                        aVar.a(dVar, i, i2, a3);
                    }
                } else {
                    for (i3 = 0; i3 < aVar2.c.size(); i3++) {
                        aVar.a(dVar, i, i2, i3);
                    }
                }
            }
        }
    }
}
