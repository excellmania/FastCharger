package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.c.aj;
import com.google.android.gms.common.internal.c;

public final class d {
    public static c<Status> a(Status status) {
        c.a((Object) status, (Object) "Result must not be null");
        aj ajVar = new aj(Looper.getMainLooper());
        ajVar.a((f) status);
        return ajVar;
    }
}
