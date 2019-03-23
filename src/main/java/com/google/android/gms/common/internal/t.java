package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IInterface;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.GoogleApiClient.b;
import com.google.android.gms.common.api.GoogleApiClient.c;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.internal.u.a;
import java.util.Set;

public abstract class t<T extends IInterface> extends n<T> implements f, a {
    private final o e;
    private final Set<Scope> f;
    private final Account g;

    protected t(Context context, Looper looper, int i, o oVar, b bVar, c cVar) {
        this(context, looper, v.a(context), com.google.android.gms.common.c.a(), i, oVar, (b) c.a((Object) bVar), (c) c.a((Object) cVar));
    }

    protected t(Context context, Looper looper, v vVar, com.google.android.gms.common.c cVar, int i, o oVar, b bVar, c cVar2) {
        super(context, looper, vVar, cVar, i, a(bVar), a(cVar2), oVar.g());
        this.e = oVar;
        this.g = oVar.a();
        this.f = b(oVar.d());
    }

    @Nullable
    private static n.b a(final b bVar) {
        return bVar == null ? null : new n.b() {
            public void a(int i) {
                bVar.a(i);
            }

            public void a(@Nullable Bundle bundle) {
                bVar.a(bundle);
            }
        };
    }

    @Nullable
    private static n.c a(final c cVar) {
        return cVar == null ? null : new n.c() {
            public void a(@NonNull com.google.android.gms.common.a aVar) {
                cVar.a(aVar);
            }
        };
    }

    private Set<Scope> b(@NonNull Set<Scope> set) {
        Set<Scope> a = a((Set) set);
        for (Scope contains : a) {
            if (!set.contains(contains)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return a;
    }

    /* Access modifiers changed, original: protected */
    @NonNull
    public Set<Scope> a(@NonNull Set<Scope> set) {
        return set;
    }

    public final Account p() {
        return this.g;
    }

    /* Access modifiers changed, original: protected|final */
    public final Set<Scope> w() {
        return this.f;
    }
}
