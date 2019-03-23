package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class y implements Creator<LocationAvailability> {
    static void a(LocationAvailability locationAvailability, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, locationAvailability.a);
        c.a(parcel, 2, locationAvailability.b);
        c.a(parcel, 3, locationAvailability.c);
        c.a(parcel, 4, locationAvailability.d);
        c.a(parcel, 1000, locationAvailability.b());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public LocationAvailability createFromParcel(Parcel parcel) {
        int i = 1;
        int b = b.b(parcel);
        int i2 = 0;
        int i3 = 1000;
        long j = 0;
        int i4 = 1;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i4 = b.e(parcel, a);
                    break;
                case 2:
                    i = b.e(parcel, a);
                    break;
                case 3:
                    j = b.g(parcel, a);
                    break;
                case 4:
                    i3 = b.e(parcel, a);
                    break;
                case 1000:
                    i2 = b.e(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new LocationAvailability(i2, i3, i4, i, j);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public LocationAvailability[] newArray(int i) {
        return new LocationAvailability[i];
    }
}
