package com.google.android.gms.ads;

import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.google.android.gms.c.hu;
import com.google.android.gms.c.ih;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.sz;
import com.google.android.gms.common.internal.c;

@pa
public final class h {
    private final Object a = new Object();
    @Nullable
    private hu b;
    @Nullable
    private a c;

    public static abstract class a {
        public void a() {
        }
    }

    public hu a() {
        hu huVar;
        synchronized (this.a) {
            huVar = this.b;
        }
        return huVar;
    }

    public void a(a aVar) {
        c.a((Object) aVar, (Object) "VideoLifecycleCallbacks may not be null.");
        synchronized (this.a) {
            this.c = aVar;
            if (this.b == null) {
                return;
            }
            try {
                this.b.a(new ih(aVar));
            } catch (RemoteException e) {
                sz.b("Unable to call setVideoLifecycleCallbacks on video controller.", e);
            }
            return;
        }
    }

    public void a(hu huVar) {
        synchronized (this.a) {
            this.b = huVar;
            if (this.c != null) {
                a(this.c);
            }
        }
    }
}
