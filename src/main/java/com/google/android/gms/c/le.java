package com.google.android.gms.c;

import com.google.android.gms.ads.internal.v;

@pa
public class le extends se {
    final tr a;
    final lg b;
    private final String c;

    le(tr trVar, lg lgVar, String str) {
        this.a = trVar;
        this.b = lgVar;
        this.c = str;
        v.B().a(this);
    }

    public void a() {
        try {
            this.b.a(this.c);
        } finally {
            sj.a.post(new Runnable() {
                public void run() {
                    v.B().b(le.this);
                }
            });
        }
    }

    public void b() {
        this.b.b();
    }
}
