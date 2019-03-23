package com.google.android.gms.c;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import java.util.List;
import org.apache.http.HttpStatus;

@pa
public class ji {
    static final int a = d;
    static final int b = c;
    private static final int c = Color.rgb(12, 174, HttpStatus.SC_PARTIAL_CONTENT);
    private static final int d = Color.rgb(HttpStatus.SC_NO_CONTENT, HttpStatus.SC_NO_CONTENT, HttpStatus.SC_NO_CONTENT);
    private final String e;
    private final List<Drawable> f;
    private final int g;
    private final int h;
    private final int i;
    private final int j;
    private final int k;

    public ji(String str, List<Drawable> list, Integer num, Integer num2, Integer num3, int i, int i2) {
        this.e = str;
        this.f = list;
        this.g = num != null ? num.intValue() : a;
        this.h = num2 != null ? num2.intValue() : b;
        this.i = num3 != null ? num3.intValue() : 12;
        this.j = i;
        this.k = i2;
    }

    public String a() {
        return this.e;
    }

    public List<Drawable> b() {
        return this.f;
    }

    public int c() {
        return this.g;
    }

    public int d() {
        return this.h;
    }

    public int e() {
        return this.i;
    }

    public int f() {
        return this.j;
    }

    public int g() {
        return this.k;
    }
}
