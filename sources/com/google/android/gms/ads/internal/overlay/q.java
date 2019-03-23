package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.c.jb;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.tr;

@pa
public class q extends m {
    @Nullable
    public l a(Context context, tr trVar, int i, boolean z, jb jbVar) {
        if (!a(context)) {
            return null;
        }
        return new f(context, z, a(trVar), new ab(context, trVar.o(), trVar.v(), jbVar, trVar.x()));
    }
}
