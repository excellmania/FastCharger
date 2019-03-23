package com.google.android.gms.c;

import java.util.concurrent.TimeUnit;

@pa
public class tf<T> implements th<T> {
    private final T a;
    private final ti b = new ti();

    public tf(T t) {
        this.a = t;
        this.b.a();
    }

    public void a(Runnable runnable) {
        this.b.a(runnable);
    }

    public boolean cancel(boolean z) {
        return false;
    }

    public T get() {
        return this.a;
    }

    public T get(long j, TimeUnit timeUnit) {
        return this.a;
    }

    public boolean isCancelled() {
        return false;
    }

    public boolean isDone() {
        return true;
    }
}
