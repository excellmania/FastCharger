package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.List;

public class ah implements Creator<ag> {
    static void a(ag agVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.b(parcel, 1, agVar.b(), false);
        c.a(parcel, 2, agVar.c(), i, false);
        c.a(parcel, 3, agVar.d(), false);
        c.a(parcel, 1000, agVar.a());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public ag createFromParcel(Parcel parcel) {
        PendingIntent pendingIntent = null;
        int b = b.b(parcel);
        int i = 0;
        String str = "";
        List list = null;
        while (parcel.dataPosition() < b) {
            int i2;
            String str2;
            PendingIntent pendingIntent2;
            List list2;
            int a = b.a(parcel);
            String str3;
            switch (b.a(a)) {
                case 1:
                    i2 = i;
                    PendingIntent pendingIntent3 = pendingIntent;
                    Object list22 = b.r(parcel, a);
                    str2 = str;
                    pendingIntent2 = pendingIntent3;
                    break;
                case 2:
                    list22 = list;
                    i2 = i;
                    str3 = str;
                    pendingIntent2 = (PendingIntent) b.a(parcel, a, PendingIntent.CREATOR);
                    str2 = str3;
                    break;
                case 3:
                    str2 = b.j(parcel, a);
                    pendingIntent2 = pendingIntent;
                    list22 = list;
                    i2 = i;
                    break;
                case 1000:
                    str3 = str;
                    pendingIntent2 = pendingIntent;
                    list22 = list;
                    i2 = b.e(parcel, a);
                    str2 = str3;
                    break;
                default:
                    b.b(parcel, a);
                    str2 = str;
                    pendingIntent2 = pendingIntent;
                    list22 = list;
                    i2 = i;
                    break;
            }
            i = i2;
            list = list22;
            pendingIntent = pendingIntent2;
            str = str2;
        }
        if (parcel.dataPosition() == b) {
            return new ag(i, list, pendingIntent, str);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public ag[] newArray(int i) {
        return new ag[i];
    }
}
