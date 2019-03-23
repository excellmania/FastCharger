package com.facebook.ads.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.text.TextUtils;
import com.facebook.ads.internal.util.h;
import java.lang.reflect.Method;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;

public class f {
    public static final String a = f.class.getSimpleName();
    private final String b;
    private final boolean c;
    private final c d;

    private static final class a implements IInterface {
        private IBinder a;

        a(IBinder iBinder) {
            this.a = iBinder;
        }

        public String a() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                String readString = obtain2.readString();
                return readString;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public IBinder asBinder() {
            return this.a;
        }

        public boolean b() {
            boolean z = true;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(1);
                this.a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    z = false;
                }
                obtain2.recycle();
                obtain.recycle();
                return z;
            } catch (Throwable th) {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    private static final class b implements ServiceConnection {
        private AtomicBoolean a;
        private final BlockingQueue<IBinder> b;

        private b() {
            this.a = new AtomicBoolean(false);
            this.b = new LinkedBlockingDeque();
        }

        public IBinder a() {
            if (!this.a.compareAndSet(true, true)) {
                return (IBinder) this.b.take();
            }
            throw new IllegalStateException("Binder already consumed");
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.b.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public enum c {
        SHARED_PREFS,
        FB4A,
        DIRECT,
        REFLECTION,
        SERVICE
    }

    private f(String str, boolean z, c cVar) {
        this.b = str;
        this.c = z;
        this.d = cVar;
    }

    private static f a(Context context) {
        try {
            com.google.android.gms.ads.c.a.a b = com.google.android.gms.ads.c.a.b(context);
            if (b != null) {
                return new f(b.a(), b.b(), c.DIRECT);
            }
        } catch (Throwable th) {
        }
        return null;
    }

    public static f a(Context context, com.facebook.ads.internal.util.h.a aVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot get advertising info on main thread.");
        } else if (aVar != null && !TextUtils.isEmpty(aVar.b)) {
            return new f(aVar.b, aVar.c, c.FB4A);
        } else {
            f a = a(context);
            if (a == null || TextUtils.isEmpty(a.a())) {
                a = b(context);
            }
            return (a == null || TextUtils.isEmpty(a.a())) ? c(context) : a;
        }
    }

    private static f b(Context context) {
        Method a = h.a("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", Context.class);
        if (a == null) {
            return null;
        }
        Object a2 = h.a(null, a, context);
        if (a2 == null || ((Integer) a2).intValue() != 0) {
            return null;
        }
        a = h.a("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", Context.class);
        if (a == null) {
            return null;
        }
        Object a3 = h.a(null, a, context);
        if (a3 == null) {
            return null;
        }
        a = h.a(a3.getClass(), "getId", new Class[0]);
        Method a4 = h.a(a3.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
        return (a == null || a4 == null) ? null : new f((String) h.a(a3, a, new Object[0]), ((Boolean) h.a(a3, a4, new Object[0])).booleanValue(), c.REFLECTION);
    }

    private static f c(Context context) {
        b bVar = new b();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (context.bindService(intent, bVar, 1)) {
            f fVar;
            try {
                a aVar = new a(bVar.a());
                fVar = new f(aVar.a(), aVar.b(), c.SERVICE);
                return fVar;
            } catch (Exception e) {
                fVar = e;
            } finally {
                context.unbindService(bVar);
            }
        }
        return null;
    }

    public String a() {
        return this.b;
    }

    public boolean b() {
        return this.c;
    }

    public c c() {
        return this.d;
    }
}
