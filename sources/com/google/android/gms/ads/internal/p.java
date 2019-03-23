package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.a.b;
import com.google.android.gms.c.hs.a;
import com.google.android.gms.c.is;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.sm;
import com.google.android.gms.c.sz;
import com.google.android.gms.c.tc;

@pa
public class p extends a {
    private static final Object b = new Object();
    @Nullable
    private static p c;
    private final Context a;
    private final Object d = new Object();
    private boolean e;
    private boolean f;
    private float g = -1.0f;
    private tc h;

    p(Context context, tc tcVar) {
        this.a = context;
        this.h = tcVar;
        this.e = false;
    }

    @Nullable
    public static p a() {
        p pVar;
        synchronized (b) {
            pVar = c;
        }
        return pVar;
    }

    public static p a(Context context, tc tcVar) {
        p pVar;
        synchronized (b) {
            if (c == null) {
                c = new p(context.getApplicationContext(), tcVar);
            }
            pVar = c;
        }
        return pVar;
    }

    public void a(float f) {
        synchronized (this.d) {
            this.g = f;
        }
    }

    public void a(com.google.android.gms.a.a aVar, String str) {
        sm b = b(aVar, str);
        if (b == null) {
            sz.c("Context is null. Failed to open debug menu.");
        } else {
            b.a();
        }
    }

    public void a(String str) {
        is.a(this.a);
        if (!TextUtils.isEmpty(str) && ((Boolean) is.cz.c()).booleanValue()) {
            v.A().a(this.a, this.h, true, null, str, null);
        }
    }

    public void a(boolean z) {
        synchronized (this.d) {
            this.f = z;
        }
    }

    /* Access modifiers changed, original: protected */
    @Nullable
    public sm b(com.google.android.gms.a.a aVar, String str) {
        if (aVar == null) {
            return null;
        }
        Context context = (Context) b.a(aVar);
        if (context == null) {
            return null;
        }
        sm smVar = new sm(context);
        smVar.a(str);
        return smVar;
    }

    public void b() {
        synchronized (b) {
            if (this.e) {
                sz.e("Mobile ads is initialized already.");
                return;
            }
            this.e = true;
            is.a(this.a);
            v.i().a(this.a, this.h);
            v.j().a(this.a);
        }
    }

    public float c() {
        float f;
        synchronized (this.d) {
            f = this.g;
        }
        return f;
    }

    public boolean d() {
        boolean z;
        synchronized (this.d) {
            z = this.g >= 0.0f;
        }
        return z;
    }

    public boolean e() {
        boolean z;
        synchronized (this.d) {
            z = this.f;
        }
        return z;
    }
}
