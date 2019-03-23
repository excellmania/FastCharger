package com.google.android.gms.c;

import com.google.android.gms.c.aw.a;

public class ee extends fb {
    private final StackTraceElement[] i;

    public ee(dn dnVar, String str, String str2, a aVar, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(dnVar, str, str2, aVar, i, i2);
        this.i = stackTraceElementArr;
    }

    /* Access modifiers changed, original: protected */
    public void a() {
        if (this.i != null) {
            dl dlVar = new dl((String) this.f.invoke(null, new Object[]{this.i}));
            synchronized (this.e) {
                this.e.L = dlVar.a;
                if (dlVar.b.booleanValue()) {
                    this.e.V = Integer.valueOf(dlVar.c.booleanValue() ? 0 : 1);
                }
            }
        }
    }
}
