package com.google.android.gms.d;

import android.support.annotation.NonNull;

public class e<TResult> {
    private final j<TResult> a = new j();

    @NonNull
    public d<TResult> a() {
        return this.a;
    }

    public void a(@NonNull Exception exception) {
        this.a.a(exception);
    }

    public void a(TResult tResult) {
        this.a.a((Object) tResult);
    }

    public boolean b(@NonNull Exception exception) {
        return this.a.b(exception);
    }
}
