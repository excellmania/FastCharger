package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.List;

public class n implements Creator<ActivityRecognitionResult> {
    static void a(ActivityRecognitionResult activityRecognitionResult, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.c(parcel, 1, activityRecognitionResult.a, false);
        c.a(parcel, 2, activityRecognitionResult.b);
        c.a(parcel, 3, activityRecognitionResult.c);
        c.a(parcel, 4, activityRecognitionResult.d);
        c.a(parcel, 5, activityRecognitionResult.e, false);
        c.a(parcel, 1000, activityRecognitionResult.a());
        c.a(parcel, a);
    }

    /* renamed from: a */
    public ActivityRecognitionResult createFromParcel(Parcel parcel) {
        long j = 0;
        Bundle bundle = null;
        int i = 0;
        int b = b.b(parcel);
        long j2 = 0;
        List list = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    list = b.c(parcel, a, a.CREATOR);
                    break;
                case 2:
                    j2 = b.g(parcel, a);
                    break;
                case 3:
                    j = b.g(parcel, a);
                    break;
                case 4:
                    i = b.e(parcel, a);
                    break;
                case 5:
                    bundle = b.l(parcel, a);
                    break;
                case 1000:
                    i2 = b.e(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new ActivityRecognitionResult(i2, list, j2, j, i, bundle);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public ActivityRecognitionResult[] newArray(int i) {
        return new ActivityRecognitionResult[i];
    }
}
