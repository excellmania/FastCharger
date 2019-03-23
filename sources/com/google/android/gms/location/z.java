package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class z implements Creator<LocationRequest> {
    static void a(LocationRequest locationRequest, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, locationRequest.a);
        c.a(parcel, 2, locationRequest.b);
        c.a(parcel, 3, locationRequest.c);
        c.a(parcel, 4, locationRequest.d);
        c.a(parcel, 5, locationRequest.e);
        c.a(parcel, 6, locationRequest.f);
        c.a(parcel, 7, locationRequest.g);
        c.a(parcel, 1000, locationRequest.a());
        c.a(parcel, 8, locationRequest.h);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public LocationRequest createFromParcel(Parcel parcel) {
        int b = b.b(parcel);
        int i = 0;
        int i2 = 102;
        long j = 3600000;
        long j2 = 600000;
        boolean z = false;
        long j3 = Long.MAX_VALUE;
        int i3 = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        float f = 0.0f;
        long j4 = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i2 = b.e(parcel, a);
                    break;
                case 2:
                    j = b.g(parcel, a);
                    break;
                case 3:
                    j2 = b.g(parcel, a);
                    break;
                case 4:
                    z = b.c(parcel, a);
                    break;
                case 5:
                    j3 = b.g(parcel, a);
                    break;
                case 6:
                    i3 = b.e(parcel, a);
                    break;
                case 7:
                    f = b.h(parcel, a);
                    break;
                case 8:
                    j4 = b.g(parcel, a);
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
            return new LocationRequest(i, i2, j, j2, z, j3, i3, f, j4);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public LocationRequest[] newArray(int i) {
        return new LocationRequest[i];
    }
}
