package com.google.android.a.g;

import android.content.Context;
import com.google.android.a.h.b;
import com.google.android.a.h.x;

public final class l implements r {
    private final r a;
    private final r b;
    private final r c;
    private final r d;
    private r e;

    public l(Context context, q qVar, r rVar) {
        this.a = (r) b.a((Object) rVar);
        this.b = new m(qVar);
        this.c = new c(context, qVar);
        this.d = new e(context, qVar);
    }

    public l(Context context, q qVar, String str) {
        this(context, qVar, str, false);
    }

    public l(Context context, q qVar, String str, boolean z) {
        this(context, qVar, new k(str, null, qVar, 8000, 8000, z));
    }

    public int a(byte[] bArr, int i, int i2) {
        return this.e.a(bArr, i, i2);
    }

    public long a(h hVar) {
        b.b(this.e == null);
        String scheme = hVar.a.getScheme();
        if (x.a(hVar.a)) {
            if (hVar.a.getPath().startsWith("/android_asset/")) {
                this.e = this.c;
            } else {
                this.e = this.b;
            }
        } else if ("asset".equals(scheme)) {
            this.e = this.c;
        } else if ("content".equals(scheme)) {
            this.e = this.d;
        } else {
            this.e = this.a;
        }
        return this.e.a(hVar);
    }

    public String a() {
        return this.e == null ? null : this.e.a();
    }

    public void b() {
        if (this.e != null) {
            try {
                this.e.b();
            } finally {
                this.e = null;
            }
        }
    }
}
