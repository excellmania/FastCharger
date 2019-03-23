package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class ae implements Creator<i> {
    static void a(i iVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, iVar.a(), i, false);
        c.a(parcel, 2, iVar.c(), i, false);
        c.a(parcel, 1000, iVar.b());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public i createFromParcel(Parcel parcel) {
        j jVar = null;
        int b = b.b(parcel);
        int i = 0;
        Status status = null;
        while (parcel.dataPosition() < b) {
            int i2;
            j jVar2;
            Status status2;
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i2 = i;
                    Status status3 = (Status) b.a(parcel, a, Status.CREATOR);
                    jVar2 = jVar;
                    status2 = status3;
                    break;
                case 2:
                    jVar2 = (j) b.a(parcel, a, j.CREATOR);
                    status2 = status;
                    i2 = i;
                    break;
                case 1000:
                    j jVar3 = jVar;
                    status2 = status;
                    i2 = b.e(parcel, a);
                    jVar2 = jVar3;
                    break;
                default:
                    b.b(parcel, a);
                    jVar2 = jVar;
                    status2 = status;
                    i2 = i;
                    break;
            }
            i = i2;
            status = status2;
            jVar = jVar2;
        }
        if (parcel.dataPosition() == b) {
            return new i(i, status, jVar);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public i[] newArray(int i) {
        return new i[i];
    }
}
