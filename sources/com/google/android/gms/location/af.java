package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class af implements Creator<j> {
    static void a(j jVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, jVar.b());
        c.a(parcel, 2, jVar.d());
        c.a(parcel, 3, jVar.f());
        c.a(parcel, 4, jVar.c());
        c.a(parcel, 5, jVar.e());
        c.a(parcel, 6, jVar.g());
        c.a(parcel, 1000, jVar.a());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public j createFromParcel(Parcel parcel) {
        boolean z = false;
        int b = b.b(parcel);
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    z6 = b.c(parcel, a);
                    break;
                case 2:
                    z5 = b.c(parcel, a);
                    break;
                case 3:
                    z4 = b.c(parcel, a);
                    break;
                case 4:
                    z3 = b.c(parcel, a);
                    break;
                case 5:
                    z2 = b.c(parcel, a);
                    break;
                case 6:
                    z = b.c(parcel, a);
                    break;
                case 1000:
                    i = b.e(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new j(i, z6, z5, z4, z3, z2, z);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public j[] newArray(int i) {
        return new j[i];
    }
}
