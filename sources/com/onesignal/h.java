package com.onesignal;

import com.google.android.gms.common.api.GoogleApiClient;

public class h {
    private final GoogleApiClient a;
    private final Class b;

    public h(GoogleApiClient googleApiClient) {
        this.a = googleApiClient;
        this.b = googleApiClient.getClass();
    }

    public void a() {
        try {
            this.b.getMethod("connect", new Class[0]).invoke(this.a, new Object[0]);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void b() {
        try {
            this.b.getMethod("disconnect", new Class[0]).invoke(this.a, new Object[0]);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public GoogleApiClient c() {
        return this.a;
    }
}
