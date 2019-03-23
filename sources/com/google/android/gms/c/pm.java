package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.List;

public class pm implements Creator<pl> {
    static void a(pl plVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, plVar.a);
        c.a(parcel, 2, plVar.b);
        c.b(parcel, 3, plVar.c, false);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public pl createFromParcel(Parcel parcel) {
        boolean z = false;
        int b = b.b(parcel);
        List list = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                case 2:
                    z = b.c(parcel, a);
                    break;
                case 3:
                    list = b.r(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new pl(i, z, list);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public pl[] newArray(int i) {
        return new pl[i];
    }
}
