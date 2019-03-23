package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class dg implements Creator<de> {
    static void a(de deVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, deVar.a);
        c.a(parcel, 2, deVar.a(), i, false);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public de createFromParcel(Parcel parcel) {
        int b = b.b(parcel);
        int i = 0;
        d dVar = null;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                case 2:
                    dVar = (d) b.a(parcel, a, d.CREATOR);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new de(i, dVar);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public de[] newArray(int i) {
        return new de[i];
    }
}
