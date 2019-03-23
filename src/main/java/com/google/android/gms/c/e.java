package com.google.android.gms.c;

import android.content.Context;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.k;
import com.google.android.gms.d.b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

public class e implements t {
    private final Map<d<?>, m<?>> a = new HashMap();
    private final Map<com.google.android.gms.common.api.a<?>, Integer> b;
    private final p c;
    private final l d;
    private final Lock e;
    private final Looper f;
    private final k g;
    private final Condition h;
    private final o i;
    private boolean j;
    private Map<vc<?>, com.google.android.gms.common.a> k;
    private com.google.android.gms.common.a l;

    private class a implements com.google.android.gms.d.a, b<Void> {
        private a() {
        }

        @Nullable
        private com.google.android.gms.common.a a() {
            com.google.android.gms.common.a aVar = null;
            int i = 0;
            for (com.google.android.gms.common.api.a aVar2 : e.this.b.keySet()) {
                com.google.android.gms.common.a aVar3 = (com.google.android.gms.common.a) e.this.k.get(((m) e.this.a.get(aVar2.c())).a());
                if (!aVar3.b()) {
                    int intValue = ((Integer) e.this.b.get(aVar2)).intValue();
                    if (intValue != 2 && (intValue != 1 || aVar3.a() || e.this.g.a(aVar3.c()))) {
                        int a = aVar2.a().a();
                        if (aVar != null && i <= a) {
                            a = i;
                            aVar3 = aVar;
                        }
                        i = a;
                        aVar = aVar3;
                    }
                }
            }
            return aVar;
        }

        private void b() {
            if (e.this.i == null) {
                e.this.d.d = Collections.emptySet();
                return;
            }
            HashSet hashSet = new HashSet(e.this.i.c());
            Map e = e.this.i.e();
            for (com.google.android.gms.common.api.a aVar : e.keySet()) {
                com.google.android.gms.common.a aVar2 = (com.google.android.gms.common.a) e.this.k.get(((m) e.this.a.get(aVar.c())).a());
                if (aVar2 != null && aVar2.b()) {
                    hashSet.addAll(((com.google.android.gms.common.internal.o.a) e.get(aVar)).a);
                }
            }
            e.this.d.d = hashSet;
        }

        public void a(@NonNull Exception exception) {
            l lVar = (l) exception;
            e.this.e.lock();
            try {
                e.this.k = lVar.a();
                e.this.l = a();
                if (e.this.l == null) {
                    b();
                    e.this.d.a(null);
                } else {
                    e.this.j = false;
                    e.this.d.a(e.this.l);
                }
                e.this.h.signalAll();
            } finally {
                e.this.e.unlock();
            }
        }

        public void a(Void voidR) {
            e.this.e.lock();
            try {
                e.this.k = new ArrayMap(e.this.a.size());
                for (d dVar : e.this.a.keySet()) {
                    e.this.k.put(((m) e.this.a.get(dVar)).a(), com.google.android.gms.common.a.a);
                }
                b();
                e.this.d.a(null);
                e.this.h.signalAll();
            } finally {
                e.this.e.unlock();
            }
        }
    }

    public e(Context context, Lock lock, Looper looper, k kVar, Map<d<?>, f> map, o oVar, Map<com.google.android.gms.common.api.a<?>, Integer> map2, com.google.android.gms.common.api.a.b<? extends cs, ct> bVar, ArrayList<vi> arrayList, l lVar) {
        this.e = lock;
        this.f = looper;
        this.h = lock.newCondition();
        this.g = kVar;
        this.d = lVar;
        this.b = map2;
        this.i = oVar;
        HashMap hashMap = new HashMap();
        for (com.google.android.gms.common.api.a aVar : map2.keySet()) {
            hashMap.put(aVar.c(), aVar);
        }
        HashMap hashMap2 = new HashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            vi viVar = (vi) it.next();
            hashMap2.put(viVar.a, viVar);
        }
        for (Entry entry : map.entrySet()) {
            com.google.android.gms.common.api.a aVar2 = (com.google.android.gms.common.api.a) hashMap.get(entry.getKey());
            this.a.put((d) entry.getKey(), new d(context, aVar2, looper, (f) entry.getValue(), (vi) hashMap2.get(aVar2), oVar, bVar));
        }
        this.c = p.a();
    }

    public <A extends c, T extends com.google.android.gms.c.vf.a<? extends com.google.android.gms.common.api.f, A>> T a(@NonNull T t) {
        this.d.i.a((vh) t);
        return ((m) this.a.get(t.b())).a(t);
    }

    public void a() {
        this.e.lock();
        try {
            if (!this.j) {
                this.j = true;
                this.k = null;
                this.l = null;
                com.google.android.gms.d.a aVar = new a();
                Executor apVar = new ap(this.f);
                this.c.a(this.a.values()).a(apVar, (b) aVar).a(apVar, aVar);
                this.e.unlock();
            }
        } finally {
            this.e.unlock();
        }
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public void b() {
        this.e.lock();
        try {
            this.j = false;
            this.k = null;
            this.l = null;
            this.h.signalAll();
        } finally {
            this.e.unlock();
        }
    }

    public boolean c() {
        this.e.lock();
        try {
            boolean z = this.k != null && this.l == null;
            this.e.unlock();
            return z;
        } catch (Throwable th) {
            this.e.unlock();
        }
    }

    public void d() {
    }
}
