package com.google.android.gms.common.api;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public abstract class c<R extends f> {

    public interface a {
        void a(Status status);
    }

    @Nullable
    public Integer a() {
        throw new UnsupportedOperationException();
    }

    public void a(@NonNull a aVar) {
        throw new UnsupportedOperationException();
    }

    public abstract void a(@NonNull g<? super R> gVar);
}
