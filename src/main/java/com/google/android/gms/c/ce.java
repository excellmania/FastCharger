package com.google.android.gms.c;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class ce implements Creator<cd> {
    static void a(cd cdVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, cdVar.a);
        c.a(parcel, 2, cdVar.b, i, false);
        c.a(parcel, 3, cdVar.b(), false);
        c.a(parcel, 4, cdVar.d, i, false);
        c.a(parcel, 5, cdVar.c(), false);
        c.a(parcel, 6, cdVar.d(), false);
        c.a(parcel, 1000, cdVar.a());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public cd createFromParcel(Parcel parcel) {
        IBinder iBinder = null;
        int b = b.b(parcel);
        int i = 0;
        int i2 = 1;
        IBinder iBinder2 = null;
        PendingIntent pendingIntent = null;
        IBinder iBinder3 = null;
        cb cbVar = null;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i2 = b.e(parcel, a);
                    break;
                case 2:
                    cbVar = (cb) b.a(parcel, a, cb.CREATOR);
                    break;
                case 3:
                    iBinder3 = b.k(parcel, a);
                    break;
                case 4:
                    pendingIntent = (PendingIntent) b.a(parcel, a, PendingIntent.CREATOR);
                    break;
                case 5:
                    iBinder2 = b.k(parcel, a);
                    break;
                case 6:
                    iBinder = b.k(parcel, a);
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
            return new cd(i, i2, cbVar, iBinder3, pendingIntent, iBinder2, iBinder);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public cd[] newArray(int i) {
        return new cd[i];
    }
}
