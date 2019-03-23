package com.google.android.gms.c;

import android.support.annotation.Nullable;
import android.view.View;
import com.google.android.gms.a.b;
import com.google.android.gms.ads.internal.h;
import com.google.android.gms.c.je.a;

@pa
public final class jc extends a {
    private final h a;
    @Nullable
    private final String b;
    private final String c;

    public jc(h hVar, @Nullable String str, String str2) {
        this.a = hVar;
        this.b = str;
        this.c = str2;
    }

    public String a() {
        return this.b;
    }

    public void a(@Nullable com.google.android.gms.a.a aVar) {
        if (aVar != null) {
            this.a.b((View) b.a(aVar));
        }
    }

    public String b() {
        return this.c;
    }

    public void c() {
        this.a.J();
    }

    public void d() {
        this.a.K();
    }
}
