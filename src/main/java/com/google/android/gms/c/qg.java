package com.google.android.gms.c;

import android.content.Context;
import com.google.android.gms.ads.internal.v;
import java.util.WeakHashMap;

@pa
public final class qg {
    private WeakHashMap<Context, a> a = new WeakHashMap();

    private class a {
        public final long a = v.k().a();
        public final qf b;

        public a(qg qgVar, qf qfVar) {
            this.b = qfVar;
        }

        public boolean a() {
            return ((Long) is.ba.c()).longValue() + this.a < v.k().a();
        }
    }

    public qf a(Context context) {
        a aVar = (a) this.a.get(context);
        qf a = (aVar == null || aVar.a() || !((Boolean) is.aZ.c()).booleanValue()) ? new com.google.android.gms.c.qf.a(context).a() : new com.google.android.gms.c.qf.a(context, aVar.b).a();
        this.a.put(context, new a(this, a));
        return a;
    }
}
