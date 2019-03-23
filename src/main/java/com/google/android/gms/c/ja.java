package com.google.android.gms.c;

import android.support.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

@pa
public class ja {
    private final Map<String, iz> a = new HashMap();
    @Nullable
    private final jb b;

    public ja(@Nullable jb jbVar) {
        this.b = jbVar;
    }

    @Nullable
    public jb a() {
        return this.b;
    }

    public void a(String str, iz izVar) {
        this.a.put(str, izVar);
    }

    public void a(String str, String str2, long j) {
        ix.a(this.b, (iz) this.a.get(str2), j, str);
        this.a.put(str, ix.a(this.b, j));
    }
}
