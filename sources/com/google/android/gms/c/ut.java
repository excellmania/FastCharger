package com.google.android.gms.c;

import android.content.Context;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.a.b;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.m;

public class ut extends m<b> implements uq {

    static final class a extends com.google.android.gms.c.vf.a<Status, uu> {
        private final ur d;

        a(ur urVar, GoogleApiClient googleApiClient) {
            super(up.c, googleApiClient);
            this.d = urVar;
        }

        /* Access modifiers changed, original: protected */
        /* renamed from: a */
        public Status b(Status status) {
            return status;
        }

        /* Access modifiers changed, original: protected */
        public void a(uu uuVar) {
            AnonymousClass1 anonymousClass1 = new com.google.android.gms.c.uw.a() {
                public void a(Status status) {
                    a.this.a((f) status);
                }

                public void b(Status status) {
                    throw new UnsupportedOperationException();
                }
            };
            try {
                ut.b(this.d);
                uuVar.a(anonymousClass1, this.d);
            } catch (RuntimeException e) {
                Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.MessageProducer ", e);
                c(new Status(10, "MessageProducer"));
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            return this.d.equals(((a) obj).d);
        }

        public String toString() {
            String valueOf = String.valueOf(this.d);
            return new StringBuilder(String.valueOf(valueOf).length() + 20).append("LogEventMethodImpl(").append(valueOf).append(")").toString();
        }
    }

    ut(@NonNull Context context) {
        super(context, up.c, null, new vb());
    }

    public static uq a(@NonNull Context context) {
        return new ut(context);
    }

    static void b(ur urVar) {
        if (urVar.j != null && urVar.i.k.length == 0) {
            urVar.i.k = urVar.j.a();
        }
        if (urVar.k != null && urVar.i.q.length == 0) {
            urVar.i.q = urVar.k.a();
        }
        urVar.c = eq.a(urVar.i);
    }

    public c<Status> a(ur urVar) {
        return b(new a(urVar, c()));
    }
}
