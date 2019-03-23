package com.google.android.a.c.a;

import com.google.android.a.h.j.c;
import java.util.Collections;
import java.util.List;

public class d implements c {
    public final long a;
    public final long b;
    public final long c;
    public final boolean d;
    public final long e;
    public final long f;
    public final k g;
    public final String h;
    private final List<f> i;

    public d(long j, long j2, long j3, boolean z, long j4, long j5, k kVar, String str, List<f> list) {
        List list2;
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = z;
        this.e = j4;
        this.f = j5;
        this.g = kVar;
        this.h = str;
        if (list2 == null) {
            list2 = Collections.emptyList();
        }
        this.i = list2;
    }

    public final f a(int i) {
        return (f) this.i.get(i);
    }

    public final String a() {
        return this.h;
    }

    public final int b() {
        return this.i.size();
    }

    public final long b(int i) {
        return i == this.i.size() + -1 ? this.b == -1 ? -1 : this.b - ((f) this.i.get(i)).b : ((f) this.i.get(i + 1)).b - ((f) this.i.get(i)).b;
    }
}
