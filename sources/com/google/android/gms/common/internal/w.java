package com.google.android.gms.common.internal;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.IBinder;
import android.os.Message;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

final class w extends v implements Callback {
    private final HashMap<a, b> a = new HashMap();
    private final Context b;
    private final Handler c;
    private final com.google.android.gms.common.a.a d;
    private final long e;

    private static final class a {
        private final String a;
        private final String b;
        private final ComponentName c = null;

        public a(String str, String str2) {
            this.a = c.a(str);
            this.b = c.a(str2);
        }

        public Intent a() {
            return this.a != null ? new Intent(this.a).setPackage(this.b) : new Intent().setComponent(this.c);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return b.a(this.a, aVar.a) && b.a(this.c, aVar.c);
        }

        public int hashCode() {
            return b.a(this.a, this.c);
        }

        public String toString() {
            return this.a == null ? this.c.flattenToString() : this.a;
        }
    }

    private final class b {
        private final a b = new a();
        private final Set<ServiceConnection> c = new HashSet();
        private int d = 2;
        private boolean e;
        private IBinder f;
        private final a g;
        private ComponentName h;

        public class a implements ServiceConnection {
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                synchronized (w.this.a) {
                    b.this.f = iBinder;
                    b.this.h = componentName;
                    for (ServiceConnection onServiceConnected : b.this.c) {
                        onServiceConnected.onServiceConnected(componentName, iBinder);
                    }
                    b.this.d = 1;
                }
            }

            public void onServiceDisconnected(ComponentName componentName) {
                synchronized (w.this.a) {
                    b.this.f = null;
                    b.this.h = componentName;
                    for (ServiceConnection onServiceDisconnected : b.this.c) {
                        onServiceDisconnected.onServiceDisconnected(componentName);
                    }
                    b.this.d = 2;
                }
            }
        }

        public b(a aVar) {
            this.g = aVar;
        }

        public void a(ServiceConnection serviceConnection, String str) {
            w.this.d.a(w.this.b, serviceConnection, str, this.g.a());
            this.c.add(serviceConnection);
        }

        @TargetApi(14)
        public void a(String str) {
            this.d = 3;
            this.e = w.this.d.a(w.this.b, str, this.g.a(), this.b, 129);
            if (!this.e) {
                this.d = 2;
                try {
                    w.this.d.a(w.this.b, this.b);
                } catch (IllegalArgumentException e) {
                }
            }
        }

        public boolean a() {
            return this.e;
        }

        public boolean a(ServiceConnection serviceConnection) {
            return this.c.contains(serviceConnection);
        }

        public int b() {
            return this.d;
        }

        public void b(ServiceConnection serviceConnection, String str) {
            w.this.d.b(w.this.b, serviceConnection);
            this.c.remove(serviceConnection);
        }

        public void b(String str) {
            w.this.d.a(w.this.b, this.b);
            this.e = false;
            this.d = 2;
        }

        public boolean c() {
            return this.c.isEmpty();
        }

        public IBinder d() {
            return this.f;
        }

        public ComponentName e() {
            return this.h;
        }
    }

    w(Context context) {
        this.b = context.getApplicationContext();
        this.c = new Handler(context.getMainLooper(), this);
        this.d = com.google.android.gms.common.a.a.a();
        this.e = 5000;
    }

    private boolean a(a aVar, ServiceConnection serviceConnection, String str) {
        boolean a;
        c.a((Object) serviceConnection, (Object) "ServiceConnection must not be null");
        synchronized (this.a) {
            b bVar = (b) this.a.get(aVar);
            if (bVar != null) {
                this.c.removeMessages(0, aVar);
                if (!bVar.a(serviceConnection)) {
                    bVar.a(serviceConnection, str);
                    switch (bVar.b()) {
                        case 1:
                            serviceConnection.onServiceConnected(bVar.e(), bVar.d());
                            break;
                        case 2:
                            bVar.a(str);
                            break;
                        default:
                            break;
                    }
                }
                String valueOf = String.valueOf(aVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 81).append("Trying to bind a GmsServiceConnection that was already connected before.  config=").append(valueOf).toString());
            }
            bVar = new b(aVar);
            bVar.a(serviceConnection, str);
            bVar.a(str);
            this.a.put(aVar, bVar);
            a = bVar.a();
        }
        return a;
    }

    private void b(a aVar, ServiceConnection serviceConnection, String str) {
        c.a((Object) serviceConnection, (Object) "ServiceConnection must not be null");
        synchronized (this.a) {
            b bVar = (b) this.a.get(aVar);
            String valueOf;
            if (bVar == null) {
                valueOf = String.valueOf(aVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 50).append("Nonexistent connection status for service config: ").append(valueOf).toString());
            } else if (bVar.a(serviceConnection)) {
                bVar.b(serviceConnection, str);
                if (bVar.c()) {
                    this.c.sendMessageDelayed(this.c.obtainMessage(0, aVar), this.e);
                }
            } else {
                valueOf = String.valueOf(aVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 76).append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=").append(valueOf).toString());
            }
        }
    }

    public boolean a(String str, String str2, ServiceConnection serviceConnection, String str3) {
        return a(new a(str, str2), serviceConnection, str3);
    }

    public void b(String str, String str2, ServiceConnection serviceConnection, String str3) {
        b(new a(str, str2), serviceConnection, str3);
    }

    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                a aVar = (a) message.obj;
                synchronized (this.a) {
                    b bVar = (b) this.a.get(aVar);
                    if (bVar != null && bVar.c()) {
                        if (bVar.a()) {
                            bVar.b("GmsClientSupervisor");
                        }
                        this.a.remove(aVar);
                    }
                }
                return true;
            default:
                return false;
        }
    }
}
