package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class rl implements Creator<rk> {
    static void a(rk rkVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, rkVar.a);
        c.a(parcel, 2, rkVar.b, false);
        c.a(parcel, 3, rkVar.c);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public rk createFromParcel(Parcel parcel) {
        int i = 0;
        int b = b.b(parcel);
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i2 = b.e(parcel, a);
                    break;
                case 2:
                    str = b.j(parcel, a);
                    break;
                case 3:
                    i = b.e(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new rk(i2, str, i);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public rk[] newArray(int i) {
        return new rk[i];
    }
}
