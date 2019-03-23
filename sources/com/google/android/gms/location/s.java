package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class s implements Creator<a> {
    static void a(a aVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, aVar.d);
        c.a(parcel, 2, aVar.e);
        c.a(parcel, 1000, aVar.c());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public a createFromParcel(Parcel parcel) {
        int i = 0;
        int b = b.b(parcel);
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i2 = b.e(parcel, a);
                    break;
                case 2:
                    i = b.e(parcel, a);
                    break;
                case 1000:
                    i3 = b.e(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new a(i3, i2, i);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public a[] newArray(int i) {
        return new a[i];
    }
}
