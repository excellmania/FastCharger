package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class ij implements Creator<ii> {
    static void a(ii iiVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, iiVar.a);
        c.a(parcel, 2, iiVar.b);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public ii createFromParcel(Parcel parcel) {
        boolean z = false;
        int b = b.b(parcel);
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                case 2:
                    z = b.c(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new ii(i, z);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public ii[] newArray(int i) {
        return new ii[i];
    }
}
