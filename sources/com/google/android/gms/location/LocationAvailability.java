package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.safeparcel.a;

public final class LocationAvailability extends a implements ReflectedParcelable {
    public static final Creator<LocationAvailability> CREATOR = new y();
    int a;
    int b;
    long c;
    int d;
    private final int e;

    LocationAvailability(int i, int i2, int i3, int i4, long j) {
        this.e = i;
        this.d = i2;
        this.a = i3;
        this.b = i4;
        this.c = j;
    }

    public boolean a() {
        return this.d < 1000;
    }

    /* Access modifiers changed, original: 0000 */
    public int b() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LocationAvailability)) {
            return false;
        }
        LocationAvailability locationAvailability = (LocationAvailability) obj;
        return this.d == locationAvailability.d && this.a == locationAvailability.a && this.b == locationAvailability.b && this.c == locationAvailability.c;
    }

    public int hashCode() {
        return b.a(Integer.valueOf(this.d), Integer.valueOf(this.a), Integer.valueOf(this.b), Long.valueOf(this.c));
    }

    public String toString() {
        return "LocationAvailability[isLocationAvailable: " + a() + "]";
    }

    public void writeToParcel(Parcel parcel, int i) {
        y.a(this, parcel, i);
    }
}
