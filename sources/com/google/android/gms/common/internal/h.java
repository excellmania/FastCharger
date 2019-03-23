package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;

public class h<T extends IInterface> extends t<T> {
    private final com.google.android.gms.common.api.a.h<T> e;

    /* Access modifiers changed, original: protected */
    public T a(IBinder iBinder) {
        return this.e.a(iBinder);
    }

    /* Access modifiers changed, original: protected */
    public String i() {
        return this.e.a();
    }

    /* Access modifiers changed, original: protected */
    public String j() {
        return this.e.b();
    }

    public com.google.android.gms.common.api.a.h<T> k() {
        return this.e;
    }
}
