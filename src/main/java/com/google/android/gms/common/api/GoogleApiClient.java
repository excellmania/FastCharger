package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.view.View;
import com.google.android.gms.c.al;
import com.google.android.gms.c.cr;
import com.google.android.gms.c.cs;
import com.google.android.gms.c.ct;
import com.google.android.gms.c.l;
import com.google.android.gms.c.u;
import com.google.android.gms.c.vd;
import com.google.android.gms.c.vi;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.internal.o;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantLock;

public abstract class GoogleApiClient {
    private static final Set<GoogleApiClient> a = Collections.newSetFromMap(new WeakHashMap());

    public interface b {
        void a(int i);

        void a(@Nullable Bundle bundle);
    }

    public interface c {
        void a(@NonNull com.google.android.gms.common.a aVar);
    }

    public static final class a {
        private Account a;
        private final Set<Scope> b = new HashSet();
        private final Set<Scope> c = new HashSet();
        private int d;
        private View e;
        private String f;
        private String g;
        private final Map<a<?>, com.google.android.gms.common.internal.o.a> h = new ArrayMap();
        private final Context i;
        private final Map<a<?>, com.google.android.gms.common.api.a.a> j = new ArrayMap();
        private u k;
        private int l = -1;
        private c m;
        private Looper n;
        private com.google.android.gms.common.c o = com.google.android.gms.common.c.a();
        private com.google.android.gms.common.api.a.b<? extends cs, ct> p = cr.c;
        private final ArrayList<b> q = new ArrayList();
        private final ArrayList<c> r = new ArrayList();
        private boolean s = false;

        public a(@NonNull Context context) {
            this.i = context;
            this.n = context.getMainLooper();
            this.f = context.getPackageName();
            this.g = context.getClass().getName();
        }

        private static <C extends f, O> C a(com.google.android.gms.common.api.a.b<C, O> bVar, Object obj, Context context, Looper looper, o oVar, b bVar2, c cVar) {
            return bVar.a(context, looper, oVar, obj, bVar2, cVar);
        }

        private void a(GoogleApiClient googleApiClient) {
            vd.b(this.k).a(this.l, googleApiClient, this.m);
        }

        private GoogleApiClient c() {
            String valueOf;
            String valueOf2;
            o a = a();
            a aVar = null;
            Map e = a.e();
            ArrayMap arrayMap = new ArrayMap();
            ArrayMap arrayMap2 = new ArrayMap();
            ArrayList arrayList = new ArrayList();
            a aVar2 = null;
            for (a aVar3 : this.j.keySet()) {
                a aVar32;
                Object obj = this.j.get(aVar32);
                int i = 0;
                if (e.get(aVar32) != null) {
                    i = ((com.google.android.gms.common.internal.o.a) e.get(aVar32)).b ? 1 : 2;
                }
                arrayMap.put(aVar32, Integer.valueOf(i));
                vi viVar = new vi(aVar32, i);
                arrayList.add(viVar);
                com.google.android.gms.common.api.a.b b = aVar32.b();
                a aVar4 = b.a() == 1 ? aVar32 : aVar2;
                f a2 = a(b, obj, this.i, this.n, a, viVar, viVar);
                arrayMap2.put(aVar32.c(), a2);
                if (!a2.f()) {
                    aVar32 = aVar;
                } else if (aVar != null) {
                    valueOf = String.valueOf(aVar32.d());
                    valueOf2 = String.valueOf(aVar.d());
                    throw new IllegalStateException(new StringBuilder((String.valueOf(valueOf).length() + 21) + String.valueOf(valueOf2).length()).append(valueOf).append(" cannot be used with ").append(valueOf2).toString());
                }
                aVar2 = aVar4;
                aVar = aVar32;
            }
            if (aVar != null) {
                if (aVar2 != null) {
                    valueOf = String.valueOf(aVar.d());
                    valueOf2 = String.valueOf(aVar2.d());
                    throw new IllegalStateException(new StringBuilder((String.valueOf(valueOf).length() + 21) + String.valueOf(valueOf2).length()).append(valueOf).append(" cannot be used with ").append(valueOf2).toString());
                }
                com.google.android.gms.common.internal.c.a(this.a == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", aVar.d());
                com.google.android.gms.common.internal.c.a(this.b.equals(this.c), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", aVar.d());
            }
            return new l(this.i, new ReentrantLock(), this.n, a, this.o, this.p, arrayMap, this.q, this.r, arrayMap2, this.l, l.a(arrayMap2.values(), true), arrayList, false);
        }

        public a a(@NonNull b bVar) {
            com.google.android.gms.common.internal.c.a((Object) bVar, (Object) "Listener must not be null");
            this.q.add(bVar);
            return this;
        }

        public a a(@NonNull c cVar) {
            com.google.android.gms.common.internal.c.a((Object) cVar, (Object) "Listener must not be null");
            this.r.add(cVar);
            return this;
        }

        public a a(@NonNull a<? extends com.google.android.gms.common.api.a.a.c> aVar) {
            com.google.android.gms.common.internal.c.a((Object) aVar, (Object) "Api must not be null");
            this.j.put(aVar, null);
            List a = aVar.a().a(null);
            this.c.addAll(a);
            this.b.addAll(a);
            return this;
        }

        public o a() {
            ct ctVar = ct.a;
            if (this.j.containsKey(cr.g)) {
                ctVar = (ct) this.j.get(cr.g);
            }
            return new o(this.a, this.b, this.h, this.d, this.e, this.f, this.g, ctVar);
        }

        public GoogleApiClient b() {
            com.google.android.gms.common.internal.c.b(!this.j.isEmpty(), "must call addApi() to add at least one API");
            GoogleApiClient c = c();
            synchronized (GoogleApiClient.a) {
                GoogleApiClient.a.add(c);
            }
            if (this.l >= 0) {
                a(c);
            }
            return c;
        }
    }

    public Looper a() {
        throw new UnsupportedOperationException();
    }

    public <A extends com.google.android.gms.common.api.a.c, T extends com.google.android.gms.c.vf.a<? extends f, A>> T a(@NonNull T t) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    public <C extends f> C a(@NonNull d<C> dVar) {
        throw new UnsupportedOperationException();
    }

    public void a(int i) {
        throw new UnsupportedOperationException();
    }

    public void a(al alVar) {
        throw new UnsupportedOperationException();
    }

    public abstract void a(@NonNull c cVar);

    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public void b(al alVar) {
        throw new UnsupportedOperationException();
    }

    public abstract void b(@NonNull c cVar);

    public abstract void connect();

    public abstract void disconnect();
}
