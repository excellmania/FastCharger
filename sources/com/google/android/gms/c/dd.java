package com.google.android.gms.c;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.c.da.a;
import com.google.android.gms.common.api.GoogleApiClient.b;
import com.google.android.gms.common.api.GoogleApiClient.c;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.n.f;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.t;
import com.google.android.gms.common.internal.y;

public class dd extends t<da> implements cs {
    private final boolean e;
    private final o f;
    private final Bundle g;
    private Integer h;

    public dd(Context context, Looper looper, boolean z, o oVar, Bundle bundle, b bVar, c cVar) {
        super(context, looper, 44, oVar, bVar, cVar);
        this.e = z;
        this.f = oVar;
        this.g = bundle;
        this.h = oVar.i();
    }

    public dd(Context context, Looper looper, boolean z, o oVar, ct ctVar, b bVar, c cVar) {
        this(context, looper, z, oVar, a(oVar), bVar, cVar);
    }

    public static Bundle a(o oVar) {
        ct h = oVar.h();
        Integer i = oVar.i();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", oVar.a());
        if (i != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", i.intValue());
        }
        if (h != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", h.a());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", h.b());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", h.c());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", h.d());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", h.e());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", h.f());
            if (h.g() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", h.g().longValue());
            }
            if (h.h() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", h.h().longValue());
            }
        }
        return bundle;
    }

    private d x() {
        Account b = this.f.b();
        GoogleSignInAccount googleSignInAccount = null;
        if ("<<default account>>".equals(b.name)) {
            googleSignInAccount = com.google.android.gms.auth.api.signin.a.b.a(o()).a();
        }
        return new d(b, this.h.intValue(), googleSignInAccount);
    }

    public void a(cz czVar) {
        com.google.android.gms.common.internal.c.a((Object) czVar, (Object) "Expecting a valid ISignInCallbacks");
        try {
            ((da) u()).a(new de(x()), czVar);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                czVar.a(new dh(8));
            } catch (RemoteException e2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    public void a(y yVar, boolean z) {
        try {
            ((da) u()).a(yVar, this.h.intValue(), z);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
        }
    }

    /* Access modifiers changed, original: protected */
    /* renamed from: b */
    public da a(IBinder iBinder) {
        return a.a(iBinder);
    }

    public boolean d() {
        return this.e;
    }

    /* Access modifiers changed, original: protected */
    public String i() {
        return "com.google.android.gms.signin.service.START";
    }

    /* Access modifiers changed, original: protected */
    public String j() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    public void k() {
        try {
            ((da) u()).a(this.h.intValue());
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
        }
    }

    public void l() {
        a((f) new i());
    }

    /* Access modifiers changed, original: protected */
    public Bundle r() {
        if (!o().getPackageName().equals(this.f.f())) {
            this.g.putString("com.google.android.gms.signin.internal.realClientPackageName", this.f.f());
        }
        return this.g;
    }
}
