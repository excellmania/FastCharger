package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class jt implements Creator<js> {
    static void a(js jsVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, jsVar.a);
        c.a(parcel, 2, jsVar.b);
        c.a(parcel, 3, jsVar.c);
        c.a(parcel, 4, jsVar.d);
        c.a(parcel, 5, jsVar.e);
        c.a(parcel, 6, jsVar.f, i, false);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public js createFromParcel(Parcel parcel) {
        int i = 0;
        int b = b.b(parcel);
        ii iiVar = null;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i3 = b.e(parcel, a);
                    break;
                case 2:
                    z2 = b.c(parcel, a);
                    break;
                case 3:
                    i2 = b.e(parcel, a);
                    break;
                case 4:
                    z = b.c(parcel, a);
                    break;
                case 5:
                    i = b.e(parcel, a);
                    break;
                case 6:
                    iiVar = (ii) b.a(parcel, a, ii.CREATOR);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new js(i3, z2, i2, z, i, iiVar);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public js[] newArray(int i) {
        return new js[i];
    }
}
