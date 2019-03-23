package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.c.bp;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.List;

public class r implements Creator<q> {
    static void a(q qVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.c(parcel, 1, qVar.b(), false);
        c.a(parcel, 2, qVar.c(), false);
        c.c(parcel, 3, qVar.d(), false);
        c.a(parcel, 1000, qVar.a());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public q createFromParcel(Parcel parcel) {
        List list = null;
        int b = b.b(parcel);
        int i = 0;
        String str = null;
        List list2 = null;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    list2 = b.c(parcel, a, o.CREATOR);
                    break;
                case 2:
                    str = b.j(parcel, a);
                    break;
                case 3:
                    list = b.c(parcel, a, bp.CREATOR);
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
            return new q(i, list2, str, list);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public q[] newArray(int i) {
        return new q[i];
    }
}
