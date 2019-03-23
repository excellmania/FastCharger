package com.google.android.gms.c;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.c;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.a.g;
import com.google.android.gms.common.internal.o;

public final class cr {
    public static final g<dd> a = new g();
    public static final g<dd> b = new g();
    public static final b<dd, ct> c = new b<dd, ct>() {
        public dd a(Context context, Looper looper, o oVar, ct ctVar, GoogleApiClient.b bVar, c cVar) {
            return new dd(context, looper, true, oVar, ctVar == null ? ct.a : ctVar, bVar, cVar);
        }
    };
    static final b<dd, a> d = new b<dd, a>() {
        public dd a(Context context, Looper looper, o oVar, a aVar, GoogleApiClient.b bVar, c cVar) {
            return new dd(context, looper, false, oVar, aVar.a(), bVar, cVar);
        }
    };
    public static final Scope e = new Scope("profile");
    public static final Scope f = new Scope("email");
    public static final com.google.android.gms.common.api.a<ct> g = new com.google.android.gms.common.api.a("SignIn.API", c, a);
    public static final com.google.android.gms.common.api.a<a> h = new com.google.android.gms.common.api.a("SignIn.INTERNAL_API", d, b);

    public static class a implements com.google.android.gms.common.api.a.a.a {
        private final Bundle a;

        public Bundle a() {
            return this.a;
        }
    }
}
