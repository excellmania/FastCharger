package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.a;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class di implements Creator<dh> {
    static void a(dh dhVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, dhVar.a);
        c.a(parcel, 2, dhVar.a(), i, false);
        c.a(parcel, 3, dhVar.b(), i, false);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public dh createFromParcel(Parcel parcel) {
        f fVar = null;
        int b = b.b(parcel);
        int i = 0;
        a aVar = null;
        while (parcel.dataPosition() < b) {
            a aVar2;
            int e;
            f fVar2;
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    f fVar3 = fVar;
                    aVar2 = aVar;
                    e = b.e(parcel, a);
                    fVar2 = fVar3;
                    break;
                case 2:
                    e = i;
                    a aVar3 = (a) b.a(parcel, a, a.CREATOR);
                    fVar2 = fVar;
                    aVar2 = aVar3;
                    break;
                case 3:
                    fVar2 = (f) b.a(parcel, a, f.CREATOR);
                    aVar2 = aVar;
                    e = i;
                    break;
                default:
                    b.b(parcel, a);
                    fVar2 = fVar;
                    aVar2 = aVar;
                    e = i;
                    break;
            }
            i = e;
            aVar = aVar2;
            fVar = fVar2;
        }
        if (parcel.dataPosition() == b) {
            return new dh(i, aVar, fVar);
        }
        throw new b.a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public dh[] newArray(int i) {
        return new dh[i];
    }
}
