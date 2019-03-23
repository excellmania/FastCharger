package com.google.android.gms.d;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.concurrent.Executor;

public abstract class d<TResult> {
    @NonNull
    public abstract d<TResult> a(@NonNull Executor executor, @NonNull a aVar);

    @NonNull
    public abstract d<TResult> a(@NonNull Executor executor, @NonNull b<? super TResult> bVar);

    public abstract boolean a();

    public abstract TResult b();

    @Nullable
    public abstract Exception c();
}
