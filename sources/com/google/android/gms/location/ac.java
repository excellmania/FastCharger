package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class ac implements Creator<ab> {
    static void a(ab abVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, abVar.b(), false);
        c.a(parcel, 2, abVar.c(), false);
        c.a(parcel, 3, abVar.d());
        c.a(parcel, 1000, abVar.a());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public ab createFromParcel(Parcel parcel) {
        int i = 0;
        int b = b.b(parcel);
        String str = "";
        String str2 = "";
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    str = b.j(parcel, a);
                    break;
                case 2:
                    str2 = b.j(parcel, a);
                    break;
                case 3:
                    i = b.e(parcel, a);
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
            return new ab(i2, str, str2, i);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public ab[] newArray(int i) {
        return new ab[i];
    }
}
