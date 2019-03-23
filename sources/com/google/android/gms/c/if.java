package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class if implements Creator<ie> {
    static void a(ie ieVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, ieVar.a);
        c.a(parcel, 2, ieVar.b);
        c.a(parcel, 3, ieVar.c);
        c.a(parcel, 4, ieVar.d);
        c.a(parcel, 5, ieVar.e);
        c.a(parcel, 6, ieVar.f);
        c.a(parcel, 7, ieVar.g);
        c.a(parcel, 8, ieVar.h);
        c.a(parcel, 9, ieVar.i);
        c.a(parcel, 10, ieVar.j, false);
        c.a(parcel, 11, ieVar.k);
        c.a(parcel, 12, ieVar.l, false);
        c.a(parcel, 13, ieVar.m);
        c.a(parcel, 14, ieVar.n);
        c.a(parcel, 15, ieVar.o, false);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public ie createFromParcel(Parcel parcel) {
        int b = b.b(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        String str = null;
        int i10 = 0;
        String str2 = null;
        int i11 = 0;
        int i12 = 0;
        String str3 = null;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                case 2:
                    i2 = b.e(parcel, a);
                    break;
                case 3:
                    i3 = b.e(parcel, a);
                    break;
                case 4:
                    i4 = b.e(parcel, a);
                    break;
                case 5:
                    i5 = b.e(parcel, a);
                    break;
                case 6:
                    i6 = b.e(parcel, a);
                    break;
                case 7:
                    i7 = b.e(parcel, a);
                    break;
                case 8:
                    i8 = b.e(parcel, a);
                    break;
                case 9:
                    i9 = b.e(parcel, a);
                    break;
                case 10:
                    str = b.j(parcel, a);
                    break;
                case 11:
                    i10 = b.e(parcel, a);
                    break;
                case 12:
                    str2 = b.j(parcel, a);
                    break;
                case 13:
                    i11 = b.e(parcel, a);
                    break;
                case 14:
                    i12 = b.e(parcel, a);
                    break;
                case 15:
                    str3 = b.j(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new ie(i, i2, i3, i4, i5, i6, i7, i8, i9, str, i10, str2, i11, i12, str3);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public ie[] newArray(int i) {
        return new ie[i];
    }
}
