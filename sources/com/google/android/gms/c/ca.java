package com.google.android.gms.c;

import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.b;
import com.google.android.gms.common.api.GoogleApiClient.c;
import com.google.android.gms.common.internal.o;

public class ca extends bo {
    private final bz f;

    public ca(Context context, Looper looper, b bVar, c cVar, String str, o oVar) {
        super(context, looper, bVar, cVar, str, oVar);
        this.f = new bz(context, this.e);
    }

    public void a() {
        synchronized (this.f) {
            if (b()) {
                try {
                    this.f.b();
                    this.f.c();
                } catch (Exception e) {
                    Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", e);
                }
            }
            super.a();
        }
    }

    public Location k() {
        return this.f.a();
    }
}
