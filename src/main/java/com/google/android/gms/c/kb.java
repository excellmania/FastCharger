package com.google.android.gms.c;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.b.b.a;
import com.google.android.gms.ads.b.e;
import com.google.android.gms.ads.h;
import java.util.ArrayList;
import java.util.List;

@pa
public class kb extends e {
    private final ka a;
    private final List<a> b = new ArrayList();
    private final jx c;
    private h d = new h();

    public kb(ka kaVar) {
        jx jxVar;
        this.a = kaVar;
        try {
            List<Object> b = this.a.b();
            if (b != null) {
                for (Object a : b) {
                    jv a2 = a(a);
                    if (a2 != null) {
                        this.b.add(new jx(a2));
                    }
                }
            }
        } catch (RemoteException e) {
            sz.b("Failed to get image.", e);
        }
        try {
            jv d = this.a.d();
            if (d != null) {
                jxVar = new jx(d);
                this.c = jxVar;
            }
        } catch (RemoteException e2) {
            sz.b("Failed to get icon.", e2);
        }
        jxVar = null;
        this.c = jxVar;
    }

    /* Access modifiers changed, original: 0000 */
    public jv a(Object obj) {
        return obj instanceof IBinder ? jv.a.a((IBinder) obj) : null;
    }

    public CharSequence b() {
        try {
            return this.a.a();
        } catch (RemoteException e) {
            sz.b("Failed to get headline.", e);
            return null;
        }
    }

    public List<a> c() {
        return this.b;
    }

    public CharSequence d() {
        try {
            return this.a.c();
        } catch (RemoteException e) {
            sz.b("Failed to get body.", e);
            return null;
        }
    }

    public a e() {
        return this.c;
    }

    public CharSequence f() {
        try {
            return this.a.e();
        } catch (RemoteException e) {
            sz.b("Failed to get call to action.", e);
            return null;
        }
    }

    public Double g() {
        try {
            double f = this.a.f();
            return f == -1.0d ? null : Double.valueOf(f);
        } catch (RemoteException e) {
            sz.b("Failed to get star rating.", e);
            return null;
        }
    }

    public CharSequence h() {
        try {
            return this.a.g();
        } catch (RemoteException e) {
            sz.b("Failed to get store", e);
            return null;
        }
    }

    public CharSequence i() {
        try {
            return this.a.h();
        } catch (RemoteException e) {
            sz.b("Failed to get price.", e);
            return null;
        }
    }

    public h j() {
        try {
            if (this.a.i() != null) {
                this.d.a(this.a.i());
            }
        } catch (RemoteException e) {
            sz.b("Exception occurred while getting video controller", e);
        }
        return this.d;
    }

    /* Access modifiers changed, original: protected */
    /* renamed from: k */
    public com.google.android.gms.a.a a() {
        try {
            return this.a.j();
        } catch (RemoteException e) {
            sz.b("Failed to retrieve native ad engine.", e);
            return null;
        }
    }
}
