package com.google.android.gms.ads.internal.purchase;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class a implements Creator<GInAppPurchaseManagerInfoParcel> {
    static void a(GInAppPurchaseManagerInfoParcel gInAppPurchaseManagerInfoParcel, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, gInAppPurchaseManagerInfoParcel.a);
        c.a(parcel, 3, gInAppPurchaseManagerInfoParcel.b(), false);
        c.a(parcel, 4, gInAppPurchaseManagerInfoParcel.c(), false);
        c.a(parcel, 5, gInAppPurchaseManagerInfoParcel.d(), false);
        c.a(parcel, 6, gInAppPurchaseManagerInfoParcel.a(), false);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public GInAppPurchaseManagerInfoParcel createFromParcel(Parcel parcel) {
        IBinder iBinder = null;
        int b = b.b(parcel);
        int i = 0;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i = b.e(parcel, a);
                    break;
                case 3:
                    iBinder4 = b.k(parcel, a);
                    break;
                case 4:
                    iBinder3 = b.k(parcel, a);
                    break;
                case 5:
                    iBinder2 = b.k(parcel, a);
                    break;
                case 6:
                    iBinder = b.k(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new GInAppPurchaseManagerInfoParcel(i, iBinder4, iBinder3, iBinder2, iBinder);
        }
        throw new com.google.android.gms.common.internal.safeparcel.b.a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public GInAppPurchaseManagerInfoParcel[] newArray(int i) {
        return new GInAppPurchaseManagerInfoParcel[i];
    }
}
