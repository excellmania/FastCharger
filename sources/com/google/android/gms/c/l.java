package com.google.android.gms.c;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.c;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.u;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.locks.Lock;

public final class l extends GoogleApiClient implements com.google.android.gms.c.t.a {
    final Queue<com.google.android.gms.c.vf.a<?, ?>> a = new LinkedList();
    r b;
    final Map<d<?>, f> c;
    Set<Scope> d = new HashSet();
    final o e;
    final Map<com.google.android.gms.common.api.a<?>, Integer> f;
    final com.google.android.gms.common.api.a.b<? extends cs, ct> g;
    Set<al> h = null;
    final am i;
    private final Lock j;
    private boolean k;
    private final u l;
    private t m = null;
    private final int n;
    private final Context o;
    private final Looper p;
    private volatile boolean q;
    private long r = 120000;
    private long s = 5000;
    private final a t;
    private final c u;
    private final aa v = new aa();
    private final ArrayList<vi> w;
    private Integer x = null;
    private final com.google.android.gms.common.internal.u.a y = new com.google.android.gms.common.internal.u.a() {
        public boolean b() {
            return l.this.c();
        }

        public Bundle t() {
            return null;
        }
    };

    final class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    l.this.l();
                    return;
                case 2:
                    l.this.k();
                    return;
                default:
                    Log.w("GoogleApiClientImpl", "Unknown message id: " + message.what);
                    return;
            }
        }
    }

    static class b extends com.google.android.gms.c.r.a {
        private WeakReference<l> a;

        b(l lVar) {
            this.a = new WeakReference(lVar);
        }

        public void a() {
            l lVar = (l) this.a.get();
            if (lVar != null) {
                lVar.k();
            }
        }
    }

    public l(Context context, Lock lock, Looper looper, o oVar, c cVar, com.google.android.gms.common.api.a.b<? extends cs, ct> bVar, Map<com.google.android.gms.common.api.a<?>, Integer> map, List<com.google.android.gms.common.api.GoogleApiClient.b> list, List<GoogleApiClient.c> list2, Map<d<?>, f> map2, int i, int i2, ArrayList<vi> arrayList, boolean z) {
        this.o = context;
        this.j = lock;
        this.k = z;
        this.l = new u(looper, this.y);
        this.p = looper;
        this.t = new a(looper);
        this.u = cVar;
        this.n = i;
        if (this.n >= 0) {
            this.x = Integer.valueOf(i2);
        }
        this.f = map;
        this.c = map2;
        this.w = arrayList;
        this.i = new am(this.c);
        for (com.google.android.gms.common.api.GoogleApiClient.b a : list) {
            this.l.a(a);
        }
        for (GoogleApiClient.c a2 : list2) {
            this.l.a(a2);
        }
        this.e = oVar;
        this.g = bVar;
    }

    public static int a(Iterable<f> iterable, boolean z) {
        int i = 0;
        int i2 = 0;
        for (f fVar : iterable) {
            if (fVar.d()) {
                i2 = 1;
            }
            i = fVar.f() ? 1 : i;
        }
        return i2 != 0 ? (i == 0 || !z) ? 1 : 2 : 3;
    }

    static String b(int i) {
        switch (i) {
            case 1:
                return "SIGN_IN_MODE_REQUIRED";
            case 2:
                return "SIGN_IN_MODE_OPTIONAL";
            case 3:
                return "SIGN_IN_MODE_NONE";
            default:
                return "UNKNOWN";
        }
    }

    private void c(int i) {
        if (this.x == null) {
            this.x = Integer.valueOf(i);
        } else if (this.x.intValue() != i) {
            String valueOf = String.valueOf(b(i));
            String valueOf2 = String.valueOf(b(this.x.intValue()));
            throw new IllegalStateException(new StringBuilder((String.valueOf(valueOf).length() + 51) + String.valueOf(valueOf2).length()).append("Cannot use sign-in mode: ").append(valueOf).append(". Mode was already set to ").append(valueOf2).toString());
        }
        if (this.m == null) {
            Object obj = null;
            Object obj2 = null;
            for (f fVar : this.c.values()) {
                if (fVar.d()) {
                    obj2 = 1;
                }
                obj = fVar.f() ? 1 : obj;
            }
            switch (this.x.intValue()) {
                case 1:
                    if (obj2 == null) {
                        throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
                    } else if (obj != null) {
                        throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
                    }
                    break;
                case 2:
                    if (obj2 != null) {
                        this.m = c.a(this.o, this, this.j, this.p, this.u, this.c, this.e, this.f, this.g, this.w);
                        return;
                    }
                    break;
            }
            if (this.k && obj == null) {
                this.m = new e(this.o, this.j, this.p, this.u, this.c, this.e, this.f, this.g, this.w, this);
            } else {
                this.m = new n(this.o, this, this.j, this.p, this.u, this.c, this.e, this.f, this.g, this.w, this);
            }
        }
    }

    private void j() {
        this.l.b();
        this.m.a();
    }

    private void k() {
        this.j.lock();
        try {
            if (d()) {
                j();
            }
            this.j.unlock();
        } catch (Throwable th) {
            this.j.unlock();
        }
    }

    private void l() {
        this.j.lock();
        try {
            if (f()) {
                j();
            }
            this.j.unlock();
        } catch (Throwable th) {
            this.j.unlock();
        }
    }

    public Looper a() {
        return this.p;
    }

    public <A extends com.google.android.gms.common.api.a.c, T extends com.google.android.gms.c.vf.a<? extends com.google.android.gms.common.api.f, A>> T a(@NonNull T t) {
        com.google.android.gms.common.internal.c.b(t.b() != null, "This task can not be executed (it's probably a Batch or malformed)");
        boolean containsKey = this.c.containsKey(t.b());
        Object d = t.c() != null ? t.c().d() : "the API";
        com.google.android.gms.common.internal.c.b(containsKey, new StringBuilder(String.valueOf(d).length() + 65).append("GoogleApiClient is not configured to use ").append(d).append(" required for this call.").toString());
        this.j.lock();
        try {
            if (this.m == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            }
            if (d()) {
                this.a.add(t);
                while (!this.a.isEmpty()) {
                    vh vhVar = (com.google.android.gms.c.vf.a) this.a.remove();
                    this.i.a(vhVar);
                    vhVar.c(Status.c);
                }
            } else {
                t = this.m.a(t);
                this.j.unlock();
            }
            return t;
        } finally {
            this.j.unlock();
        }
    }

    @NonNull
    public <C extends f> C a(@NonNull d<C> dVar) {
        Object obj = (f) this.c.get(dVar);
        com.google.android.gms.common.internal.c.a(obj, (Object) "Appropriate Api was not requested.");
        return obj;
    }

    public void a(int i) {
        boolean z = true;
        this.j.lock();
        if (!(i == 3 || i == 1 || i == 2)) {
            z = false;
        }
        try {
            com.google.android.gms.common.internal.c.b(z, "Illegal sign-in mode: " + i);
            c(i);
            j();
        } finally {
            this.j.unlock();
        }
    }

    public void a(int i, boolean z) {
        if (i == 1 && !z) {
            e();
        }
        this.i.b();
        this.l.a(i);
        this.l.a();
        if (i == 2) {
            j();
        }
    }

    public void a(Bundle bundle) {
        while (!this.a.isEmpty()) {
            a((com.google.android.gms.c.vf.a) this.a.remove());
        }
        this.l.a(bundle);
    }

    public void a(al alVar) {
        this.j.lock();
        try {
            if (this.h == null) {
                this.h = new HashSet();
            }
            this.h.add(alVar);
        } finally {
            this.j.unlock();
        }
    }

    public void a(com.google.android.gms.common.a aVar) {
        if (!this.u.b(this.o, aVar.c())) {
            f();
        }
        if (!d()) {
            this.l.a(aVar);
            this.l.a();
        }
    }

    public void a(@NonNull GoogleApiClient.c cVar) {
        this.l.a(cVar);
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append(str).append("mContext=").println(this.o);
        printWriter.append(str).append("mResuming=").print(this.q);
        printWriter.append(" mWorkQueue.size()=").print(this.a.size());
        this.i.a(printWriter);
        if (this.m != null) {
            this.m.a(str, fileDescriptor, printWriter, strArr);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public <C extends f> C b(d<?> dVar) {
        Object obj = (f) this.c.get(dVar);
        com.google.android.gms.common.internal.c.a(obj, (Object) "Appropriate Api was not requested.");
        return obj;
    }

    public void b(al alVar) {
        this.j.lock();
        try {
            if (this.h == null) {
                Log.wtf("GoogleApiClientImpl", "Attempted to remove pending transform when no transforms are registered.", new Exception());
            } else if (!this.h.remove(alVar)) {
                Log.wtf("GoogleApiClientImpl", "Failed to remove pending transform - this may lead to memory leaks!", new Exception());
            } else if (!g()) {
                this.m.d();
            }
            this.j.unlock();
        } catch (Throwable th) {
            this.j.unlock();
        }
    }

    public void b(@NonNull GoogleApiClient.c cVar) {
        this.l.b(cVar);
    }

    public boolean c() {
        return this.m != null && this.m.c();
    }

    public void connect() {
        boolean z = false;
        this.j.lock();
        try {
            if (this.n >= 0) {
                if (this.x != null) {
                    z = true;
                }
                com.google.android.gms.common.internal.c.a(z, (Object) "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.x == null) {
                this.x = Integer.valueOf(a(this.c.values(), false));
            } else if (this.x.intValue() == 2) {
                throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            a(this.x.intValue());
        } finally {
            this.j.unlock();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean d() {
        return this.q;
    }

    public void disconnect() {
        this.j.lock();
        try {
            this.i.a();
            if (this.m != null) {
                this.m.b();
            }
            this.v.a();
            for (com.google.android.gms.c.vf.a aVar : this.a) {
                aVar.a(null);
                aVar.e();
            }
            this.a.clear();
            if (this.m != null) {
                f();
                this.l.a();
                this.j.unlock();
            }
        } finally {
            this.j.unlock();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void e() {
        if (!d()) {
            this.q = true;
            if (this.b == null) {
                this.b = this.u.a(this.o.getApplicationContext(), new b(this));
            }
            this.t.sendMessageDelayed(this.t.obtainMessage(1), this.r);
            this.t.sendMessageDelayed(this.t.obtainMessage(2), this.s);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean f() {
        if (!d()) {
            return false;
        }
        this.q = false;
        this.t.removeMessages(2);
        this.t.removeMessages(1);
        if (this.b != null) {
            this.b.a();
            this.b = null;
        }
        return true;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean g() {
        boolean z = false;
        this.j.lock();
        try {
            if (this.h != null) {
                if (!this.h.isEmpty()) {
                    z = true;
                }
                this.j.unlock();
            }
            return z;
        } finally {
            this.j.unlock();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public String h() {
        StringWriter stringWriter = new StringWriter();
        a("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    public int i() {
        return System.identityHashCode(this);
    }
}
