package com.google.android.gms.c;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class cv implements Creator<cu> {
    static void a(cu cuVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, cuVar.a);
        c.a(parcel, 2, cuVar.b());
        c.a(parcel, 3, cuVar.c(), i, false);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public cu createFromParcel(Parcel parcel) {
        int i = 0;
        int b = b.b(parcel);
        Intent intent = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i2 = b.e(parcel, a);
                    break;
                case 2:
                    i = b.e(parcel, a);
                    break;
                case 3:
                    intent = (Intent) b.a(parcel, a, Intent.CREATOR);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new cu(i2, i, intent);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public cu[] newArray(int i) {
        return new cu[i];
    }
}
