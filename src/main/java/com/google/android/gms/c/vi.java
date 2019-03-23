package com.google.android.gms.c;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.GoogleApiClient.b;
import com.google.android.gms.common.api.GoogleApiClient.c;
import com.google.android.gms.common.api.a;

public class vi implements b, c {
    public final a<?> a;
    private final int b;
    private vj c;

    public vi(a<?> aVar, int i) {
        this.a = aVar;
        this.b = i;
    }

    private void a() {
        com.google.android.gms.common.internal.c.a(this.c, (Object) "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
    }

    public void a(int i) {
        a();
        this.c.a(i);
    }

    public void a(@Nullable Bundle bundle) {
        a();
        this.c.a(bundle);
    }

    public void a(vj vjVar) {
        this.c = vjVar;
    }

    public void a(@NonNull com.google.android.gms.common.a aVar) {
        a();
        this.c.a(aVar, this.a, this.b);
    }
}
