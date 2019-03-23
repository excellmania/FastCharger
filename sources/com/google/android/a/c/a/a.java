package com.google.android.a.c.a;

import java.util.Collections;
import java.util.List;

public class a {
    public final int a;
    public final int b;
    public final List<h> c;
    public final List<b> d;

    public a(int i, int i2, List<h> list, List<b> list2) {
        this.a = i;
        this.b = i2;
        this.c = Collections.unmodifiableList(list);
        if (list2 == null) {
            this.d = Collections.emptyList();
        } else {
            this.d = Collections.unmodifiableList(list2);
        }
    }

    public boolean a() {
        return !this.d.isEmpty();
    }
}
