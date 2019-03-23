package com.google.android.gms.c;

import android.location.Location;
import android.os.Bundle;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

@pa
public final class gw {
    private long a;
    private Bundle b;
    private int c;
    private List<String> d;
    private boolean e;
    private int f;
    private boolean g;
    private String h;
    private ie i;
    private Location j;
    private String k;
    private Bundle l;
    private Bundle m;
    private List<String> n;
    private String o;
    private String p;
    private boolean q;

    public gw() {
        this.a = -1;
        this.b = new Bundle();
        this.c = -1;
        this.d = new ArrayList();
        this.e = false;
        this.f = -1;
        this.g = false;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = new Bundle();
        this.m = new Bundle();
        this.n = new ArrayList();
        this.o = null;
        this.p = null;
        this.q = false;
    }

    public gw(gv gvVar) {
        this.a = gvVar.b;
        this.b = gvVar.c;
        this.c = gvVar.d;
        this.d = gvVar.e;
        this.e = gvVar.f;
        this.f = gvVar.g;
        this.g = gvVar.h;
        this.h = gvVar.i;
        this.i = gvVar.j;
        this.j = gvVar.k;
        this.k = gvVar.l;
        this.l = gvVar.m;
        this.m = gvVar.n;
        this.n = gvVar.o;
        this.o = gvVar.p;
        this.p = gvVar.q;
    }

    public gv a() {
        return new gv(7, this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, false);
    }

    public gw a(@Nullable Location location) {
        this.j = location;
        return this;
    }
}
