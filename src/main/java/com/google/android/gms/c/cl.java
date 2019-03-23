package com.google.android.gms.c;

import android.content.Context;
import com.google.android.gms.c.aw.a;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public class cl extends ck {
    private static final String s = cl.class.getSimpleName();

    protected cl(Context context, String str, boolean z) {
        super(context, str, z);
    }

    public static cl a(String str, Context context, boolean z) {
        ck.a(context, z);
        return new cl(context, str, z);
    }

    /* Access modifiers changed, original: protected */
    public List<Callable<Void>> b(dn dnVar, a aVar, au.a aVar2) {
        if (dnVar.c() == null || !this.o) {
            return super.b(dnVar, aVar, aVar2);
        }
        int r = dnVar.r();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.b(dnVar, aVar, aVar2));
        arrayList.add(new dy(dnVar, df.n(), df.o(), aVar, r, 24));
        return arrayList;
    }
}
