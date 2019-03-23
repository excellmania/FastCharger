package com.google.android.gms.c;

import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.c.hu.a;
import com.google.android.gms.common.util.d;
import java.util.HashMap;
import java.util.Map;

@pa
public class tw extends a {
    private final tr a;
    private final Object b = new Object();
    private final float c;
    private int d;
    private hv e;
    private boolean f;
    private boolean g;
    private float h;
    private boolean i = true;
    private float j;

    public tw(tr trVar, float f) {
        this.a = trVar;
        this.c = f;
    }

    private void a(final int i, final int i2) {
        v.e().a(new Runnable() {
            public void run() {
                boolean z = false;
                synchronized (tw.this.b) {
                    boolean z2 = i != i2;
                    boolean z3 = !tw.this.f && i2 == 1;
                    boolean z4 = z2 && i2 == 1;
                    boolean z5 = z2 && i2 == 2;
                    z2 = z2 && i2 == 3;
                    tw twVar = tw.this;
                    if (tw.this.f || z3) {
                        z = true;
                    }
                    twVar.f = z;
                    if (tw.this.e == null) {
                        return;
                    }
                    if (z3) {
                        try {
                            tw.this.e.a();
                        } catch (RemoteException e) {
                            sz.c("Unable to call onVideoStart()", e);
                        }
                    }
                    if (z4) {
                        try {
                            tw.this.e.b();
                        } catch (RemoteException e2) {
                            sz.c("Unable to call onVideoPlay()", e2);
                        }
                    }
                    if (z5) {
                        try {
                            tw.this.e.c();
                        } catch (RemoteException e22) {
                            sz.c("Unable to call onVideoPause()", e22);
                        }
                    }
                    if (z2) {
                        try {
                            tw.this.e.d();
                        } catch (RemoteException e222) {
                            sz.c("Unable to call onVideoEnd()", e222);
                        }
                    }
                }
            }
        });
    }

    private void a(String str) {
        a(str, null);
    }

    private void a(String str, @Nullable Map<String, String> map) {
        final Map hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("action", str);
        v.e().a(new Runnable() {
            public void run() {
                tw.this.a.a("pubVideoCmd", hashMap);
            }
        });
    }

    public void a() {
        a("play");
    }

    public void a(float f, int i, boolean z, float f2) {
        int i2;
        synchronized (this.b) {
            this.h = f;
            this.g = z;
            i2 = this.d;
            this.d = i;
            this.j = f2;
        }
        a(i2, i);
    }

    public void a(hv hvVar) {
        synchronized (this.b) {
            this.e = hvVar;
        }
    }

    public void a(boolean z) {
        a(z ? "mute" : "unmute");
    }

    public void b() {
        a("pause");
    }

    public void b(boolean z) {
        synchronized (this.b) {
            this.i = z;
        }
        a("initialState", d.b("muteStart", z ? "1" : "0"));
    }

    public boolean c() {
        boolean z;
        synchronized (this.b) {
            z = this.g;
        }
        return z;
    }

    public int d() {
        int i;
        synchronized (this.b) {
            i = this.d;
        }
        return i;
    }

    public float e() {
        return this.c;
    }

    public float f() {
        float f;
        synchronized (this.b) {
            f = this.h;
        }
        return f;
    }

    public float g() {
        float f;
        synchronized (this.b) {
            f = this.j;
        }
        return f;
    }
}
