package com.google.android.gms.c;

import android.os.DeadObjectException;
import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.k;
import com.google.android.gms.d.e;

public abstract class va {
    public final int a;

    private static abstract class a extends va {
        protected final e<Void> b;

        public a(int i, e<Void> eVar) {
            super(i);
            this.b = eVar;
        }

        public void a(@NonNull f fVar, boolean z) {
        }

        public final void a(com.google.android.gms.c.p.a<?> aVar) {
            try {
                b(aVar);
            } catch (DeadObjectException e) {
                a(va.b(e));
                throw e;
            } catch (RemoteException e2) {
                a(va.b(e2));
            }
        }

        public void a(@NonNull Status status) {
            this.b.b(new k(status));
        }

        public abstract void b(com.google.android.gms.c.p.a<?> aVar);
    }

    public static class b<A extends com.google.android.gms.c.vf.a<? extends f, com.google.android.gms.common.api.a.c>> extends va {
        protected final A b;

        public b(int i, A a) {
            super(i);
            this.b = a;
        }

        public void a(@NonNull f fVar, boolean z) {
            fVar.a(this.b, z);
        }

        public void a(com.google.android.gms.c.p.a<?> aVar) {
            this.b.b(aVar.b());
        }

        public void a(@NonNull Status status) {
            this.b.c(status);
        }
    }

    public static final class c extends a {
        public final com.google.android.gms.c.y.b<?> c;

        public c(com.google.android.gms.c.y.b<?> bVar, e<Void> eVar) {
            super(4, eVar);
            this.c = bVar;
        }

        public /* bridge */ /* synthetic */ void a(@NonNull f fVar, boolean z) {
            super.a(fVar, z);
        }

        public /* bridge */ /* synthetic */ void a(@NonNull Status status) {
            super.a(status);
        }

        public void b(com.google.android.gms.c.p.a<?> aVar) {
            ad adVar = (ad) aVar.c().remove(this.c);
            if (adVar != null) {
                adVar.a.a();
                return;
            }
            Log.wtf("UnregisterListenerTask", "Received call to unregister a listener without a matching registration call.", new Exception());
            this.b.b(new k(Status.c));
        }
    }

    public va(int i) {
        this.a = i;
    }

    private static Status b(RemoteException remoteException) {
        StringBuilder stringBuilder = new StringBuilder();
        if (com.google.android.gms.common.util.k.d() && (remoteException instanceof TransactionTooLargeException)) {
            stringBuilder.append("TransactionTooLargeException: ");
        }
        stringBuilder.append(remoteException.getLocalizedMessage());
        return new Status(8, stringBuilder.toString());
    }

    public abstract void a(@NonNull f fVar, boolean z);

    public abstract void a(com.google.android.gms.c.p.a<?> aVar);

    public abstract void a(@NonNull Status status);
}
