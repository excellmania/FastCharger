package com.google.android.gms.c;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.c.bx.a;
import com.google.android.gms.common.api.GoogleApiClient.b;
import com.google.android.gms.common.api.GoogleApiClient.c;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.t;

public class bo extends t<bx> {
    protected final ci<bx> e = new ci<bx>() {
        public void a() {
            bo.this.s();
        }

        /* renamed from: b */
        public bx c() {
            return (bx) bo.this.u();
        }
    };
    private final String f;

    public bo(Context context, Looper looper, b bVar, c cVar, String str, o oVar) {
        super(context, looper, 23, oVar, bVar, cVar);
        this.f = str;
    }

    /* Access modifiers changed, original: protected */
    /* renamed from: b */
    public bx a(IBinder iBinder) {
        return a.a(iBinder);
    }

    /* Access modifiers changed, original: protected */
    public String i() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    /* Access modifiers changed, original: protected */
    public String j() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    /* Access modifiers changed, original: protected */
    public Bundle r() {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.f);
        return bundle;
    }
}
