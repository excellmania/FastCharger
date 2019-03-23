package com.google.android.gms.c;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.List;

@pa
public final class gv extends a {
    public static final Creator<gv> CREATOR = new gy();
    public final int a;
    public final long b;
    public final Bundle c;
    public final int d;
    public final List<String> e;
    public final boolean f;
    public final int g;
    public final boolean h;
    public final String i;
    public final ie j;
    public final Location k;
    public final String l;
    public final Bundle m;
    public final Bundle n;
    public final List<String> o;
    public final String p;
    public final String q;
    public final boolean r;

    public gv(int i, long j, Bundle bundle, int i2, List<String> list, boolean z, int i3, boolean z2, String str, ie ieVar, Location location, String str2, Bundle bundle2, Bundle bundle3, List<String> list2, String str3, String str4, boolean z3) {
        this.a = i;
        this.b = j;
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.c = bundle;
        this.d = i2;
        this.e = list;
        this.f = z;
        this.g = i3;
        this.h = z2;
        this.i = str;
        this.j = ieVar;
        this.k = location;
        this.l = str2;
        if (bundle2 == null) {
            bundle2 = new Bundle();
        }
        this.m = bundle2;
        this.n = bundle3;
        this.o = list2;
        this.p = str3;
        this.q = str4;
        this.r = z3;
    }

    public static void a(gv gvVar) {
        gvVar.m.putBundle("com.google.ads.mediation.admob.AdMobAdapter", gvVar.c);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof gv)) {
            return false;
        }
        gv gvVar = (gv) obj;
        return this.a == gvVar.a && this.b == gvVar.b && b.a(this.c, gvVar.c) && this.d == gvVar.d && b.a(this.e, gvVar.e) && this.f == gvVar.f && this.g == gvVar.g && this.h == gvVar.h && b.a(this.i, gvVar.i) && b.a(this.j, gvVar.j) && b.a(this.k, gvVar.k) && b.a(this.l, gvVar.l) && b.a(this.m, gvVar.m) && b.a(this.n, gvVar.n) && b.a(this.o, gvVar.o) && b.a(this.p, gvVar.p) && b.a(this.q, gvVar.q) && this.r == gvVar.r;
    }

    public int hashCode() {
        return b.a(Integer.valueOf(this.a), Long.valueOf(this.b), this.c, Integer.valueOf(this.d), this.e, Boolean.valueOf(this.f), Integer.valueOf(this.g), Boolean.valueOf(this.h), this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, Boolean.valueOf(this.r));
    }

    public void writeToParcel(Parcel parcel, int i) {
        gy.a(this, parcel, i);
    }
}
