package com.google.android.gms.c;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class gj implements Creator<gi> {
    static void a(gi giVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, giVar.a);
        c.a(parcel, 2, giVar.c(), i, false);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public gi createFromParcel(Parcel parcel) {
        int b = b.b(parcel);
        int i = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                case 2:
                    parcelFileDescriptor = (ParcelFileDescriptor) b.a(parcel, a, ParcelFileDescriptor.CREATOR);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new gi(i, parcelFileDescriptor);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public gi[] newArray(int i) {
        return new gi[i];
    }
}
