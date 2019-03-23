package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class bq implements Creator<bp> {
    static void a(bp bpVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, bpVar.a);
        c.a(parcel, 2, bpVar.b, false);
        c.a(parcel, 1000, bpVar.a());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public bp createFromParcel(Parcel parcel) {
        int i = 0;
        int b = b.b(parcel);
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                case 2:
                    str = b.j(parcel, a);
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
            return new bp(i2, i, str);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public bp[] newArray(int i) {
        return new bp[i];
    }
}
