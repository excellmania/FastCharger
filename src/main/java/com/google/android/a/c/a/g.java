package com.google.android.a.c.a;

import android.net.Uri;
import com.google.android.a.h.b;
import com.google.android.a.h.w;

public final class g {
    public final long a;
    public final long b;
    private final String c;
    private final String d;
    private int e;

    public g(String str, String str2, long j, long j2) {
        boolean z = (str == null && str2 == null) ? false : true;
        b.a(z);
        this.c = str;
        this.d = str2;
        this.a = j;
        this.b = j2;
    }

    public Uri a() {
        return w.a(this.c, this.d);
    }

    public g a(g gVar) {
        g gVar2 = null;
        long j = -1;
        if (gVar != null && b().equals(gVar.b())) {
            String str;
            String str2;
            long j2;
            if (this.b != -1 && this.a + this.b == gVar.a) {
                str = this.c;
                str2 = this.d;
                j2 = this.a;
                if (gVar.b != -1) {
                    j = this.b + gVar.b;
                }
                gVar2 = new g(str, str2, j2, j);
            } else if (gVar.b != -1 && gVar.a + gVar.b == this.a) {
                str = this.c;
                str2 = this.d;
                j2 = gVar.a;
                if (this.b != -1) {
                    j = gVar.b + this.b;
                }
                gVar2 = new g(str, str2, j2, j);
            }
        }
        return gVar2;
    }

    public String b() {
        return w.b(this.c, this.d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return this.a == gVar.a && this.b == gVar.b && b().equals(gVar.b());
    }

    public int hashCode() {
        if (this.e == 0) {
            this.e = ((((((int) this.a) + 527) * 31) + ((int) this.b)) * 31) + b().hashCode();
        }
        return this.e;
    }
}
