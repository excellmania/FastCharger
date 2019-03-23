package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.support.annotation.BinderThread;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.api.Scope;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class n<T extends IInterface> {
    public static final String[] d = new String[]{"service_esmobile", "service_googleme"};
    final Handler a;
    protected f b;
    protected AtomicInteger c;
    private int e;
    private long f;
    private long g;
    private int h;
    private long i;
    private final Context j;
    private final Looper k;
    private final v l;
    private final com.google.android.gms.common.k m;
    private final Object n;
    private final Object o;
    private ac p;
    private T q;
    private final ArrayList<e<?>> r;
    private h s;
    private int t;
    private final b u;
    private final c v;
    private final int w;
    private final String x;

    public interface b {
        void a(int i);

        void a(@Nullable Bundle bundle);
    }

    public interface c {
        void a(@NonNull com.google.android.gms.common.a aVar);
    }

    public interface f {
        void a(@NonNull com.google.android.gms.common.a aVar);
    }

    protected abstract class e<TListener> {
        private TListener a;
        private boolean b = false;

        public e(TListener tListener) {
            this.a = tListener;
        }

        public abstract void a(TListener tListener);

        public void b() {
            Object obj;
            synchronized (this) {
                obj = this.a;
                if (this.b) {
                    String valueOf = String.valueOf(this);
                    Log.w("GmsClient", new StringBuilder(String.valueOf(valueOf).length() + 47).append("Callback proxy ").append(valueOf).append(" being reused. This is not safe.").toString());
                }
            }
            if (obj != null) {
                try {
                    a(obj);
                } catch (RuntimeException e) {
                    throw e;
                }
            }
            synchronized (this) {
                this.b = true;
            }
            c();
        }

        public void c() {
            d();
            synchronized (n.this.r) {
                n.this.r.remove(this);
            }
        }

        public void d() {
            synchronized (this) {
                this.a = null;
            }
        }
    }

    private abstract class a extends e<Boolean> {
        public final int a;
        public final Bundle b;

        @BinderThread
        protected a(int i, Bundle bundle) {
            super(Boolean.valueOf(true));
            this.a = i;
            this.b = bundle;
        }

        public abstract void a(com.google.android.gms.common.a aVar);

        /* Access modifiers changed, original: protected */
        public void a(Boolean bool) {
            PendingIntent pendingIntent = null;
            if (bool == null) {
                n.this.a(1, null);
                return;
            }
            switch (this.a) {
                case 0:
                    if (!a()) {
                        n.this.a(1, null);
                        a(new com.google.android.gms.common.a(8, null));
                        return;
                    }
                    return;
                case 10:
                    n.this.a(1, null);
                    throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
                default:
                    n.this.a(1, null);
                    if (this.b != null) {
                        pendingIntent = (PendingIntent) this.b.getParcelable("pendingIntent");
                    }
                    a(new com.google.android.gms.common.a(this.a, pendingIntent));
                    return;
            }
        }

        public abstract boolean a();
    }

    final class d extends Handler {
        public d(Looper looper) {
            super(looper);
        }

        private void a(Message message) {
            ((e) message.obj).c();
        }

        private boolean b(Message message) {
            return message.what == 2 || message.what == 1 || message.what == 5;
        }

        public void handleMessage(Message message) {
            PendingIntent pendingIntent = null;
            if (n.this.c.get() != message.arg1) {
                if (b(message)) {
                    a(message);
                }
            } else if ((message.what == 1 || message.what == 5) && !n.this.c()) {
                a(message);
            } else if (message.what == 3) {
                if (message.obj instanceof PendingIntent) {
                    pendingIntent = (PendingIntent) message.obj;
                }
                com.google.android.gms.common.a aVar = new com.google.android.gms.common.a(message.arg2, pendingIntent);
                n.this.b.a(aVar);
                n.this.a(aVar);
            } else if (message.what == 4) {
                n.this.a(4, null);
                if (n.this.u != null) {
                    n.this.u.a(message.arg2);
                }
                n.this.a(message.arg2);
                n.this.a(4, 1, null);
            } else if (message.what == 2 && !n.this.b()) {
                a(message);
            } else if (b(message)) {
                ((e) message.obj).b();
            } else {
                Log.wtf("GmsClient", "Don't know how to handle message: " + message.what, new Exception());
            }
        }
    }

    public static final class g extends com.google.android.gms.common.internal.ab.a {
        private n a;
        private final int b;

        public g(@NonNull n nVar, int i) {
            this.a = nVar;
            this.b = i;
        }

        private void a() {
            this.a = null;
        }

        @BinderThread
        public void a(int i, @Nullable Bundle bundle) {
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        }

        @BinderThread
        public void a(int i, @NonNull IBinder iBinder, @Nullable Bundle bundle) {
            c.a(this.a, (Object) "onPostInitComplete can be called only once per call to getRemoteService");
            this.a.a(i, iBinder, bundle, this.b);
            a();
        }
    }

    public final class h implements ServiceConnection {
        private final int b;

        public h(int i) {
            this.b = i;
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder == null) {
                n.this.b(new com.google.android.gms.common.a(8, null, "ServiceBroker IBinder is null"));
                return;
            }
            synchronized (n.this.o) {
                n.this.p = com.google.android.gms.common.internal.ac.a.a(iBinder);
            }
            n.this.a(0, null, this.b);
        }

        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (n.this.o) {
                n.this.p = null;
            }
            n.this.a.sendMessage(n.this.a.obtainMessage(4, this.b, 1));
        }
    }

    protected class i implements f {
        public void a(@NonNull com.google.android.gms.common.a aVar) {
            if (aVar.b()) {
                n.this.a(null, n.this.w());
            } else if (n.this.v != null) {
                n.this.v.a(aVar);
            }
        }
    }

    protected final class j extends a {
        public final IBinder e;

        @BinderThread
        public j(int i, IBinder iBinder, Bundle bundle) {
            super(i, bundle);
            this.e = iBinder;
        }

        /* Access modifiers changed, original: protected */
        public void a(com.google.android.gms.common.a aVar) {
            if (n.this.v != null) {
                n.this.v.a(aVar);
            }
            n.this.a(aVar);
        }

        /* Access modifiers changed, original: protected */
        public boolean a() {
            try {
                String interfaceDescriptor = this.e.getInterfaceDescriptor();
                if (n.this.j().equals(interfaceDescriptor)) {
                    IInterface a = n.this.a(this.e);
                    if (a == null || !n.this.a(2, 3, a)) {
                        return false;
                    }
                    Bundle t = n.this.t();
                    if (n.this.u != null) {
                        n.this.u.a(t);
                    }
                    return true;
                }
                String valueOf = String.valueOf(n.this.j());
                Log.e("GmsClient", new StringBuilder((String.valueOf(valueOf).length() + 34) + String.valueOf(interfaceDescriptor).length()).append("service descriptor mismatch: ").append(valueOf).append(" vs. ").append(interfaceDescriptor).toString());
                return false;
            } catch (RemoteException e) {
                Log.w("GmsClient", "service probably died");
                return false;
            }
        }
    }

    protected final class k extends a {
        @BinderThread
        public k(int i, Bundle bundle) {
            super(i, bundle);
        }

        /* Access modifiers changed, original: protected */
        public void a(com.google.android.gms.common.a aVar) {
            n.this.b.a(aVar);
            n.this.a(aVar);
        }

        /* Access modifiers changed, original: protected */
        public boolean a() {
            n.this.b.a(com.google.android.gms.common.a.a);
            return true;
        }
    }

    protected n(Context context, Looper looper, int i, b bVar, c cVar, String str) {
        this(context, looper, v.a(context), com.google.android.gms.common.k.b(), i, (b) c.a((Object) bVar), (c) c.a((Object) cVar), str);
    }

    protected n(Context context, Looper looper, v vVar, com.google.android.gms.common.k kVar, int i, b bVar, c cVar, String str) {
        this.n = new Object();
        this.o = new Object();
        this.r = new ArrayList();
        this.t = 1;
        this.c = new AtomicInteger(0);
        this.j = (Context) c.a((Object) context, (Object) "Context must not be null");
        this.k = (Looper) c.a((Object) looper, (Object) "Looper must not be null");
        this.l = (v) c.a((Object) vVar, (Object) "Supervisor must not be null");
        this.m = (com.google.android.gms.common.k) c.a((Object) kVar, (Object) "API availability must not be null");
        this.a = new d(looper);
        this.w = i;
        this.u = bVar;
        this.v = cVar;
        this.x = str;
    }

    private void a(int i, T t) {
        boolean z = true;
        if ((i == 3) != (t != null)) {
            z = false;
        }
        c.b(z);
        synchronized (this.n) {
            this.t = i;
            this.q = t;
            switch (i) {
                case 1:
                    x();
                    break;
                case 2:
                    k();
                    break;
                case 3:
                    a((IInterface) t);
                    break;
            }
        }
    }

    private boolean a(int i, int i2, T t) {
        boolean z;
        synchronized (this.n) {
            if (this.t != i) {
                z = false;
            } else {
                a(i2, (IInterface) t);
                z = true;
            }
        }
        return z;
    }

    private void b(com.google.android.gms.common.a aVar) {
        this.a.sendMessage(this.a.obtainMessage(3, this.c.get(), aVar.c(), aVar.d()));
    }

    private void k() {
        String valueOf;
        String valueOf2;
        if (this.s != null) {
            valueOf = String.valueOf(i());
            valueOf2 = String.valueOf(c_());
            Log.e("GmsClient", new StringBuilder((String.valueOf(valueOf).length() + 70) + String.valueOf(valueOf2).length()).append("Calling connect() while still connected, missing disconnect() for ").append(valueOf).append(" on ").append(valueOf2).toString());
            this.l.b(i(), c_(), this.s, m());
            this.c.incrementAndGet();
        }
        this.s = new h(this.c.get());
        if (!this.l.a(i(), c_(), this.s, m())) {
            valueOf = String.valueOf(i());
            valueOf2 = String.valueOf(c_());
            Log.e("GmsClient", new StringBuilder((String.valueOf(valueOf).length() + 34) + String.valueOf(valueOf2).length()).append("unable to connect to service: ").append(valueOf).append(" on ").append(valueOf2).toString());
            a(16, null, this.c.get());
        }
    }

    private void x() {
        if (this.s != null) {
            this.l.b(i(), c_(), this.s, m());
            this.s = null;
        }
    }

    @Nullable
    public abstract T a(IBinder iBinder);

    public void a() {
        this.c.incrementAndGet();
        synchronized (this.r) {
            int size = this.r.size();
            for (int i = 0; i < size; i++) {
                ((e) this.r.get(i)).d();
            }
            this.r.clear();
        }
        synchronized (this.o) {
            this.p = null;
        }
        a(1, null);
    }

    /* Access modifiers changed, original: protected */
    @CallSuper
    public void a(int i) {
        this.e = i;
        this.f = System.currentTimeMillis();
    }

    /* Access modifiers changed, original: protected */
    public void a(int i, @Nullable Bundle bundle, int i2) {
        this.a.sendMessage(this.a.obtainMessage(5, i2, -1, new k(i, bundle)));
    }

    /* Access modifiers changed, original: protected */
    @BinderThread
    public void a(int i, IBinder iBinder, Bundle bundle, int i2) {
        this.a.sendMessage(this.a.obtainMessage(1, i2, -1, new j(i, iBinder, bundle)));
    }

    /* Access modifiers changed, original: protected */
    @CallSuper
    public void a(@NonNull T t) {
        this.g = System.currentTimeMillis();
    }

    /* Access modifiers changed, original: protected */
    @CallSuper
    public void a(com.google.android.gms.common.a aVar) {
        this.h = aVar.c();
        this.i = System.currentTimeMillis();
    }

    public void a(@NonNull f fVar) {
        this.b = (f) c.a((Object) fVar, (Object) "Connection progress callbacks cannot be null.");
        a(2, null);
    }

    @WorkerThread
    public void a(y yVar, Set<Scope> set) {
        r a = new r(this.w).a(this.j.getPackageName()).a(r());
        if (set != null) {
            a.a((Collection) set);
        }
        if (d()) {
            a.a(q()).a(yVar);
        } else if (v()) {
            a.a(p());
        }
        try {
            synchronized (this.o) {
                if (this.p != null) {
                    this.p.a(new g(this, this.c.get()), a);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e) {
            Log.w("GmsClient", "service died");
            b(1);
        } catch (RemoteException e2) {
            Log.w("GmsClient", "Remote exception occurred", e2);
        } catch (SecurityException e3) {
            throw e3;
        } catch (RuntimeException e4) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e4);
            b(new com.google.android.gms.common.a(8, null, "IGmsServiceBroker.getService failed."));
        }
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        IInterface iInterface;
        PrintWriter append;
        long j;
        String valueOf;
        synchronized (this.n) {
            i = this.t;
            iInterface = this.q;
        }
        printWriter.append(str).append("mConnectState=");
        switch (i) {
            case 1:
                printWriter.print("DISCONNECTED");
                break;
            case 2:
                printWriter.print("CONNECTING");
                break;
            case 3:
                printWriter.print("CONNECTED");
                break;
            case 4:
                printWriter.print("DISCONNECTING");
                break;
            default:
                printWriter.print("UNKNOWN");
                break;
        }
        printWriter.append(" mService=");
        if (iInterface == null) {
            printWriter.println("null");
        } else {
            printWriter.append(j()).append("@").println(Integer.toHexString(System.identityHashCode(iInterface.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.g > 0) {
            append = printWriter.append(str).append("lastConnectedTime=");
            j = this.g;
            valueOf = String.valueOf(simpleDateFormat.format(new Date(this.g)));
            append.println(new StringBuilder(String.valueOf(valueOf).length() + 21).append(j).append(" ").append(valueOf).toString());
        }
        if (this.f > 0) {
            printWriter.append(str).append("lastSuspendedCause=");
            switch (this.e) {
                case 1:
                    printWriter.append("CAUSE_SERVICE_DISCONNECTED");
                    break;
                case 2:
                    printWriter.append("CAUSE_NETWORK_LOST");
                    break;
                default:
                    printWriter.append(String.valueOf(this.e));
                    break;
            }
            append = printWriter.append(" lastSuspendedTime=");
            j = this.f;
            valueOf = String.valueOf(simpleDateFormat.format(new Date(this.f)));
            append.println(new StringBuilder(String.valueOf(valueOf).length() + 21).append(j).append(" ").append(valueOf).toString());
        }
        if (this.i > 0) {
            printWriter.append(str).append("lastFailedStatus=").append(com.google.android.gms.common.api.b.a(this.h));
            append = printWriter.append(" lastFailedTime=");
            j = this.i;
            String valueOf2 = String.valueOf(simpleDateFormat.format(new Date(this.i)));
            append.println(new StringBuilder(String.valueOf(valueOf2).length() + 21).append(j).append(" ").append(valueOf2).toString());
        }
    }

    public void b(int i) {
        this.a.sendMessage(this.a.obtainMessage(4, this.c.get(), i));
    }

    public boolean b() {
        boolean z;
        synchronized (this.n) {
            z = this.t == 3;
        }
        return z;
    }

    public boolean c() {
        boolean z;
        synchronized (this.n) {
            z = this.t == 2;
        }
        return z;
    }

    /* Access modifiers changed, original: protected */
    public String c_() {
        return "com.google.android.gms";
    }

    public boolean d() {
        return false;
    }

    public boolean e() {
        return true;
    }

    public boolean f() {
        return false;
    }

    public Intent g() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    @Nullable
    public IBinder h() {
        IBinder iBinder;
        synchronized (this.o) {
            if (this.p == null) {
                iBinder = null;
            } else {
                iBinder = this.p.asBinder();
            }
        }
        return iBinder;
    }

    @NonNull
    public abstract String i();

    @NonNull
    public abstract String j();

    /* Access modifiers changed, original: protected|final */
    @Nullable
    public final String m() {
        return this.x == null ? this.j.getClass().getName() : this.x;
    }

    public void n() {
        int a = this.m.a(this.j);
        if (a != 0) {
            a(1, null);
            this.b = new i();
            this.a.sendMessage(this.a.obtainMessage(3, this.c.get(), a));
            return;
        }
        a(new i());
    }

    public final Context o() {
        return this.j;
    }

    public Account p() {
        return null;
    }

    public final Account q() {
        return p() != null ? p() : new Account("<<default account>>", "com.google");
    }

    /* Access modifiers changed, original: protected */
    public Bundle r() {
        return new Bundle();
    }

    /* Access modifiers changed, original: protected|final */
    public final void s() {
        if (!b()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public Bundle t() {
        return null;
    }

    public final T u() {
        IInterface iInterface;
        synchronized (this.n) {
            if (this.t == 4) {
                throw new DeadObjectException();
            }
            s();
            c.a(this.q != null, (Object) "Client is connected but service is null");
            iInterface = this.q;
        }
        return iInterface;
    }

    public boolean v() {
        return false;
    }

    /* Access modifiers changed, original: protected */
    public Set<Scope> w() {
        return Collections.EMPTY_SET;
    }
}
