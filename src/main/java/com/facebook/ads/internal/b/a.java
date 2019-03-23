package com.facebook.ads.internal.b;

import android.content.Context;
import android.support.annotation.NonNull;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

public final class a {
    private final View a;
    private final List<d> b;
    private final Context c;
    private c d;

    public a(@NonNull Context context, @NonNull View view, @NonNull List<b> list) {
        this.c = context;
        this.a = view;
        this.b = new ArrayList(list.size());
        for (b dVar : list) {
            this.b.add(new d(dVar));
        }
        a();
    }

    public void a() {
        this.d = new c(0.5d);
    }

    public void a(double d) {
        double a = e.a(this.a, this.c);
        this.d.a(d, a);
        for (d a2 : this.b) {
            a2.a(d, a);
        }
    }

    public c b() {
        return this.d;
    }
}
