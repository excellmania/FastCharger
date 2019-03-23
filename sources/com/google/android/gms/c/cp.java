package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class cp implements Creator<co> {
    static void a(co coVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, coVar.a);
        c.a(parcel, 2, coVar.b, false);
        c.a(parcel, 3, coVar.c);
        c.a(parcel, 4, coVar.d);
        c.a(parcel, 5, coVar.e, false);
        c.a(parcel, 6, coVar.f, false);
        c.a(parcel, 7, coVar.g);
        c.a(parcel, 8, coVar.h, false);
        c.a(parcel, 9, coVar.i);
        c.a(parcel, 10, coVar.j);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public co createFromParcel(Parcel parcel) {
        String str = null;
        int i = 0;
        int b = b.b(parcel);
        boolean z = true;
        boolean z2 = false;
        String str2 = null;
        String str3 = null;
        int i2 = 0;
        int i3 = 0;
        String str4 = null;
        int i4 = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i4 = b.e(parcel, a);
                    break;
                case 2:
                    str4 = b.j(parcel, a);
                    break;
                case 3:
                    i3 = b.e(parcel, a);
                    break;
                case 4:
                    i2 = b.e(parcel, a);
                    break;
                case 5:
                    str3 = b.j(parcel, a);
                    break;
                case 6:
                    str2 = b.j(parcel, a);
                    break;
                case 7:
                    z = b.c(parcel, a);
                    break;
                case 8:
                    str = b.j(parcel, a);
                    break;
                case 9:
                    z2 = b.c(parcel, a);
                    break;
                case 10:
                    i = b.e(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new co(i4, str4, i3, i2, str3, str2, z, str, z2, i);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public co[] newArray(int i) {
        return new co[i];
    }
}
