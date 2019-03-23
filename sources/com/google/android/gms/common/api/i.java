package com.google.android.gms.common.api;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;

public abstract class i<R extends f, S extends f> {
    @NonNull
    public Status a(@NonNull Status status) {
        return status;
    }

    @Nullable
    @WorkerThread
    public abstract c<S> a(@NonNull R r);
}
