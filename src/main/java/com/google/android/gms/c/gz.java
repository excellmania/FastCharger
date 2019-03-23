package com.google.android.gms.c;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.e.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;

@pa
public class gz {
    public static final gz a = new gz();

    protected gz() {
    }

    public static gz a() {
        return a;
    }

    public gv a(Context context, hw hwVar) {
        Date a = hwVar.a();
        long time = a != null ? a.getTime() : -1;
        String b = hwVar.b();
        int c = hwVar.c();
        Set d = hwVar.d();
        List unmodifiableList = !d.isEmpty() ? Collections.unmodifiableList(new ArrayList(d)) : null;
        boolean a2 = hwVar.a(context);
        int l = hwVar.l();
        Location e = hwVar.e();
        Bundle a3 = hwVar.a(AdMobAdapter.class);
        boolean f = hwVar.f();
        String g = hwVar.g();
        a i = hwVar.i();
        ie ieVar = i != null ? new ie(i) : null;
        String str = null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            str = hf.a().a(Thread.currentThread().getStackTrace(), applicationContext.getPackageName());
        }
        return new gv(7, time, a3, c, unmodifiableList, a2, l, f, g, ieVar, e, b, hwVar.k(), hwVar.m(), Collections.unmodifiableList(new ArrayList(hwVar.n())), hwVar.h(), str, hwVar.o());
    }
}
