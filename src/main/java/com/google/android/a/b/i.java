package com.google.android.a.b;

import com.google.android.a.h.b;
import java.util.Comparator;

public class i {
    public final String a;
    public final String b;
    public final int c;
    public final int d;
    public final int e;
    public final float f;
    public final int g;
    public final int h;
    public final String i;
    public final String j;

    public static final class a implements Comparator<i> {
        /* renamed from: a */
        public int compare(i iVar, i iVar2) {
            return iVar2.c - iVar.c;
        }
    }

    public i(String str, String str2, int i, int i2, float f, int i3, int i4, int i5, String str3, String str4) {
        this.a = (String) b.a((Object) str);
        this.b = str2;
        this.d = i;
        this.e = i2;
        this.f = f;
        this.g = i3;
        this.h = i4;
        this.c = i5;
        this.j = str3;
        this.i = str4;
    }

    public boolean equals(Object obj) {
        return this == obj ? true : (obj == null || getClass() != obj.getClass()) ? false : ((i) obj).a.equals(this.a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
