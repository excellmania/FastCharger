package com.google.android.gms.c;

import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.api.n;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public class am {
    public static final Status a = new Status(8, "The connection to Google Play services was lost");
    private static final vh<?>[] c = new vh[0];
    final Set<vh<?>> b = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
    private final b d = new b() {
        public void a(vh<?> vhVar) {
            am.this.b.remove(vhVar);
            if (vhVar.a() != null) {
                null;
            }
        }
    };
    private final Map<d<?>, f> e;

    interface b {
        void a(vh<?> vhVar);
    }

    private static class a implements DeathRecipient, b {
        private final WeakReference<vh<?>> a;
        private final WeakReference<n> b;
        private final WeakReference<IBinder> c;

        private a(vh<?> vhVar, n nVar, IBinder iBinder) {
            this.b = new WeakReference(nVar);
            this.a = new WeakReference(vhVar);
            this.c = new WeakReference(iBinder);
        }

        /* synthetic */ a(vh vhVar, n nVar, IBinder iBinder, AnonymousClass1 anonymousClass1) {
            this(vhVar, nVar, iBinder);
        }

        private void a() {
            vh vhVar = (vh) this.a.get();
            n nVar = (n) this.b.get();
            if (!(nVar == null || vhVar == null)) {
                nVar.a(vhVar.a().intValue());
            }
            IBinder iBinder = (IBinder) this.c.get();
            if (iBinder != null) {
                iBinder.unlinkToDeath(this, 0);
            }
        }

        public void a(vh<?> vhVar) {
            a();
        }

        public void binderDied() {
            a();
        }
    }

    public am(Map<d<?>, f> map) {
        this.e = map;
    }

    private static void a(vh<?> vhVar, n nVar, IBinder iBinder) {
        if (vhVar.d()) {
            vhVar.a(new a(vhVar, nVar, iBinder, null));
        } else if (iBinder == null || !iBinder.isBinderAlive()) {
            vhVar.a(null);
            vhVar.e();
            nVar.a(vhVar.a().intValue());
        } else {
            b aVar = new a(vhVar, nVar, iBinder, null);
            vhVar.a(aVar);
            try {
                iBinder.linkToDeath(aVar, 0);
            } catch (RemoteException e) {
                vhVar.e();
                nVar.a(vhVar.a().intValue());
            }
        }
    }

    public void a() {
        for (vh vhVar : (vh[]) this.b.toArray(c)) {
            vhVar.a(null);
            if (vhVar.a() != null) {
                vhVar.h();
                a(vhVar, null, ((f) this.e.get(((com.google.android.gms.c.vf.a) vhVar).b())).h());
                this.b.remove(vhVar);
            } else if (vhVar.f()) {
                this.b.remove(vhVar);
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(vh<? extends com.google.android.gms.common.api.f> vhVar) {
        this.b.add(vhVar);
        vhVar.a(this.d);
    }

    public void a(PrintWriter printWriter) {
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.b.size());
    }

    public void b() {
        for (vh d : (vh[]) this.b.toArray(c)) {
            d.d(a);
        }
    }
}
