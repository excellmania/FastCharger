package com.google.android.gms.c;

import android.content.Context;
import com.google.android.gms.ads.internal.v;

@pa
public final class st extends se {
    private final ta a;
    private final String b;

    public st(Context context, String str, String str2) {
        this(str2, v.e().a(context, str));
    }

    public st(String str, String str2) {
        this.a = new ta(str2);
        this.b = str;
    }

    public void a() {
        this.a.a(this.b);
    }

    public void b() {
    }
}
