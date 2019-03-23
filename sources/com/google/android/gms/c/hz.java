package com.google.android.gms.c;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.a;
import com.google.android.gms.ads.a.c;
import com.google.android.gms.ads.a.e;
import com.google.android.gms.ads.f;
import com.google.android.gms.ads.purchase.b;
import com.google.android.gms.ads.purchase.d;

@pa
public class hz {
    private final mn a;
    private final Context b;
    private final gz c;
    private a d;
    private gq e;
    private hn f;
    private String g;
    private String h;
    private com.google.android.gms.ads.a.a i;
    private d j;
    private b k;
    private e l;
    private c m;
    private f n;
    private com.google.android.gms.ads.d.b o;
    private boolean p;

    public hz(Context context) {
        this(context, gz.a(), null);
    }

    public hz(Context context, gz gzVar, e eVar) {
        this.a = new mn();
        this.b = context;
        this.c = gzVar;
        this.l = eVar;
    }

    private void b(String str) {
        if (this.g == null) {
            c(str);
        }
        this.f = hf.b().b(this.b, this.p ? ha.a() : new ha(), this.g, this.a);
        if (this.d != null) {
            this.f.a(new gs(this.d));
        }
        if (this.e != null) {
            this.f.a(new gr(this.e));
        }
        if (this.i != null) {
            this.f.a(new hc(this.i));
        }
        if (this.k != null) {
            this.f.a(new oc(this.k));
        }
        if (this.j != null) {
            this.f.a(new og(this.j), this.h);
        }
        if (this.m != null) {
            this.f.a(new jg(this.m));
        }
        if (this.n != null) {
            this.f.a(this.n.a());
        }
        if (this.o != null) {
            this.f.a(new qw(this.o));
        }
    }

    private void c(String str) {
        if (this.f == null) {
            throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 63).append("The ad unit ID must be set on InterstitialAd before ").append(str).append(" is called.").toString());
        }
    }

    public void a() {
        try {
            c("show");
            this.f.G();
        } catch (RemoteException e) {
            sz.c("Failed to show interstitial.", e);
        }
    }

    public void a(a aVar) {
        try {
            this.d = aVar;
            if (this.f != null) {
                this.f.a(aVar != null ? new gs(aVar) : null);
            }
        } catch (RemoteException e) {
            sz.c("Failed to set the AdListener.", e);
        }
    }

    public void a(com.google.android.gms.ads.d.b bVar) {
        try {
            this.o = bVar;
            if (this.f != null) {
                this.f.a(bVar != null ? new qw(bVar) : null);
            }
        } catch (RemoteException e) {
            sz.c("Failed to set the AdListener.", e);
        }
    }

    public void a(gq gqVar) {
        try {
            this.e = gqVar;
            if (this.f != null) {
                this.f.a(gqVar != null ? new gr(gqVar) : null);
            }
        } catch (RemoteException e) {
            sz.c("Failed to set the AdClickListener.", e);
        }
    }

    public void a(hw hwVar) {
        try {
            if (this.f == null) {
                b("loadAd");
            }
            if (this.f.a(this.c.a(this.b, hwVar))) {
                this.a.a(hwVar.j());
            }
        } catch (RemoteException e) {
            sz.c("Failed to load ad.", e);
        }
    }

    public void a(String str) {
        if (this.g != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
        }
        this.g = str;
    }

    public void a(boolean z) {
        this.p = z;
    }
}
