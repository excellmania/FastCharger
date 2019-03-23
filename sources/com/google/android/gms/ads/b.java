package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.c.gs;
import com.google.android.gms.c.gz;
import com.google.android.gms.c.hf;
import com.google.android.gms.c.hk;
import com.google.android.gms.c.hl;
import com.google.android.gms.c.hw;
import com.google.android.gms.c.js;
import com.google.android.gms.c.kk;
import com.google.android.gms.c.kl;
import com.google.android.gms.c.mn;
import com.google.android.gms.c.sz;
import com.google.android.gms.common.internal.c;

public class b {
    private final gz a;
    private final Context b;
    private final hk c;

    public static class a {
        private final Context a;
        private final hl b;

        a(Context context, hl hlVar) {
            this.a = context;
            this.b = hlVar;
        }

        public a(Context context, String str) {
            this((Context) c.a((Object) context, (Object) "context cannot be null"), hf.b().a(context, str, new mn()));
        }

        public a a(a aVar) {
            try {
                this.b.a(new gs(aVar));
            } catch (RemoteException e) {
                sz.c("Failed to set AdListener.", e);
            }
            return this;
        }

        public a a(com.google.android.gms.ads.b.c cVar) {
            try {
                this.b.a(new js(cVar));
            } catch (RemoteException e) {
                sz.c("Failed to specify native ad options", e);
            }
            return this;
        }

        public a a(com.google.android.gms.ads.b.e.a aVar) {
            try {
                this.b.a(new kk(aVar));
            } catch (RemoteException e) {
                sz.c("Failed to add app install ad listener", e);
            }
            return this;
        }

        public a a(com.google.android.gms.ads.b.g.a aVar) {
            try {
                this.b.a(new kl(aVar));
            } catch (RemoteException e) {
                sz.c("Failed to add content ad listener", e);
            }
            return this;
        }

        public b a() {
            try {
                return new b(this.a, this.b.a());
            } catch (RemoteException e) {
                sz.b("Failed to build AdLoader.", e);
                return null;
            }
        }
    }

    b(Context context, hk hkVar) {
        this(context, hkVar, gz.a());
    }

    b(Context context, hk hkVar, gz gzVar) {
        this.b = context;
        this.c = hkVar;
        this.a = gzVar;
    }

    private void a(hw hwVar) {
        try {
            this.c.a(this.a.a(this.b, hwVar));
        } catch (RemoteException e) {
            sz.b("Failed to load ad.", e);
        }
    }

    @RequiresPermission("android.permission.INTERNET")
    public void a(c cVar) {
        a(cVar.a());
    }
}
