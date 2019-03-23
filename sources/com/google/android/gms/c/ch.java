package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class ch implements Creator<cf> {
    static void a(cf cfVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, cfVar.f(), false);
        c.a(parcel, 2, cfVar.g());
        c.a(parcel, 3, cfVar.b());
        c.a(parcel, 4, cfVar.c());
        c.a(parcel, 5, cfVar.d());
        c.a(parcel, 6, cfVar.e());
        c.a(parcel, 7, cfVar.h());
        c.a(parcel, 1000, cfVar.a());
        c.a(parcel, 8, cfVar.i());
        c.a(parcel, 9, cfVar.j());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public cf createFromParcel(Parcel parcel) {
        int b = b.b(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        short s = (short) 0;
        double d = 0.0d;
        double d2 = 0.0d;
        float f = 0.0f;
        long j = 0;
        int i3 = 0;
        int i4 = -1;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    str = b.j(parcel, a);
                    break;
                case 2:
                    j = b.g(parcel, a);
                    break;
                case 3:
                    s = b.d(parcel, a);
                    break;
                case 4:
                    d = b.i(parcel, a);
                    break;
                case 5:
                    d2 = b.i(parcel, a);
                    break;
                case 6:
                    f = b.h(parcel, a);
                    break;
                case 7:
                    i2 = b.e(parcel, a);
                    break;
                case 8:
                    i3 = b.e(parcel, a);
                    break;
                case 9:
                    i4 = b.e(parcel, a);
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
            return new cf(i, str, i2, s, d, d2, f, j, i3, i4);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public cf[] newArray(int i) {
        return new cf[i];
    }
}
