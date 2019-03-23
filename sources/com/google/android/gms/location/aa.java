package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.List;

public class aa implements Creator<LocationResult> {
    static void a(LocationResult locationResult, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.c(parcel, 1, locationResult.a(), false);
        c.a(parcel, 1000, locationResult.b());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public LocationResult createFromParcel(Parcel parcel) {
        int b = b.b(parcel);
        int i = 0;
        List list = LocationResult.a;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    list = b.c(parcel, a, Location.CREATOR);
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
            return new LocationResult(i, list);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public LocationResult[] newArray(int i) {
        return new LocationResult[i];
    }
}
