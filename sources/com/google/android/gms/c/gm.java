package com.google.android.gms.c;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class gm implements Creator<gl> {
    static void a(gl glVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, glVar.a);
        c.a(parcel, 2, glVar.b, false);
        c.a(parcel, 3, glVar.c);
        c.a(parcel, 4, glVar.d, false);
        c.a(parcel, 5, glVar.e, false);
        c.a(parcel, 6, glVar.f, false);
        c.a(parcel, 7, glVar.g, false);
        c.a(parcel, 8, glVar.h);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public gl createFromParcel(Parcel parcel) {
        boolean z = false;
        Bundle bundle = null;
        int b = b.b(parcel);
        long j = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                case 2:
                    str4 = b.j(parcel, a);
                    break;
                case 3:
                    j = b.g(parcel, a);
                    break;
                case 4:
                    str3 = b.j(parcel, a);
                    break;
                case 5:
                    str2 = b.j(parcel, a);
                    break;
                case 6:
                    str = b.j(parcel, a);
                    break;
                case 7:
                    bundle = b.l(parcel, a);
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
            return new gl(i, str4, j, str3, str2, str, bundle, z);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public gl[] newArray(int i) {
        return new gl[i];
    }
}
