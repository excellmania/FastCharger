package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class bi implements Creator<bh> {
    static void a(bh bhVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, bhVar.a);
        c.a(parcel, 2, bhVar.b, false);
        c.a(parcel, 3, bhVar.c, false);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public bh createFromParcel(Parcel parcel) {
        String str = null;
        int b = b.b(parcel);
        int i = 0;
        String str2 = null;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                case 2:
                    str2 = b.j(parcel, a);
                    break;
                case 3:
                    str = b.j(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new bh(i, str2, str);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public bh[] newArray(int i) {
        return new bh[i];
    }
}
