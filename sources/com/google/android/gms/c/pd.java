package com.google.android.gms.c;

import android.content.Context;
import com.google.android.gms.common.util.f;

@pa
public final class pd {

    public interface a {
        void a(pj pjVar);
    }

    interface b {
        boolean a(tc tcVar);
    }

    public static sl a(final Context context, tc tcVar, tk<pg> tkVar, a aVar) {
        return a(context, tcVar, tkVar, aVar, new b() {
            public boolean a(tc tcVar) {
                return tcVar.e || (f.c(context) && !((Boolean) is.P.c()).booleanValue());
            }
        });
    }

    static sl a(Context context, tc tcVar, tk<pg> tkVar, a aVar, b bVar) {
        return bVar.a(tcVar) ? a(context, tkVar, aVar) : b(context, tcVar, tkVar, aVar);
    }

    private static sl a(Context context, tk<pg> tkVar, a aVar) {
        sz.b("Fetching ad response from local ad request service.");
        com.google.android.gms.c.pe.a aVar2 = new com.google.android.gms.c.pe.a(context, tkVar, aVar);
        aVar2.e();
        return aVar2;
    }

    private static sl b(Context context, tc tcVar, tk<pg> tkVar, a aVar) {
        sz.b("Fetching ad response from remote ad request service.");
        if (hf.a().b(context)) {
            return new com.google.android.gms.c.pe.b(context, tcVar, tkVar, aVar);
        }
        sz.e("Failed to connect to remote ad request service.");
        return null;
    }
}
