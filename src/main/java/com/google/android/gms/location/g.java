package com.google.android.gms.location;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.c.br;
import com.google.android.gms.c.bu;
import com.google.android.gms.c.ca;
import com.google.android.gms.c.cj;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.c;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.a.b;
import com.google.android.gms.common.internal.o;

public class g {
    public static final a<b> a = new a("LocationServices.API", f, e);
    public static final b b = new br();
    public static final c c = new bu();
    public static final k d = new cj();
    private static final com.google.android.gms.common.api.a.g<ca> e = new com.google.android.gms.common.api.a.g();
    private static final a.b<ca, b> f = new a.b<ca, b>() {
        public ca a(Context context, Looper looper, o oVar, b bVar, GoogleApiClient.b bVar2, c cVar) {
            return new ca(context, looper, bVar2, cVar, "locationServices", oVar);
        }
    };

    public static ca a(GoogleApiClient googleApiClient) {
        boolean z = true;
        com.google.android.gms.common.internal.c.b(googleApiClient != null, "GoogleApiClient parameter is required.");
        ca caVar = (ca) googleApiClient.a(e);
        if (caVar == null) {
            z = false;
        }
        com.google.android.gms.common.internal.c.a(z, (Object) "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
        return caVar;
    }
}
