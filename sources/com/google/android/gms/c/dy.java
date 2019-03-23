package com.google.android.gms.c;

import com.google.android.gms.c.aw.a;
import java.io.IOException;

public class dy extends fb {
    public dy(dn dnVar, String str, String str2, a aVar, int i, int i2) {
        super(dnVar, str, str2, aVar, i, i2);
    }

    private void c() {
        synchronized (this.e) {
            this.e.aa = (String) this.f.invoke(null, new Object[]{this.b.b()});
        }
    }

    private void d() {
        com.google.android.gms.ads.c.a o = this.b.o();
        if (o != null) {
            try {
                com.google.android.gms.ads.c.a.a b = o.b();
                String a = dp.a(b.a());
                if (a != null) {
                    synchronized (this.e) {
                        this.e.aa = a;
                        this.e.ac = Boolean.valueOf(b.b());
                        this.e.ab = Integer.valueOf(5);
                    }
                }
            } catch (IOException e) {
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void a() {
        if (this.b.h()) {
            d();
        } else {
            c();
        }
    }
}
