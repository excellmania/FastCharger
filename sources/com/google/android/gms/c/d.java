package com.google.android.gms.c;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.a.a;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.o;

public final class d<O extends a> extends m<O> {
    private final f b;
    private final vi c;
    private final o d;
    private final b<? extends cs, ct> e;

    public d(@NonNull Context context, com.google.android.gms.common.api.a<O> aVar, Looper looper, @NonNull f fVar, @NonNull vi viVar, o oVar, b<? extends cs, ct> bVar) {
        super(context, aVar, looper);
        this.b = fVar;
        this.c = viVar;
        this.d = oVar;
        this.e = bVar;
        this.a.a((m) this);
    }

    public ah a(Context context, Handler handler) {
        return new ah(context, handler, this.d, this.e);
    }

    public f a(Looper looper, p.a<O> aVar) {
        this.c.a((vj) aVar);
        return this.b;
    }
}
