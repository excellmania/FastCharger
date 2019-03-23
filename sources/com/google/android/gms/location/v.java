package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.List;

public class v implements Creator<u> {
    static void a(u uVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, uVar.b(), false);
        c.a(parcel, 1000, uVar.a());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public u createFromParcel(Parcel parcel) {
        int b = b.b(parcel);
        int i = 0;
        List list = null;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    list = b.q(parcel, a);
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
            return new u(i, list);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public u[] newArray(int i) {
        return new u[i];
    }
}
