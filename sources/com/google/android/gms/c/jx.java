package com.google.android.gms.c;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.a.b;
import com.google.android.gms.ads.b.b.a;

@pa
public class jx extends a {
    private final jv a;
    private final Drawable b;
    private final Uri c;
    private final double d;

    public jx(jv jvVar) {
        Drawable drawable;
        double d;
        Uri uri = null;
        this.a = jvVar;
        try {
            com.google.android.gms.a.a a = this.a.a();
            if (a != null) {
                drawable = (Drawable) b.a(a);
                this.b = drawable;
                uri = this.a.b();
                this.c = uri;
                d = 1.0d;
                d = this.a.c();
                this.d = d;
            }
        } catch (RemoteException e) {
            sz.b("Failed to get drawable.", e);
        }
        Object drawable2 = uri;
        this.b = drawable2;
        try {
            uri = this.a.b();
        } catch (RemoteException e2) {
            sz.b("Failed to get uri.", e2);
        }
        this.c = uri;
        d = 1.0d;
        try {
            d = this.a.c();
        } catch (RemoteException e3) {
            sz.b("Failed to get scale.", e3);
        }
        this.d = d;
    }

    public Drawable a() {
        return this.b;
    }

    public Uri b() {
        return this.c;
    }

    public double c() {
        return this.d;
    }
}
