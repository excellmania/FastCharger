package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.location.LocationRequest;
import java.util.List;

public class cc implements Creator<cb> {
    static void a(cb cbVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, cbVar.b, i, false);
        c.a(parcel, 4, cbVar.c);
        c.c(parcel, 5, cbVar.d, false);
        c.a(parcel, 6, cbVar.e, false);
        c.a(parcel, 7, cbVar.f);
        c.a(parcel, 1000, cbVar.a());
        c.a(parcel, 8, cbVar.g);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public cb createFromParcel(Parcel parcel) {
        String str = null;
        boolean z = false;
        int b = b.b(parcel);
        boolean z2 = true;
        List list = cb.a;
        boolean z3 = false;
        LocationRequest locationRequest = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    locationRequest = (LocationRequest) b.a(parcel, a, LocationRequest.CREATOR);
                    break;
                case 4:
                    z2 = b.c(parcel, a);
                    break;
                case 5:
                    list = b.c(parcel, a, bp.CREATOR);
                    break;
                case 6:
                    str = b.j(parcel, a);
                    break;
                case 7:
                    z3 = b.c(parcel, a);
                    break;
                case 8:
                    z = b.c(parcel, a);
                    break;
                case 1000:
                    i = b.e(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new cb(i, locationRequest, z2, list, str, z3, z);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public cb[] newArray(int i) {
        return new cb[i];
    }
}
