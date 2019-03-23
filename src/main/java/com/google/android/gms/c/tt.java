package com.google.android.gms.c;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.d;
import com.google.android.gms.ads.internal.t;
import com.google.android.gms.ads.internal.v;

@pa
public class tt {
    public tr a(Context context, ha haVar, boolean z, boolean z2, @Nullable cm cmVar, tc tcVar) {
        return a(context, haVar, z, z2, cmVar, tcVar, null, null, null);
    }

    public tr a(Context context, ha haVar, boolean z, boolean z2, @Nullable cm cmVar, tc tcVar, jb jbVar, t tVar, d dVar) {
        tr tuVar = new tu(tv.a(context, haVar, z, z2, cmVar, tcVar, jbVar, tVar, dVar));
        tuVar.setWebViewClient(v.g().a(tuVar, z2));
        tuVar.setWebChromeClient(v.g().c(tuVar));
        return tuVar;
    }
}
