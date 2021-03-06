package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class o implements Creator<Scope> {
    static void a(Scope scope, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, scope.a);
        c.a(parcel, 2, scope.a(), false);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public Scope createFromParcel(Parcel parcel) {
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
            return new Scope(i, str);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public Scope[] newArray(int i) {
        return new Scope[i];
    }
}
