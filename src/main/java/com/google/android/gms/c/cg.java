package com.google.android.gms.c;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.c.a.a;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public class cg extends ck {
    private static final String s = cg.class.getSimpleName();
    private a t;

    protected cg(Context context) {
        super(context, "");
    }

    public static cg b(Context context) {
        ck.a(context, true);
        return new cg(context);
    }

    /* Access modifiers changed, original: protected */
    public aw.a a(Context context, View view) {
        return null;
    }

    public String a(String str, String str2) {
        return ba.a(str, str2, true);
    }

    public void a(a aVar) {
        this.t = aVar;
    }

    /* Access modifiers changed, original: protected */
    public void a(dn dnVar, aw.a aVar, au.a aVar2) {
        if (!dnVar.h()) {
            a(b(dnVar, aVar, aVar2));
        } else if (this.t != null) {
            String a = this.t.a();
            if (!TextUtils.isEmpty(a)) {
                aVar.aa = dp.a(a);
                aVar.ab = Integer.valueOf(5);
                aVar.ac = Boolean.valueOf(this.t.b());
            }
            this.t = null;
        }
    }

    /* Access modifiers changed, original: protected */
    public List<Callable<Void>> b(dn dnVar, aw.a aVar, au.a aVar2) {
        ArrayList arrayList = new ArrayList();
        if (dnVar.c() == null) {
            return arrayList;
        }
        dn dnVar2 = dnVar;
        arrayList.add(new dy(dnVar2, df.n(), df.o(), aVar, dnVar.r(), 24));
        return arrayList;
    }
}
