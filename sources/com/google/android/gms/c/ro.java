package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.List;

public class ro implements Creator<rn> {
    static void a(rn rnVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, rnVar.a);
        c.a(parcel, 2, rnVar.b, false);
        c.a(parcel, 3, rnVar.c, false);
        c.a(parcel, 4, rnVar.d);
        c.a(parcel, 5, rnVar.e);
        c.b(parcel, 6, rnVar.f, false);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public rn createFromParcel(Parcel parcel) {
        List list = null;
        boolean z = false;
        int b = b.b(parcel);
        boolean z2 = false;
        String str = null;
        String str2 = null;
        int i = 0;
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
                case 4:
                    z2 = b.c(parcel, a);
                    break;
                case 5:
                    z = b.c(parcel, a);
                    break;
                case 6:
                    list = b.r(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new rn(i, str2, str, z2, z, list);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public rn[] newArray(int i) {
        return new rn[i];
    }
}
