package com.google.android.gms.c;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.List;

public class ph implements Creator<pg> {
    static void a(pg pgVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, pgVar.a);
        c.a(parcel, 2, pgVar.b, false);
        c.a(parcel, 3, pgVar.c, i, false);
        c.a(parcel, 4, pgVar.d, i, false);
        c.a(parcel, 5, pgVar.e, false);
        c.a(parcel, 6, pgVar.f, i, false);
        c.a(parcel, 7, pgVar.g, i, false);
        c.a(parcel, 8, pgVar.h, false);
        c.a(parcel, 9, pgVar.i, false);
        c.a(parcel, 10, pgVar.j, false);
        c.a(parcel, 11, pgVar.k, i, false);
        c.a(parcel, 12, pgVar.l, false);
        c.a(parcel, 13, pgVar.m);
        c.b(parcel, 14, pgVar.n, false);
        c.a(parcel, 15, pgVar.o, false);
        c.a(parcel, 16, pgVar.p);
        c.a(parcel, 17, pgVar.q, i, false);
        c.a(parcel, 18, pgVar.r);
        c.a(parcel, 19, pgVar.s);
        c.a(parcel, 20, pgVar.t);
        c.a(parcel, 21, pgVar.u, false);
        c.a(parcel, 25, pgVar.v);
        c.a(parcel, 26, pgVar.w, false);
        c.b(parcel, 27, pgVar.x, false);
        c.a(parcel, 28, pgVar.y, false);
        c.a(parcel, 29, pgVar.z, i, false);
        c.b(parcel, 30, pgVar.A, false);
        c.a(parcel, 31, pgVar.B);
        c.a(parcel, 32, pgVar.C, i, false);
        c.a(parcel, 33, pgVar.D, false);
        c.a(parcel, 34, pgVar.E);
        c.a(parcel, 35, pgVar.F);
        c.a(parcel, 36, pgVar.G);
        c.a(parcel, 37, pgVar.H);
        c.a(parcel, 38, pgVar.I);
        c.a(parcel, 39, pgVar.J, false);
        c.a(parcel, 40, pgVar.K);
        c.a(parcel, 41, pgVar.L, false);
        c.a(parcel, 42, pgVar.M);
        c.a(parcel, 43, pgVar.N);
        c.a(parcel, 44, pgVar.O, false);
        c.a(parcel, 45, pgVar.P, false);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public pg createFromParcel(Parcel parcel) {
        int b = b.b(parcel);
        int i = 0;
        Bundle bundle = null;
        gv gvVar = null;
        ha haVar = null;
        String str = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        tc tcVar = null;
        Bundle bundle2 = null;
        int i2 = 0;
        List list = null;
        Bundle bundle3 = null;
        boolean z = false;
        Messenger messenger = null;
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        String str5 = null;
        long j = 0;
        String str6 = null;
        List list2 = null;
        String str7 = null;
        js jsVar = null;
        List list3 = null;
        long j2 = 0;
        pn pnVar = null;
        String str8 = null;
        float f2 = 0.0f;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        boolean z3 = false;
        boolean z4 = false;
        String str9 = null;
        String str10 = null;
        boolean z5 = false;
        int i7 = 0;
        Bundle bundle4 = null;
        String str11 = null;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                case 2:
                    bundle = b.l(parcel, a);
                    break;
                case 3:
                    gvVar = (gv) b.a(parcel, a, gv.CREATOR);
                    break;
                case 4:
                    haVar = (ha) b.a(parcel, a, ha.CREATOR);
                    break;
                case 5:
                    str = b.j(parcel, a);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) b.a(parcel, a, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) b.a(parcel, a, PackageInfo.CREATOR);
                    break;
                case 8:
                    str2 = b.j(parcel, a);
                    break;
                case 9:
                    str3 = b.j(parcel, a);
                    break;
                case 10:
                    str4 = b.j(parcel, a);
                    break;
                case 11:
                    tcVar = (tc) b.a(parcel, a, tc.CREATOR);
                    break;
                case 12:
                    bundle2 = b.l(parcel, a);
                    break;
                case 13:
                    i2 = b.e(parcel, a);
                    break;
                case 14:
                    list = b.r(parcel, a);
                    break;
                case 15:
                    bundle3 = b.l(parcel, a);
                    break;
                case 16:
                    z = b.c(parcel, a);
                    break;
                case 17:
                    messenger = (Messenger) b.a(parcel, a, Messenger.CREATOR);
                    break;
                case 18:
                    i3 = b.e(parcel, a);
                    break;
                case 19:
                    i4 = b.e(parcel, a);
                    break;
                case 20:
                    f = b.h(parcel, a);
                    break;
                case 21:
                    str5 = b.j(parcel, a);
                    break;
                case 25:
                    j = b.g(parcel, a);
                    break;
                case 26:
                    str6 = b.j(parcel, a);
                    break;
                case 27:
                    list2 = b.r(parcel, a);
                    break;
                case 28:
                    str7 = b.j(parcel, a);
                    break;
                case 29:
                    jsVar = (js) b.a(parcel, a, js.CREATOR);
                    break;
                case 30:
                    list3 = b.r(parcel, a);
                    break;
                case 31:
                    j2 = b.g(parcel, a);
                    break;
                case 32:
                    pnVar = (pn) b.a(parcel, a, pn.CREATOR);
                    break;
                case 33:
                    str8 = b.j(parcel, a);
                    break;
                case 34:
                    f2 = b.h(parcel, a);
                    break;
                case 35:
                    i5 = b.e(parcel, a);
                    break;
                case 36:
                    i6 = b.e(parcel, a);
                    break;
                case 37:
                    z3 = b.c(parcel, a);
                    break;
                case 38:
                    z4 = b.c(parcel, a);
                    break;
                case 39:
                    str9 = b.j(parcel, a);
                    break;
                case 40:
                    z2 = b.c(parcel, a);
                    break;
                case 41:
                    str10 = b.j(parcel, a);
                    break;
                case 42:
                    z5 = b.c(parcel, a);
                    break;
                case 43:
                    i7 = b.e(parcel, a);
                    break;
                case 44:
                    bundle4 = b.l(parcel, a);
                    break;
                case 45:
                    str11 = b.j(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new pg(i, bundle, gvVar, haVar, str, applicationInfo, packageInfo, str2, str3, str4, tcVar, bundle2, i2, list, bundle3, z, messenger, i3, i4, f, str5, j, str6, list2, str7, jsVar, list3, j2, pnVar, str8, f2, z2, i5, i6, z3, z4, str9, str10, z5, i7, bundle4, str11);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public pg[] newArray(int i) {
        return new pg[i];
    }
}
