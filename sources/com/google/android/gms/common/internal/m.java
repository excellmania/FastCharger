package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class m implements Creator<l> {
    static void a(l lVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, lVar.a);
        c.a(parcel, 2, lVar.b, false);
        c.a(parcel, 3, lVar.c, i, false);
        c.a(parcel, 4, lVar.d, false);
        c.a(parcel, 5, lVar.e, false);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public l createFromParcel(Parcel parcel) {
        Integer num = null;
        int b = b.b(parcel);
        int i = 0;
        Integer num2 = null;
        Scope[] scopeArr = null;
        IBinder iBinder = null;
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
                    scopeArr = (Scope[]) b.b(parcel, a, Scope.CREATOR);
                    break;
                case 4:
                    num2 = b.f(parcel, a);
                    break;
                case 5:
                    num = b.f(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new l(i, iBinder, scopeArr, num2, num);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public l[] newArray(int i) {
        return new l[i];
    }
}
