package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class pv implements Creator<pu> {
    static void a(pu puVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, puVar.a);
        c.a(parcel, 2, puVar.b, false);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public pu createFromParcel(Parcel parcel) {
        int b = b.b(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                case 2:
                    str = b.j(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new pu(i, str);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public pu[] newArray(int i) {
        return new pu[i];
    }
}
