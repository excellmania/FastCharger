package com.google.android.gms.c;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.List;

public class gy implements Creator<gv> {
    static void a(gv gvVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, gvVar.a);
        c.a(parcel, 2, gvVar.b);
        c.a(parcel, 3, gvVar.c, false);
        c.a(parcel, 4, gvVar.d);
        c.b(parcel, 5, gvVar.e, false);
        c.a(parcel, 6, gvVar.f);
        c.a(parcel, 7, gvVar.g);
        c.a(parcel, 8, gvVar.h);
        c.a(parcel, 9, gvVar.i, false);
        c.a(parcel, 10, gvVar.j, i, false);
        c.a(parcel, 11, gvVar.k, i, false);
        c.a(parcel, 12, gvVar.l, false);
        c.a(parcel, 13, gvVar.m, false);
        c.a(parcel, 14, gvVar.n, false);
        c.b(parcel, 15, gvVar.o, false);
        c.a(parcel, 16, gvVar.p, false);
        c.a(parcel, 17, gvVar.q, false);
        c.a(parcel, 18, gvVar.r);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public gv createFromParcel(Parcel parcel) {
        int b = b.b(parcel);
        int i = 0;
        long j = 0;
        Bundle bundle = null;
        int i2 = 0;
        List list = null;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        String str = null;
        ie ieVar = null;
        Location location = null;
        String str2 = null;
        Bundle bundle2 = null;
        Bundle bundle3 = null;
        List list2 = null;
        String str3 = null;
        String str4 = null;
        boolean z3 = false;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                case 2:
                    j = b.g(parcel, a);
                    break;
                case 3:
                    bundle = b.l(parcel, a);
                    break;
                case 4:
                    i2 = b.e(parcel, a);
                    break;
                case 5:
                    list = b.r(parcel, a);
                    break;
                case 6:
                    z = b.c(parcel, a);
                    break;
                case 7:
                    i3 = b.e(parcel, a);
                    break;
                case 8:
                    z2 = b.c(parcel, a);
                    break;
                case 9:
                    str = b.j(parcel, a);
                    break;
                case 10:
                    ieVar = (ie) b.a(parcel, a, ie.CREATOR);
                    break;
                case 11:
                    location = (Location) b.a(parcel, a, Location.CREATOR);
                    break;
                case 12:
                    str2 = b.j(parcel, a);
                    break;
                case 13:
                    bundle2 = b.l(parcel, a);
                    break;
                case 14:
                    bundle3 = b.l(parcel, a);
                    break;
                case 15:
                    list2 = b.r(parcel, a);
                    break;
                case 16:
                    str3 = b.j(parcel, a);
                    break;
                case 17:
                    str4 = b.j(parcel, a);
                    break;
                case 18:
                    z3 = b.c(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new gv(i, j, bundle, i2, list, z, i3, z2, str, ieVar, location, str2, bundle2, bundle3, list2, str3, str4, z3);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public gv[] newArray(int i) {
        return new gv[i];
    }
}
