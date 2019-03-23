package com.google.android.gms.c;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.BinderThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.GoogleApiClient.b;
import com.google.android.gms.common.api.GoogleApiClient.c;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.y;
import java.util.HashSet;
import java.util.Set;

public class ah extends cw implements b, c {
    private static com.google.android.gms.common.api.a.b<? extends cs, ct> a = cr.c;
    private final Context b;
    private final Handler c;
    private final com.google.android.gms.common.api.a.b<? extends cs, ct> d;
    private final boolean e;
    private Set<Scope> f;
    private o g;
    private cs h;
    private a i;

    @WorkerThread
    public interface a {
        void a(y yVar, Set<Scope> set);

        void b(com.google.android.gms.common.a aVar);
    }

    @WorkerThread
    public ah(Context context, Handler handler) {
        this.b = context;
        this.c = handler;
        GoogleSignInOptions b = com.google.android.gms.auth.api.signin.a.b.a(this.b).b();
        this.f = b == null ? new HashSet() : new HashSet(b.a());
        this.g = new o(null, this.f, null, 0, null, null, null, ct.a);
        this.d = a;
        this.e = true;
    }

    @WorkerThread
    public ah(Context context, Handler handler, o oVar, com.google.android.gms.common.api.a.b<? extends cs, ct> bVar) {
        this.b = context;
        this.c = handler;
        this.g = oVar;
        this.f = oVar.c();
        this.d = bVar;
        this.e = false;
    }

    @WorkerThread
    private void b(dh dhVar) {
        com.google.android.gms.common.a a = dhVar.a();
        if (a.b()) {
            f b = dhVar.b();
            com.google.android.gms.common.a b2 = b.b();
            if (b2.b()) {
                this.i.a(b.a(), this.f);
            } else {
                String valueOf = String.valueOf(b2);
                Log.wtf("SignInCoordinator", new StringBuilder(String.valueOf(valueOf).length() + 48).append("Sign-in succeeded with resolve account failure: ").append(valueOf).toString(), new Exception());
                this.i.b(b2);
                this.h.a();
                return;
            }
        }
        this.i.b(a);
        this.h.a();
    }

    public void a() {
        this.h.a();
    }

    @WorkerThread
    public void a(int i) {
        this.h.a();
    }

    @WorkerThread
    public void a(@Nullable Bundle bundle) {
        this.h.a(this);
    }

    @WorkerThread
    public void a(a aVar) {
        if (this.h != null) {
            this.h.a();
        }
        if (this.e) {
            GoogleSignInOptions b = com.google.android.gms.auth.api.signin.a.b.a(this.b).b();
            this.f = b == null ? new HashSet() : new HashSet(b.a());
            this.g = new o(null, this.f, null, 0, null, null, null, ct.a);
        }
        this.h = (cs) this.d.a(this.b, this.c.getLooper(), this.g, this.g.h(), this, this);
        this.i = aVar;
        this.h.l();
    }

    @BinderThread
    public void a(final dh dhVar) {
        this.c.post(new Runnable() {
            public void run() {
                ah.this.b(dhVar);
            }
        });
    }

    @WorkerThread
    public void a(@NonNull com.google.android.gms.common.a aVar) {
        this.i.b(aVar);
    }
}
