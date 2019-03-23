package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.List;

public class pk implements Creator<pj> {
    static void a(pj pjVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, pjVar.a);
        c.a(parcel, 2, pjVar.b, false);
        c.a(parcel, 3, pjVar.c, false);
        c.b(parcel, 4, pjVar.d, false);
        c.a(parcel, 5, pjVar.e);
        c.b(parcel, 6, pjVar.f, false);
        c.a(parcel, 7, pjVar.g);
        c.a(parcel, 8, pjVar.h);
        c.a(parcel, 9, pjVar.i);
        c.b(parcel, 10, pjVar.j, false);
        c.a(parcel, 11, pjVar.k);
        c.a(parcel, 12, pjVar.l);
        c.a(parcel, 13, pjVar.m, false);
        c.a(parcel, 14, pjVar.n);
        c.a(parcel, 15, pjVar.o, false);
        c.a(parcel, 18, pjVar.p);
        c.a(parcel, 19, pjVar.q, false);
        c.a(parcel, 21, pjVar.r, false);
        c.a(parcel, 22, pjVar.s);
        c.a(parcel, 23, pjVar.t);
        c.a(parcel, 24, pjVar.u);
        c.a(parcel, 25, pjVar.v);
        c.a(parcel, 26, pjVar.w);
        c.a(parcel, 28, pjVar.x, i, false);
        c.a(parcel, 29, pjVar.y, false);
        c.a(parcel, 30, pjVar.z, false);
        c.a(parcel, 31, pjVar.A);
        c.a(parcel, 32, pjVar.B);
        c.a(parcel, 33, pjVar.C, i, false);
        c.b(parcel, 34, pjVar.D, false);
        c.b(parcel, 35, pjVar.E, false);
        c.a(parcel, 36, pjVar.F);
        c.a(parcel, 37, pjVar.G, i, false);
        c.a(parcel, 38, pjVar.H);
        c.a(parcel, 39, pjVar.I, false);
        c.b(parcel, 40, pjVar.J, false);
        c.a(parcel, 42, pjVar.K);
        c.a(parcel, 43, pjVar.L, false);
        c.a(parcel, 44, pjVar.M, i, false);
        c.a(parcel, 45, pjVar.N, false);
        c.a(parcel, 46, pjVar.O);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public pj createFromParcel(Parcel parcel) {
        int b = b.b(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        List list = null;
        int i2 = 0;
        List list2 = null;
        long j = 0;
        boolean z = false;
        long j2 = 0;
        List list3 = null;
        long j3 = 0;
        int i3 = 0;
        String str3 = null;
        long j4 = 0;
        String str4 = null;
        boolean z2 = false;
        String str5 = null;
        String str6 = null;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        pr prVar = null;
        String str7 = null;
        String str8 = null;
        boolean z8 = false;
        boolean z9 = false;
        rk rkVar = null;
        List list4 = null;
        List list5 = null;
        boolean z10 = false;
        pl plVar = null;
        boolean z11 = false;
        String str9 = null;
        List list6 = null;
        boolean z12 = false;
        String str10 = null;
        rn rnVar = null;
        String str11 = null;
        boolean z13 = false;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                case 2:
                    str = b.j(parcel, a);
                    break;
                case 3:
                    str2 = b.j(parcel, a);
                    break;
                case 4:
                    list = b.r(parcel, a);
                    break;
                case 5:
                    i2 = b.e(parcel, a);
                    break;
                case 6:
                    list2 = b.r(parcel, a);
                    break;
                case 7:
                    j = b.g(parcel, a);
                    break;
                case 8:
                    z = b.c(parcel, a);
                    break;
                case 9:
                    j2 = b.g(parcel, a);
                    break;
                case 10:
                    list3 = b.r(parcel, a);
                    break;
                case 11:
                    j3 = b.g(parcel, a);
                    break;
                case 12:
                    i3 = b.e(parcel, a);
                    break;
                case 13:
                    str3 = b.j(parcel, a);
                    break;
                case 14:
                    j4 = b.g(parcel, a);
                    break;
                case 15:
                    str4 = b.j(parcel, a);
                    break;
                case 18:
                    z2 = b.c(parcel, a);
                    break;
                case 19:
                    str5 = b.j(parcel, a);
                    break;
                case 21:
                    str6 = b.j(parcel, a);
                    break;
                case 22:
                    z3 = b.c(parcel, a);
                    break;
                case 23:
                    z4 = b.c(parcel, a);
                    break;
                case 24:
                    z5 = b.c(parcel, a);
                    break;
                case 25:
                    z6 = b.c(parcel, a);
                    break;
                case 26:
                    z7 = b.c(parcel, a);
                    break;
                case 28:
                    prVar = (pr) b.a(parcel, a, pr.CREATOR);
                    break;
                case 29:
                    str7 = b.j(parcel, a);
                    break;
                case 30:
                    str8 = b.j(parcel, a);
                    break;
                case 31:
                    z8 = b.c(parcel, a);
                    break;
                case 32:
                    z9 = b.c(parcel, a);
                    break;
                case 33:
                    rkVar = (rk) b.a(parcel, a, rk.CREATOR);
                    break;
                case 34:
                    list4 = b.r(parcel, a);
                    break;
                case 35:
                    list5 = b.r(parcel, a);
                    break;
                case 36:
                    z10 = b.c(parcel, a);
                    break;
                case 37:
                    plVar = (pl) b.a(parcel, a, pl.CREATOR);
                    break;
                case 38:
                    z11 = b.c(parcel, a);
                    break;
                case 39:
                    str9 = b.j(parcel, a);
                    break;
                case 40:
                    list6 = b.r(parcel, a);
                    break;
                case 42:
                    z12 = b.c(parcel, a);
                    break;
                case 43:
                    str10 = b.j(parcel, a);
                    break;
                case 44:
                    rnVar = (rn) b.a(parcel, a, rn.CREATOR);
                    break;
                case 45:
                    str11 = b.j(parcel, a);
                    break;
                case 46:
                    z13 = b.c(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new pj(i, str, str2, list, i2, list2, j, z, j2, list3, j3, i3, str3, j4, str4, z2, str5, str6, z3, z4, z5, z6, z7, prVar, str7, str8, z8, z9, rkVar, list4, list5, z10, plVar, z11, str9, list6, z12, str10, rnVar, str11, z13);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public pj[] newArray(int i) {
        return new pj[i];
    }
}
