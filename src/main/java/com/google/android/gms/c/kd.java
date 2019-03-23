package com.google.android.gms.c;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.b.b.a;
import com.google.android.gms.ads.b.g;
import java.util.ArrayList;
import java.util.List;

@pa
public class kd extends g {
    private final kc a;
    private final List<a> b = new ArrayList();
    private final jx c;

    public kd(kc kcVar) {
        jx jxVar;
        this.a = kcVar;
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

    public CharSequence g() {
        try {
            return this.a.f();
        } catch (RemoteException e) {
            sz.b("Failed to get attribution.", e);
            return null;
        }
    }

    /* Access modifiers changed, original: protected */
    /* renamed from: h */
    public com.google.android.gms.a.a a() {
        try {
            return this.a.g();
        } catch (RemoteException e) {
            sz.b("Failed to retrieve native ad engine.", e);
            return null;
        }
    }
}
