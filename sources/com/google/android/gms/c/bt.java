package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class bt implements Creator<bs> {
    static void a(bs bsVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, bsVar.a(), i, false);
        c.a(parcel, 1000, bsVar.b());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public bs createFromParcel(Parcel parcel) {
        int b = b.b(parcel);
        int i = 0;
        Status status = null;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    status = (Status) b.a(parcel, a, Status.CREATOR);
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
            return new bs(i, status);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public bs[] newArray(int i) {
        return new bs[i];
    }
}
