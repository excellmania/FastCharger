package com.google.android.a.c.a;

import com.google.android.a.h.x;
import java.util.UUID;

public class b {
    public final String a;
    public final UUID b;
    public final com.google.android.a.d.a.b c;

    public b(String str, UUID uuid, com.google.android.a.d.a.b bVar) {
        this.a = (String) com.google.android.a.h.b.a((Object) str);
        this.b = uuid;
        this.c = bVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        b bVar = (b) obj;
        return this.a.equals(bVar.a) && x.a(this.b, bVar.b) && x.a(this.c, bVar.c);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.b != null ? this.b.hashCode() : 0) + (this.a.hashCode() * 37)) * 37;
        if (this.c != null) {
            i = this.c.hashCode();
        }
        return hashCode + i;
    }
}
