package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.c.cf;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.List;

public class t implements Creator<d> {
    static void a(d dVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.c(parcel, 1, dVar.b(), false);
        c.a(parcel, 2, dVar.c());
        c.a(parcel, 3, dVar.d(), false);
        c.a(parcel, 1000, dVar.a());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public d createFromParcel(Parcel parcel) {
        int i = 0;
        int b = b.b(parcel);
        List list = null;
        String str = "";
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    list = b.c(parcel, a, cf.CREATOR);
                    break;
                case 2:
                    i = b.e(parcel, a);
                    break;
                case 3:
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
            return new d(i2, list, i, str);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public d[] newArray(int i) {
        return new d[i];
    }
}
