package com.google.android.gms.c;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.k;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;

final class c implements t {
    private final Context a;
    private final l b;
    private final Looper c;
    private final n d;
    private final n e;
    private final Map<d<?>, n> f;
    private final Set<ag> g = Collections.newSetFromMap(new WeakHashMap());
    private final f h;
    private Bundle i;
    private com.google.android.gms.common.a j = null;
    private com.google.android.gms.common.a k = null;
    private boolean l = false;
    private final Lock m;
    private int n = 0;

    /* renamed from: com.google.android.gms.c.c$1 */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ c a;

        public void run() {
            this.a.m.lock();
            try {
                this.a.g();
            } finally {
                this.a.m.unlock();
            }
        }
    }

    private class a implements com.google.android.gms.c.t.a {
        private a() {
        }

        /* synthetic */ a(c cVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void a(int i, boolean z) {
            c.this.m.lock();
            try {
                if (c.this.l || c.this.k == null || !c.this.k.b()) {
                    c.this.l = false;
                    c.this.a(i, z);
                    return;
                }
                c.this.l = true;
                c.this.e.a(i);
                c.this.m.unlock();
            } finally {
                c.this.m.unlock();
            }
        }

        public void a(@Nullable Bundle bundle) {
            c.this.m.lock();
            try {
                c.this.a(bundle);
                c.this.j = com.google.android.gms.common.a.a;
                c.this.g();
            } finally {
                c.this.m.unlock();
            }
        }

        public void a(@NonNull com.google.android.gms.common.a aVar) {
            c.this.m.lock();
            try {
                c.this.j = aVar;
                c.this.g();
            } finally {
                c.this.m.unlock();
            }
        }
    }

    private class b implements com.google.android.gms.c.t.a {
        private b() {
        }

        /* synthetic */ b(c cVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void a(int i, boolean z) {
            c.this.m.lock();
            try {
                if (c.this.l) {
                    c.this.l = false;
                    c.this.a(i, z);
                    return;
                }
                c.this.l = true;
                c.this.d.a(i);
                c.this.m.unlock();
            } finally {
                c.this.m.unlock();
            }
        }

        public void a(@Nullable Bundle bundle) {
            c.this.m.lock();
            try {
                c.this.k = com.google.android.gms.common.a.a;
                c.this.g();
            } finally {
                c.this.m.unlock();
            }
        }

        public void a(@NonNull com.google.android.gms.common.a aVar) {
            c.this.m.lock();
            try {
                c.this.k = aVar;
                c.this.g();
            } finally {
                c.this.m.unlock();
            }
        }
    }

    private c(Context context, l lVar, Lock lock, Looper looper, k kVar, Map<d<?>, f> map, Map<d<?>, f> map2, o oVar, com.google.android.gms.common.api.a.b<? extends cs, ct> bVar, f fVar, ArrayList<vi> arrayList, ArrayList<vi> arrayList2, Map<com.google.android.gms.common.api.a<?>, Integer> map3, Map<com.google.android.gms.common.api.a<?>, Integer> map4) {
        this.a = context;
        this.b = lVar;
        this.m = lock;
        this.c = looper;
        this.h = fVar;
        this.d = new n(context, this.b, lock, looper, kVar, map2, null, map4, null, arrayList2, new a(this, null));
        this.e = new n(context, this.b, lock, looper, kVar, map, oVar, map3, bVar, arrayList, new b(this, null));
        ArrayMap arrayMap = new ArrayMap();
        for (d put : map2.keySet()) {
            arrayMap.put(put, this.d);
        }
        for (d put2 : map.keySet()) {
            arrayMap.put(put2, this.e);
        }
        this.f = Collections.unmodifiableMap(arrayMap);
    }

    public static c a(Context context, l lVar, Lock lock, Looper looper, k kVar, Map<d<?>, f> map, o oVar, Map<com.google.android.gms.common.api.a<?>, Integer> map2, com.google.android.gms.common.api.a.b<? extends cs, ct> bVar, ArrayList<vi> arrayList) {
        f fVar = null;
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        for (Entry entry : map.entrySet()) {
            f fVar2 = (f) entry.getValue();
            if (fVar2.f()) {
                fVar = fVar2;
            }
            if (fVar2.d()) {
                arrayMap.put((d) entry.getKey(), fVar2);
            } else {
                arrayMap2.put((d) entry.getKey(), fVar2);
            }
        }
        com.google.android.gms.common.internal.c.a(!arrayMap.isEmpty(), (Object) "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        for (com.google.android.gms.common.api.a aVar : map2.keySet()) {
            d c = aVar.c();
            if (arrayMap.containsKey(c)) {
                arrayMap3.put(aVar, (Integer) map2.get(aVar));
            } else if (arrayMap2.containsKey(c)) {
                arrayMap4.put(aVar, (Integer) map2.get(aVar));
            } else {
                throw new IllegalStateException("Each API in the apiTypeMap must have a corresponding client in the clients map.");
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            vi viVar = (vi) it.next();
            if (arrayMap3.containsKey(viVar.a)) {
                arrayList2.add(viVar);
            } else if (arrayMap4.containsKey(viVar.a)) {
                arrayList3.add(viVar);
            } else {
                throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the apiTypeMap");
            }
        }
        return new c(context, lVar, lock, looper, kVar, arrayMap, arrayMap2, oVar, bVar, fVar, arrayList2, arrayList3, arrayMap3, arrayMap4);
    }

    private void a(int i, boolean z) {
        this.b.a(i, z);
        this.k = null;
        this.j = null;
    }

    private void a(Bundle bundle) {
        if (this.i == null) {
            this.i = bundle;
        } else if (bundle != null) {
            this.i.putAll(bundle);
        }
    }

    private void a(com.google.android.gms.common.a aVar) {
        switch (this.n) {
            case 1:
                break;
            case 2:
                this.b.a(aVar);
                break;
            default:
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                break;
        }
        i();
        this.n = 0;
    }

    private boolean b(com.google.android.gms.c.vf.a<? extends com.google.android.gms.common.api.f, ? extends com.google.android.gms.common.api.a.c> aVar) {
        d b = aVar.b();
        com.google.android.gms.common.internal.c.b(this.f.containsKey(b), "GoogleApiClient is not configured to use the API required for this call.");
        return ((n) this.f.get(b)).equals(this.e);
    }

    private static boolean b(com.google.android.gms.common.a aVar) {
        return aVar != null && aVar.b();
    }

    private void f() {
        this.k = null;
        this.j = null;
        this.d.a();
        this.e.a();
    }

    private void g() {
        if (b(this.j)) {
            if (b(this.k) || j()) {
                h();
            } else if (this.k == null) {
            } else {
                if (this.n == 1) {
                    i();
                    return;
                }
                a(this.k);
                this.d.b();
            }
        } else if (this.j != null && b(this.k)) {
            this.e.b();
            a(this.j);
        } else if (this.j != null && this.k != null) {
            com.google.android.gms.common.a aVar = this.j;
            if (this.e.f < this.d.f) {
                aVar = this.k;
            }
            a(aVar);
        }
    }

    private void h() {
        switch (this.n) {
            case 1:
                break;
            case 2:
                this.b.a(this.i);
                break;
            default:
                Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                break;
        }
        i();
        this.n = 0;
    }

    private void i() {
        for (ag a : this.g) {
            a.a();
        }
        this.g.clear();
    }

    private boolean j() {
        return this.k != null && this.k.c() == 4;
    }

    @Nullable
    private PendingIntent k() {
        return this.h == null ? null : PendingIntent.getActivity(this.a, this.b.i(), this.h.g(), 134217728);
    }

    public <A extends com.google.android.gms.common.api.a.c, T extends com.google.android.gms.c.vf.a<? extends com.google.android.gms.common.api.f, A>> T a(@NonNull T t) {
        if (!b((com.google.android.gms.c.vf.a) t)) {
            return this.d.a((com.google.android.gms.c.vf.a) t);
        }
        if (!j()) {
            return this.e.a((com.google.android.gms.c.vf.a) t);
        }
        t.c(new Status(4, null, k()));
        return t;
    }

    public void a() {
        this.n = 2;
        this.l = false;
        f();
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append(str).append("authClient").println(":");
        this.e.a(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append(str).append("anonClient").println(":");
        this.d.a(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    public void b() {
        this.k = null;
        this.j = null;
        this.n = 0;
        this.d.b();
        this.e.b();
        i();
    }

    public boolean c() {
        boolean z = true;
        this.m.lock();
        try {
            if (!(this.d.c() && (e() || j() || this.n == 1))) {
                z = false;
            }
            this.m.unlock();
            return z;
        } catch (Throwable th) {
            this.m.unlock();
        }
    }

    public void d() {
        this.d.d();
        this.e.d();
    }

    public boolean e() {
        return this.e.c();
    }
}
