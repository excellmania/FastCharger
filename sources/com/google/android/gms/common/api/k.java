package com.google.android.gms.common.api;

import android.support.annotation.NonNull;

public class k extends Exception {
    protected final Status a;

    public k(@NonNull Status status) {
        super(status.c());
        this.a = status;
    }
}
