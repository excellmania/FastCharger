package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Collections;
import java.util.List;

@pa
public final class pj extends a {
    public static final Creator<pj> CREATOR = new pk();
    public final boolean A;
    public final boolean B;
    @Nullable
    public final rk C;
    @Nullable
    public final List<String> D;
    @Nullable
    public final List<String> E;
    public final boolean F;
    @Nullable
    public final pl G;
    public final boolean H;
    @Nullable
    public String I;
    public final List<String> J;
    public final boolean K;
    @Nullable
    public final String L;
    @Nullable
    public final rn M;
    @Nullable
    public final String N;
    public final boolean O;
    private pg P;
    public final int a;
    public final String b;
    public String c;
    public final List<String> d;
    public final int e;
    public final List<String> f;
    public final long g;
    public final boolean h;
    public final long i;
    public final List<String> j;
    public final long k;
    public final int l;
    public final String m;
    public final long n;
    public final String o;
    public final boolean p;
    public final String q;
    public final String r;
    public final boolean s;
    public final boolean t;
    public final boolean u;
    public final boolean v;
    public final boolean w;
    public pr x;
    public String y;
    public final String z;

    public pj(int i) {
        this(18, null, null, null, i, null, -1, false, -1, null, -1, -1, null, -1, null, false, null, null, false, false, false, true, false, null, null, null, false, false, null, null, null, false, null, false, null, null, false, null, null, null, true);
    }

    public pj(int i, long j) {
        this(18, null, null, null, i, null, -1, false, -1, null, j, -1, null, -1, null, false, null, null, false, false, false, true, false, null, null, null, false, false, null, null, null, false, null, false, null, null, false, null, null, null, true);
    }

    pj(int i, String str, String str2, List<String> list, int i2, List<String> list2, long j, boolean z, long j2, List<String> list3, long j3, int i3, String str3, long j4, String str4, boolean z2, String str5, String str6, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, pr prVar, String str7, String str8, boolean z8, boolean z9, rk rkVar, List<String> list4, List<String> list5, boolean z10, pl plVar, boolean z11, String str9, List<String> list6, boolean z12, String str10, rn rnVar, String str11, boolean z13) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = list != null ? Collections.unmodifiableList(list) : null;
        this.e = i2;
        this.f = list2 != null ? Collections.unmodifiableList(list2) : null;
        this.g = j;
        this.h = z;
        this.i = j2;
        this.j = list3 != null ? Collections.unmodifiableList(list3) : null;
        this.k = j3;
        this.l = i3;
        this.m = str3;
        this.n = j4;
        this.o = str4;
        this.p = z2;
        this.q = str5;
        this.r = str6;
        this.s = z3;
        this.t = z4;
        this.u = z5;
        this.v = z6;
        this.O = z13;
        this.w = z7;
        this.x = prVar;
        this.y = str7;
        this.z = str8;
        if (this.c == null && this.x != null) {
            pu puVar = (pu) this.x.a(pu.CREATOR);
            if (!(puVar == null || TextUtils.isEmpty(puVar.a()))) {
                this.c = puVar.a();
            }
        }
        this.A = z8;
        this.B = z9;
        this.C = rkVar;
        this.D = list4;
        this.E = list5;
        this.F = z10;
        this.G = plVar;
        this.H = z11;
        this.I = str9;
        this.J = list6;
        this.K = z12;
        this.L = str10;
        this.M = rnVar;
        this.N = str11;
    }

    public pj(pg pgVar, String str, String str2, List<String> list, List<String> list2, long j, boolean z, long j2, List<String> list3, long j3, int i, String str3, long j4, String str4, String str5, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, String str6, boolean z7, boolean z8, rk rkVar, List<String> list4, List<String> list5, boolean z9, pl plVar, boolean z10, String str7, List<String> list6, boolean z11, String str8, rn rnVar, String str9, boolean z12) {
        this(18, str, str2, list, -2, list2, j, z, j2, list3, j3, i, str3, j4, str4, false, null, str5, z2, z3, z4, z5, z6, null, null, str6, z7, z8, rkVar, list4, list5, z9, plVar, z10, str7, list6, z11, str8, rnVar, str9, z12);
        this.P = pgVar;
    }

    public pj(pg pgVar, String str, String str2, List<String> list, List<String> list2, long j, boolean z, long j2, List<String> list3, long j3, int i, String str3, long j4, String str4, boolean z2, String str5, String str6, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, String str7, boolean z8, boolean z9, rk rkVar, List<String> list4, List<String> list5, boolean z10, pl plVar, boolean z11, String str8, List<String> list6, boolean z12, String str9, rn rnVar, String str10, boolean z13) {
        this(18, str, str2, list, -2, list2, j, z, j2, list3, j3, i, str3, j4, str4, z2, str5, str6, z3, z4, z5, z6, z7, null, null, str7, z8, z9, rkVar, list4, list5, z10, plVar, z11, str8, list6, z12, str9, rnVar, str10, z13);
        this.P = pgVar;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (!(this.P == null || this.P.a < 9 || TextUtils.isEmpty(this.c))) {
            this.x = new pr(new pu(this.c));
            this.c = null;
        }
        pk.a(this, parcel, i);
    }
}
