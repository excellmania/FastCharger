package com.google.android.gms.c;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.f;

public class vf {

    public static abstract class a<R extends f, A extends c> extends vh<R> {
        private final d<A> d;
        private final com.google.android.gms.common.api.a<?> e;

        protected a(com.google.android.gms.common.api.a<?> aVar, GoogleApiClient googleApiClient) {
            super((GoogleApiClient) com.google.android.gms.common.internal.c.a((Object) googleApiClient, (Object) "GoogleApiClient must not be null"));
            this.d = aVar.c();
            this.e = aVar;
        }

        private void a(RemoteException remoteException) {
            c(new Status(8, remoteException.getLocalizedMessage(), null));
        }

        public abstract void a(A a);

        public final d<A> b() {
            return this.d;
        }

        public final void b(A a) {
            try {
                a((c) a);
            } catch (DeadObjectException e) {
                a(e);
                throw e;
            } catch (RemoteException e2) {
                a(e2);
            }
        }

        public final com.google.android.gms.common.api.a<?> c() {
            return this.e;
        }

        public final void c(Status status) {
            com.google.android.gms.common.internal.c.b(!status.d(), "Failed result must not be success");
            a(b(status));
        }
    }
}
