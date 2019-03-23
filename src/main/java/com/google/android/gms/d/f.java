package com.google.android.gms.d;

import android.support.annotation.NonNull;
import java.util.concurrent.Executor;

class f<TResult> implements h<TResult> {
    private final Executor a;
    private final Object b = new Object();
    private a c;

    public f(@NonNull Executor executor, @NonNull a aVar) {
        this.a = executor;
        this.c = aVar;
    }

    public void a(@NonNull final d<TResult> dVar) {
        if (!dVar.a()) {
            synchronized (this.b) {
                if (this.c == null) {
                    return;
                }
                this.a.execute(new Runnable() {
                    public void run() {
                        synchronized (f.this.b) {
                            if (f.this.c != null) {
                                f.this.c.a(dVar.c());
                            }
                        }
                    }
                });
            }
        }
    }
}
