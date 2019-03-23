package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.safeparcel.a;

public final class LocationRequest extends a implements ReflectedParcelable {
    public static final Creator<LocationRequest> CREATOR = new z();
    int a;
    long b;
    long c;
    boolean d;
    long e;
    int f;
    float g;
    long h;
    private final int i;

    public LocationRequest() {
        this.i = 1;
        this.a = 102;
        this.b = 3600000;
        this.c = 600000;
        this.d = false;
        this.e = Long.MAX_VALUE;
        this.f = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.g = 0.0f;
        this.h = 0;
    }

    LocationRequest(int i, int i2, long j, long j2, boolean z, long j3, int i3, float f, long j4) {
        this.i = i;
        this.a = i2;
        this.b = j;
        this.c = j2;
        this.d = z;
        this.e = j3;
        this.f = i3;
        this.g = f;
        this.h = j4;
    }

    public static String a(int i) {
        switch (i) {
            case 100:
                return "PRIORITY_HIGH_ACCURACY";
            case 102:
                return "PRIORITY_BALANCED_POWER_ACCURACY";
            case 104:
                return "PRIORITY_LOW_POWER";
            case 105:
                return "PRIORITY_NO_POWER";
            default:
                return "???";
        }
    }

    /* Access modifiers changed, original: 0000 */
    public int a() {
        return this.i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocationRequest)) {
            return false;
        }
        LocationRequest locationRequest = (LocationRequest) obj;
        return this.a == locationRequest.a && this.b == locationRequest.b && this.c == locationRequest.c && this.d == locationRequest.d && this.e == locationRequest.e && this.f == locationRequest.f && this.g == locationRequest.g;
    }

    public int hashCode() {
        return b.a(Integer.valueOf(this.a), Long.valueOf(this.b), Long.valueOf(this.c), Boolean.valueOf(this.d), Long.valueOf(this.e), Integer.valueOf(this.f), Float.valueOf(this.g));
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Request[").append(a(this.a));
        if (this.a != 105) {
            stringBuilder.append(" requested=");
            stringBuilder.append(this.b).append("ms");
        }
        stringBuilder.append(" fastest=");
        stringBuilder.append(this.c).append("ms");
        if (this.h > this.b) {
            stringBuilder.append(" maxWait=");
            stringBuilder.append(this.h).append("ms");
        }
        if (this.e != Long.MAX_VALUE) {
            long elapsedRealtime = this.e - SystemClock.elapsedRealtime();
            stringBuilder.append(" expireIn=");
            stringBuilder.append(elapsedRealtime).append("ms");
        }
        if (this.f != ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
            stringBuilder.append(" num=").append(this.f);
        }
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        z.a(this, parcel, i);
    }
}
