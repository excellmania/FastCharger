package com.google.android.gms.c;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.r;
import com.google.android.gms.common.util.k;

@pa
public class ol {

    public interface a {
        void b(rv rvVar);
    }

    public sl a(Context context, com.google.android.gms.ads.internal.a aVar, com.google.android.gms.c.rv.a aVar2, cm cmVar, @Nullable tr trVar, mo moVar, a aVar3, jb jbVar) {
        pj pjVar = aVar2.b;
        Object opVar = pjVar.h ? new op(context, aVar2, moVar, aVar3, jbVar, trVar) : (pjVar.t || (aVar instanceof r)) ? (pjVar.t && (aVar instanceof r)) ? new oq(context, (r) aVar, aVar2, cmVar, aVar3, jbVar) : new on(aVar2, aVar3) : (((Boolean) is.X.c()).booleanValue() && pjVar.p) ? new oj(context, aVar2, trVar, aVar3) : (((Boolean) is.aq.c()).booleanValue() && k.g() && !k.i() && trVar != null && trVar.k().e) ? new oo(context, aVar2, trVar, aVar3) : new om(context, aVar2, trVar, aVar3);
        String str = "AdRenderer: ";
        String valueOf = String.valueOf(opVar.getClass().getName());
        sz.b(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        opVar.e();
        return opVar;
    }

    public sl a(Context context, com.google.android.gms.c.rv.a aVar, qp qpVar) {
        rg rgVar = new rg(context, aVar, qpVar);
        String str = "AdRenderer: ";
        String valueOf = String.valueOf(rgVar.getClass().getName());
        sz.b(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        rgVar.e();
        return rgVar;
    }
}
