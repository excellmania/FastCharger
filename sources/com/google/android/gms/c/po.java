package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class po implements Creator<pn> {
    static void a(pn pnVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, pnVar.a);
        c.a(parcel, 2, pnVar.b);
        c.a(parcel, 3, pnVar.c);
        c.a(parcel, 4, pnVar.d);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public pn createFromParcel(Parcel parcel) {
        boolean z = false;
        int b = b.b(parcel);
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                case 2:
                    z3 = b.c(parcel, a);
                    break;
                case 3:
                    z2 = b.c(parcel, a);
                    break;
                case 4:
                    z = b.c(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new pn(i, z3, z2, z);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public pn[] newArray(int i) {
        return new pn[i];
    }
}
