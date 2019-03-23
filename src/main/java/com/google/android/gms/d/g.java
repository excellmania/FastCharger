package com.google.android.gms.d;

import android.support.annotation.NonNull;
import java.util.concurrent.Executor;

class g<TResult> implements h<TResult> {
    private final Executor a;
    private final Object b = new Object();
    private b<? super TResult> c;

    public g(@NonNull Executor executor, @NonNull b<? super TResult> bVar) {
        this.a = executor;
        this.c = bVar;
    }

    public void a(@NonNull final d<TResult> dVar) {
        if (dVar.a()) {
            synchronized (this.b) {
                if (this.c == null) {
                    return;
                }
                this.a.execute(new Runnable() {
                    public void run() {
                        synchronized (g.this.b) {
                            if (g.this.c != null) {
                                g.this.c.a(dVar.b());
                            }
                        }
                    }
                });
            }
        }
    }
}
