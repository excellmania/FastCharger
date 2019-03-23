package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import com.google.android.gms.c.ct;
import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class o {
    private final Account a;
    private final Set<Scope> b;
    private final Set<Scope> c;
    private final Map<com.google.android.gms.common.api.a<?>, a> d;
    private final int e;
    private final View f;
    private final String g;
    private final String h;
    private final ct i;
    private Integer j;

    public static final class a {
        public final Set<Scope> a;
        public final boolean b;
    }

    public o(Account account, Set<Scope> set, Map<com.google.android.gms.common.api.a<?>, a> map, int i, View view, String str, String str2, ct ctVar) {
        Map map2;
        this.a = account;
        this.b = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        if (map2 == null) {
            map2 = Collections.EMPTY_MAP;
        }
        this.d = map2;
        this.f = view;
        this.e = i;
        this.g = str;
        this.h = str2;
        this.i = ctVar;
        HashSet hashSet = new HashSet(this.b);
        for (a aVar : this.d.values()) {
            hashSet.addAll(aVar.a);
        }
        this.c = Collections.unmodifiableSet(hashSet);
    }

    public static o a(Context context) {
        return new com.google.android.gms.common.api.GoogleApiClient.a(context).a();
    }

    public Account a() {
        return this.a;
    }

    public void a(Integer num) {
        this.j = num;
    }

    public Account b() {
        return this.a != null ? this.a : new Account("<<default account>>", "com.google");
    }

    public Set<Scope> c() {
        return this.b;
    }

    public Set<Scope> d() {
        return this.c;
    }

    public Map<com.google.android.gms.common.api.a<?>, a> e() {
        return this.d;
    }

    public String f() {
        return this.g;
    }

    public String g() {
        return this.h;
    }

    public ct h() {
        return this.i;
    }

    public Integer i() {
        return this.j;
    }
}
