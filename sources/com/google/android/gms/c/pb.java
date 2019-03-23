package com.google.android.gms.c;

import android.content.Context;

@pa
public class pb {

    public interface a {
        void a(com.google.android.gms.c.rv.a aVar);
    }

    public se a(Context context, com.google.android.gms.c.pg.a aVar, cm cmVar, a aVar2) {
        se ptVar = aVar.b.c.getBundle("sdk_less_server_data") != null ? new pt(context, aVar, aVar2) : new pc(context, aVar, cmVar, aVar2);
        ptVar.e();
        return ptVar;
    }
}
