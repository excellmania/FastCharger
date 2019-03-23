package com.google.android.gms.c;

import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.c.y.c;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.e;
import com.google.android.gms.location.f;
import com.google.android.gms.location.w;
import com.google.android.gms.location.x;
import java.util.HashMap;
import java.util.Map;

public class bz {
    private final ci<bx> a;
    private final Context b;
    private ContentProviderClient c = null;
    private boolean d = false;
    private final Map<com.google.android.gms.c.y.b<f>, b> e = new HashMap();
    private final Map<com.google.android.gms.c.y.b<e>, a> f = new HashMap();

    private static class a extends com.google.android.gms.location.w.a {
        private final y<e> a;

        public void a(final LocationAvailability locationAvailability) {
            this.a.a(new c<e>(this) {
                public void a() {
                }

                public void a(e eVar) {
                    eVar.a(locationAvailability);
                }
            });
        }

        public void a(final LocationResult locationResult) {
            this.a.a(new c<e>(this) {
                public void a() {
                }

                public void a(e eVar) {
                    eVar.a(locationResult);
                }
            });
        }
    }

    private static class b extends com.google.android.gms.location.x.a {
        private final y<f> a;

        public synchronized void a(final Location location) {
            this.a.a(new c<f>(this) {
                public void a() {
                }

                public void a(f fVar) {
                    fVar.a(location);
                }
            });
        }
    }

    public bz(Context context, ci<bx> ciVar) {
        this.b = context;
        this.a = ciVar;
    }

    public Location a() {
        this.a.a();
        try {
            return ((bx) this.a.c()).b(this.b.getPackageName());
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public void a(boolean z) {
        this.a.a();
        ((bx) this.a.c()).a(z);
        this.d = z;
    }

    public void b() {
        try {
            synchronized (this.e) {
                for (x xVar : this.e.values()) {
                    if (xVar != null) {
                        ((bx) this.a.c()).a(cd.a(xVar, null));
                    }
                }
                this.e.clear();
            }
            synchronized (this.f) {
                for (w wVar : this.f.values()) {
                    if (wVar != null) {
                        ((bx) this.a.c()).a(cd.a(wVar, null));
                    }
                }
                this.f.clear();
            }
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public void c() {
        if (this.d) {
            try {
                a(false);
            } catch (RemoteException e) {
                throw new IllegalStateException(e);
            }
        }
    }
}
