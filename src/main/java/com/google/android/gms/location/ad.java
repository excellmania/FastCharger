package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.List;

public class ad implements Creator<h> {
    static void a(h hVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.c(parcel, 1, hVar.b(), false);
        c.a(parcel, 2, hVar.c());
        c.a(parcel, 3, hVar.d());
        c.a(parcel, 5, hVar.e(), i, false);
        c.a(parcel, 1000, hVar.a());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public h createFromParcel(Parcel parcel) {
        ab abVar = null;
        boolean z = false;
        int b = b.b(parcel);
        boolean z2 = false;
        List list = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    list = b.c(parcel, a, LocationRequest.CREATOR);
                    break;
                case 2:
                    z2 = b.c(parcel, a);
                    break;
                case 3:
                    z = b.c(parcel, a);
                    break;
                case 5:
                    abVar = (ab) b.a(parcel, a, ab.CREATOR);
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
            return new h(i, list, z2, z, abVar);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public h[] newArray(int i) {
        return new h[i];
    }
}
