package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.support.annotation.Nullable;
import com.google.android.gms.c.jb;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.tr;
import com.google.android.gms.common.util.k;

@pa
public abstract class m {
    @Nullable
    public abstract l a(Context context, tr trVar, int i, boolean z, jb jbVar);

    /* Access modifiers changed, original: protected */
    public boolean a(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return k.c() && (applicationInfo == null || applicationInfo.targetSdkVersion >= 11);
    }

    /* Access modifiers changed, original: protected */
    public boolean a(tr trVar) {
        return trVar.k().e;
    }
}
