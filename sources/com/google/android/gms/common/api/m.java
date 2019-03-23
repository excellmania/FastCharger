package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import com.google.android.gms.c.ah;
import com.google.android.gms.c.ai;
import com.google.android.gms.c.p;
import com.google.android.gms.c.q;
import com.google.android.gms.c.vb;
import com.google.android.gms.c.vc;
import com.google.android.gms.c.vf;
import com.google.android.gms.common.api.a.a;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.internal.o;

public abstract class m<O extends a> {
    protected final p a;
    private final Context b;
    private final a<O> c;
    private final O d;
    private final vc<O> e;
    private final Looper f;
    private final int g;
    private final GoogleApiClient h;
    private final ai i;

    protected m(@NonNull Context context, a<O> aVar, Looper looper) {
        c.a((Object) context, (Object) "Null context is not permitted.");
        c.a((Object) aVar, (Object) "Api must not be null.");
        c.a((Object) looper, (Object) "Looper must not be null.");
        this.b = context.getApplicationContext();
        this.c = aVar;
        this.d = null;
        this.f = looper;
        this.e = vc.a(aVar);
        this.h = new q(this);
        this.a = p.a(this.b);
        this.g = this.a.b();
        this.i = new vb();
    }

    public m(@NonNull Context context, a<O> aVar, O o, Looper looper, ai aiVar) {
        c.a((Object) context, (Object) "Null context is not permitted.");
        c.a((Object) aVar, (Object) "Api must not be null.");
        c.a((Object) looper, (Object) "Looper must not be null.");
        this.b = context.getApplicationContext();
        this.c = aVar;
        this.d = o;
        this.f = looper;
        this.e = vc.a(this.c, this.d);
        this.h = new q(this);
        this.a = p.a(this.b);
        this.g = this.a.b();
        this.i = aiVar;
        this.a.a(this);
    }

    public m(@NonNull Context context, a<O> aVar, O o, ai aiVar) {
        this(context, aVar, o, Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper(), aiVar);
    }

    private <A extends a.c, T extends vf.a<? extends f, A>> T a(int i, @NonNull T t) {
        t.i();
        this.a.a(this, i, t);
        return t;
    }

    public ah a(Context context, Handler handler) {
        return new ah(context, handler);
    }

    public vc<O> a() {
        return this.e;
    }

    public <A extends a.c, T extends vf.a<? extends f, A>> T a(@NonNull T t) {
        return a(1, (vf.a) t);
    }

    @WorkerThread
    public f a(Looper looper, p.a<O> aVar) {
        return this.c.b().a(this.b, looper, o.a(this.b), this.d, aVar, aVar);
    }

    public int b() {
        return this.g;
    }

    public <A extends a.c, T extends vf.a<? extends f, A>> T b(@NonNull T t) {
        return a(2, (vf.a) t);
    }

    public GoogleApiClient c() {
        return this.h;
    }

    public Looper d() {
        return this.f;
    }
}
