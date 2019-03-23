package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class us implements Creator<ur> {
    static void a(ur urVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, urVar.a);
        c.a(parcel, 2, urVar.b, i, false);
        c.a(parcel, 3, urVar.c, false);
        c.a(parcel, 4, urVar.d, false);
        c.a(parcel, 5, urVar.e, false);
        c.a(parcel, 6, urVar.f, false);
        c.a(parcel, 7, urVar.g, false);
        c.a(parcel, 8, urVar.h);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public ur createFromParcel(Parcel parcel) {
        byte[][] bArr = null;
        int b = b.b(parcel);
        int i = 0;
        boolean z = true;
        int[] iArr = null;
        String[] strArr = null;
        int[] iArr2 = null;
        byte[] bArr2 = null;
        co coVar = null;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                case 2:
                    coVar = (co) b.a(parcel, a, co.CREATOR);
                    break;
                case 3:
                    bArr2 = b.m(parcel, a);
                    break;
                case 4:
                    iArr2 = b.o(parcel, a);
                    break;
                case 5:
                    strArr = b.p(parcel, a);
                    break;
                case 6:
                    iArr = b.o(parcel, a);
                    break;
                case 7:
                    bArr = b.n(parcel, a);
                    break;
                case 8:
                    z = b.c(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new ur(i, coVar, bArr2, iArr2, strArr, iArr, bArr, z);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public ur[] newArray(int i) {
        return new ur[i];
    }
}
