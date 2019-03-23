package com.google.android.gms.a;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.m;

public abstract class c<T> {
    private final String a;
    private T b;

    public static class a extends Exception {
        public a(String str) {
            super(str);
        }

        public a(String str, Throwable th) {
            super(str, th);
        }
    }

    protected c(String str) {
        this.a = str;
    }

    /* Access modifiers changed, original: protected|final */
    public final T a(Context context) {
        if (this.b == null) {
            com.google.android.gms.common.internal.c.a((Object) context);
            Context h = m.h(context);
            if (h == null) {
                throw new a("Could not get remote context.");
            }
            try {
                this.b = a((IBinder) h.getClassLoader().loadClass(this.a).newInstance());
            } catch (ClassNotFoundException e) {
                throw new a("Could not load creator class.", e);
            } catch (InstantiationException e2) {
                throw new a("Could not instantiate creator.", e2);
            } catch (IllegalAccessException e3) {
                throw new a("Could not access creator.", e3);
            }
        }
        return this.b;
    }

    public abstract T a(IBinder iBinder);
}
