package com.google.android.gms.c;

import android.os.Looper;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.a.a;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.m;

public class q<O extends a> extends h {
    private final m<O> a;

    public q(m<O> mVar) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.a = mVar;
    }

    public Looper a() {
        return this.a.d();
    }

    public <A extends c, T extends vf.a<? extends f, A>> T a(@NonNull T t) {
        return this.a.a(t);
    }

    public void a(al alVar) {
    }

    public void b(al alVar) {
    }
}
