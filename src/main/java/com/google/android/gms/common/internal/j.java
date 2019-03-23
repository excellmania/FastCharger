package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class j implements Creator<i> {
    static void a(i iVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, iVar.a);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public i createFromParcel(Parcel parcel) {
        int b = b.b(parcel);
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new i(i);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public i[] newArray(int i) {
        return new i[i];
    }
}
