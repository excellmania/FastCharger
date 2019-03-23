package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class bk implements Creator<bj> {
    static void a(bj bjVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, bjVar.a);
        c.a(parcel, 2, bjVar.a(), false);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public bj createFromParcel(Parcel parcel) {
        int b = b.b(parcel);
        int i = 0;
        byte[] bArr = null;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                case 2:
                    bArr = b.m(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new bj(i, bArr);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public bj[] newArray(int i) {
        return new bj[i];
    }
}
