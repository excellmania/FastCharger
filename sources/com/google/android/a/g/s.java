package com.google.android.a.g;

import android.net.Uri;
import com.google.android.a.g.o.c;
import java.io.InputStream;

public final class s<T> implements c {
    private final h a;
    private final r b;
    private final a<T> c;
    private volatile T d;
    private volatile boolean e;

    public interface a<T> {
        T b(String str, InputStream inputStream);
    }

    public s(String str, r rVar, a<T> aVar) {
        this.b = rVar;
        this.c = aVar;
        this.a = new h(Uri.parse(str), 1);
    }

    public final T a() {
        return this.d;
    }

    public final void f() {
        this.e = true;
    }

    public final boolean g() {
        return this.e;
    }

    public final void h() {
        g gVar = new g(this.b, this.a);
        try {
            gVar.a();
            this.d = this.c.b(this.b.a(), gVar);
        } finally {
            gVar.close();
        }
    }
}
