package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.WorkSource;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class m implements Creator<l> {
    static void a(l lVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, lVar.a());
        c.a(parcel, 2, lVar.b());
        c.a(parcel, 3, lVar.c(), i, false);
        c.a(parcel, 4, lVar.d(), false);
        c.a(parcel, 5, lVar.e(), false);
        c.a(parcel, 6, lVar.f());
        c.a(parcel, 7, lVar.g(), false);
        c.a(parcel, 1000, lVar.i());
        c.a(parcel, 8, lVar.h());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public l createFromParcel(Parcel parcel) {
        long j = 0;
        boolean z = false;
        String str = null;
        int b = b.b(parcel);
        int[] iArr = null;
        String str2 = null;
        WorkSource workSource = null;
        boolean z2 = false;
        long j2 = 0;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    j2 = b.g(parcel, a);
                    break;
                case 2:
                    z2 = b.c(parcel, a);
                    break;
                case 3:
                    workSource = (WorkSource) b.a(parcel, a, WorkSource.CREATOR);
                    break;
                case 4:
                    str2 = b.j(parcel, a);
                    break;
                case 5:
                    iArr = b.o(parcel, a);
                    break;
                case 6:
                    z = b.c(parcel, a);
                    break;
                case 7:
                    str = b.j(parcel, a);
                    break;
                case 8:
                    j = b.g(parcel, a);
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
            return new l(i, j2, z2, workSource, str2, iArr, z, str, j);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public l[] newArray(int i) {
        return new l[i];
    }
}
