package com.google.android.gms.c;

import com.google.android.gms.c.aw.a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

public abstract class fb implements Callable {
    protected final String a = getClass().getSimpleName();
    protected final dn b;
    protected final String c;
    protected final String d;
    protected final a e;
    protected Method f;
    protected final int g;
    protected final int h;

    public fb(dn dnVar, String str, String str2, a aVar, int i, int i2) {
        this.b = dnVar;
        this.c = str;
        this.d = str2;
        this.e = aVar;
        this.g = i;
        this.h = i2;
    }

    public abstract void a();

    /* renamed from: b */
    public Void call() {
        try {
            long nanoTime = System.nanoTime();
            this.f = this.b.a(this.c, this.d);
            if (this.f != null) {
                a();
                bc j = this.b.j();
                if (!(j == null || this.g == Integer.MIN_VALUE)) {
                    j.a(this.h, this.g, (System.nanoTime() - nanoTime) / 1000);
                }
            }
        } catch (IllegalAccessException | InvocationTargetException e) {
        }
        return null;
    }
}
