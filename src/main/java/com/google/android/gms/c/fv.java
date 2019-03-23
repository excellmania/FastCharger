package com.google.android.gms.c;

import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.v;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@pa
public class fv {
    private final Object a = new Object();
    private int b;
    private List<fu> c = new LinkedList();

    @Nullable
    public fu a() {
        fu fuVar = null;
        int i = 0;
        synchronized (this.a) {
            fu fuVar2;
            if (this.c.size() == 0) {
                sz.b("Queue empty");
                return null;
            } else if (this.c.size() >= 2) {
                int i2 = Integer.MIN_VALUE;
                int i3 = 0;
                for (fu fuVar22 : this.c) {
                    fu fuVar3;
                    int i4;
                    int i5 = fuVar22.i();
                    if (i5 > i2) {
                        i = i5;
                        fuVar3 = fuVar22;
                        i4 = i3;
                    } else {
                        i4 = i;
                        fuVar3 = fuVar;
                        i = i2;
                    }
                    i3++;
                    i2 = i;
                    fuVar = fuVar3;
                    i = i4;
                }
                this.c.remove(i);
                return fuVar;
            } else {
                fuVar22 = (fu) this.c.get(0);
                fuVar22.e();
                return fuVar22;
            }
        }
    }

    public boolean a(fu fuVar) {
        boolean z;
        synchronized (this.a) {
            if (this.c.contains(fuVar)) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public boolean b(fu fuVar) {
        synchronized (this.a) {
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                fu fuVar2 = (fu) it.next();
                if (!((Boolean) is.ae.c()).booleanValue() || v.i().b()) {
                    if (((Boolean) is.ag.c()).booleanValue() && !v.i().c() && fuVar != fuVar2 && fuVar2.d().equals(fuVar.d())) {
                        it.remove();
                        return true;
                    }
                } else if (fuVar != fuVar2 && fuVar2.b().equals(fuVar.b())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public void c(fu fuVar) {
        synchronized (this.a) {
            if (this.c.size() >= 10) {
                sz.b("Queue is full, current size = " + this.c.size());
                this.c.remove(0);
            }
            int i = this.b;
            this.b = i + 1;
            fuVar.a(i);
            this.c.add(fuVar);
        }
    }
}
