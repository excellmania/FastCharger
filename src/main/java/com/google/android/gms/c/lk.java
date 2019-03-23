package com.google.android.gms.c;

import android.content.Context;
import com.google.android.gms.ads.internal.d;
import com.google.android.gms.ads.internal.l;

@pa
public class lk {
    private final Context a;
    private final mo b;
    private final tc c;
    private final d d;

    lk(Context context, mo moVar, tc tcVar, d dVar) {
        this.a = context;
        this.b = moVar;
        this.c = tcVar;
        this.d = dVar;
    }

    public Context a() {
        return this.a.getApplicationContext();
    }

    public l a(String str) {
        return new l(this.a, new ha(), str, this.b, this.c, this.d);
    }

    public l b(String str) {
        return new l(this.a.getApplicationContext(), new ha(), str, this.b, this.c, this.d);
    }

    public lk b() {
        return new lk(a(), this.b, this.c, this.d);
    }
}
