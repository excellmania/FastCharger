package com.google.android.gms.c;

import com.google.android.gms.c.aw.a;
import java.util.List;

public class ed extends fb {
    private List<Long> i = null;

    public ed(dn dnVar, String str, String str2, a aVar, int i, int i2) {
        super(dnVar, str, str2, aVar, i, i2);
    }

    /* Access modifiers changed, original: protected */
    public void a() {
        this.e.y = Long.valueOf(-1);
        this.e.z = Long.valueOf(-1);
        if (this.i == null) {
            this.i = (List) this.f.invoke(null, new Object[]{this.b.a()});
        }
        if (this.i != null && this.i.size() == 2) {
            synchronized (this.e) {
                this.e.y = Long.valueOf(((Long) this.i.get(0)).longValue());
                this.e.z = Long.valueOf(((Long) this.i.get(1)).longValue());
            }
        }
    }
}
