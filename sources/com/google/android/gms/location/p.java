package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class p implements Creator<o> {
    static void a(o oVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, oVar.b());
        c.a(parcel, 2, oVar.c());
        c.a(parcel, 1000, oVar.a());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public o createFromParcel(Parcel parcel) {
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
            return new o(i3, i2, i);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public o[] newArray(int i) {
        return new o[i];
    }
}
