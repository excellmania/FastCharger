package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class g implements Creator<f> {
    static void a(f fVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, fVar.a);
        c.a(parcel, 2, fVar.b, false);
        c.a(parcel, 3, fVar.b(), i, false);
        c.a(parcel, 4, fVar.c());
        c.a(parcel, 5, fVar.d());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public f createFromParcel(Parcel parcel) {
        a aVar = null;
        boolean z = false;
        int b = b.b(parcel);
        boolean z2 = false;
        IBinder iBinder = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                case 2:
                    iBinder = b.k(parcel, a);
                    break;
                case 3:
                    aVar = (a) b.a(parcel, a, a.CREATOR);
                    break;
                case 4:
                    z2 = b.c(parcel, a);
                    break;
                case 5:
                    z = b.c(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new f(i, iBinder, aVar, z2, z);
        }
        throw new b.a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public f[] newArray(int i) {
        return new f[i];
    }
}
