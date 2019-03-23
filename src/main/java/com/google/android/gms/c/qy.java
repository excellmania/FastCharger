package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class qy implements Creator<qx> {
    static void a(qx qxVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, qxVar.a);
        c.a(parcel, 2, qxVar.b, i, false);
        c.a(parcel, 3, qxVar.c, false);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public qx createFromParcel(Parcel parcel) {
        String str = null;
        int b = b.b(parcel);
        int i = 0;
        gv gvVar = null;
        while (parcel.dataPosition() < b) {
            gv gvVar2;
            int e;
            String str2;
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    String str3 = str;
                    gvVar2 = gvVar;
                    e = b.e(parcel, a);
                    str2 = str3;
                    break;
                case 2:
                    e = i;
                    gv gvVar3 = (gv) b.a(parcel, a, gv.CREATOR);
                    str2 = str;
                    gvVar2 = gvVar3;
                    break;
                case 3:
                    str2 = b.j(parcel, a);
                    gvVar2 = gvVar;
                    e = i;
                    break;
                default:
                    b.b(parcel, a);
                    str2 = str;
                    gvVar2 = gvVar;
                    e = i;
                    break;
            }
            i = e;
            gvVar = gvVar2;
            str = str2;
        }
        if (parcel.dataPosition() == b) {
            return new qx(i, gvVar, str);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public qx[] newArray(int i) {
        return new qx[i];
    }
}
