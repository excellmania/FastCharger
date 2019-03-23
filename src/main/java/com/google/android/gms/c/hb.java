package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class hb implements Creator<ha> {
    static void a(ha haVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, haVar.a);
        c.a(parcel, 2, haVar.b, false);
        c.a(parcel, 3, haVar.c);
        c.a(parcel, 4, haVar.d);
        c.a(parcel, 5, haVar.e);
        c.a(parcel, 6, haVar.f);
        c.a(parcel, 7, haVar.g);
        c.a(parcel, 8, haVar.h, i, false);
        c.a(parcel, 9, haVar.i);
        c.a(parcel, 10, haVar.j);
        c.a(parcel, 11, haVar.k);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public ha createFromParcel(Parcel parcel) {
        ha[] haVarArr = null;
        boolean z = false;
        int b = b.b(parcel);
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        int i2 = 0;
        boolean z4 = false;
        int i3 = 0;
        int i4 = 0;
        String str = null;
        int i5 = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i5 = b.e(parcel, a);
                    break;
                case 2:
                    str = b.j(parcel, a);
                    break;
                case 3:
                    i4 = b.e(parcel, a);
                    break;
                case 4:
                    i3 = b.e(parcel, a);
                    break;
                case 5:
                    z4 = b.c(parcel, a);
                    break;
                case 6:
                    i2 = b.e(parcel, a);
                    break;
                case 7:
                    i = b.e(parcel, a);
                    break;
                case 8:
                    haVarArr = (ha[]) b.b(parcel, a, ha.CREATOR);
                    break;
                case 9:
                    z3 = b.c(parcel, a);
                    break;
                case 10:
                    z2 = b.c(parcel, a);
                    break;
                case 11:
                    z = b.c(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new ha(i5, str, i4, i3, z4, i2, i, haVarArr, z3, z2, z);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public ha[] newArray(int i) {
        return new ha[i];
    }
}
