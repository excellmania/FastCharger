package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class td implements Creator<tc> {
    static void a(tc tcVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, tcVar.a);
        c.a(parcel, 2, tcVar.b, false);
        c.a(parcel, 3, tcVar.c);
        c.a(parcel, 4, tcVar.d);
        c.a(parcel, 5, tcVar.e);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public tc createFromParcel(Parcel parcel) {
        boolean z = false;
        int b = b.b(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i3 = b.e(parcel, a);
                    break;
                case 2:
                    str = b.j(parcel, a);
                    break;
                case 3:
                    i2 = b.e(parcel, a);
                    break;
                case 4:
                    i = b.e(parcel, a);
                    break;
                case 5:
                    z = b.c(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new tc(i3, str, i2, i, z);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public tc[] newArray(int i) {
        return new tc[i];
    }
}
