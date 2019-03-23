package com.google.android.gms.c;

import com.google.android.gms.c.qq.a;
import com.google.android.gms.common.internal.b;

@pa
public class qn extends a {
    private final String a;
    private final int b;

    public qn(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public String a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof qn)) {
            return false;
        }
        qn qnVar = (qn) obj;
        return b.a(a(), qnVar.a()) && b.a(Integer.valueOf(b()), Integer.valueOf(qnVar.b()));
    }
}
