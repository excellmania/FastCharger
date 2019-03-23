package com.google.android.gms.d;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.c;
import java.util.concurrent.Executor;

final class j<TResult> extends d<TResult> {
    private final Object a = new Object();
    private final i<TResult> b = new i();
    private boolean c;
    private TResult d;
    private Exception e;

    j() {
    }

    private void d() {
        c.a(this.c, (Object) "Task is not yet complete");
    }

    private void e() {
        c.a(!this.c, (Object) "Task is already complete");
    }

    private void f() {
        synchronized (this.a) {
            if (this.c) {
                this.b.a((d) this);
                return;
            }
        }
    }

    @NonNull
    public d<TResult> a(@NonNull Executor executor, @NonNull a aVar) {
        this.b.a(new f(executor, aVar));
        f();
        return this;
    }

    @NonNull
    public d<TResult> a(@NonNull Executor executor, @NonNull b<? super TResult> bVar) {
        this.b.a(new g(executor, bVar));
        f();
        return this;
    }

    public void a(@NonNull Exception exception) {
        c.a((Object) exception, (Object) "Exception must not be null");
        synchronized (this.a) {
            e();
            this.c = true;
            this.e = exception;
        }
        this.b.a((d) this);
    }

    public void a(TResult tResult) {
        synchronized (this.a) {
            e();
            this.c = true;
            this.d = tResult;
        }
        this.b.a((d) this);
    }

    public boolean a() {
        boolean z;
        synchronized (this.a) {
            z = this.c && this.e == null;
        }
        return z;
    }

    public TResult b() {
        Object obj;
        synchronized (this.a) {
            d();
            if (this.e != null) {
                throw new c(this.e);
            }
            obj = this.d;
        }
        return obj;
    }

    public boolean b(@NonNull Exception exception) {
        boolean z = true;
        c.a((Object) exception, (Object) "Exception must not be null");
        synchronized (this.a) {
            if (this.c) {
                z = false;
            } else {
                this.c = true;
                this.e = exception;
                this.b.a((d) this);
            }
        }
        return z;
    }

    @Nullable
    public Exception c() {
        Exception exception;
        synchronized (this.a) {
            exception = this.e;
        }
        return exception;
    }
}
