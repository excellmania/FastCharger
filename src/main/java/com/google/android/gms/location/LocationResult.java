package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class LocationResult extends a implements ReflectedParcelable {
    public static final Creator<LocationResult> CREATOR = new aa();
    static final List<Location> a = Collections.emptyList();
    private final int b;
    private final List<Location> c;

    LocationResult(int i, List<Location> list) {
        this.b = i;
        this.c = list;
    }

    @NonNull
    public List<Location> a() {
        return this.c;
    }

    /* Access modifiers changed, original: 0000 */
    public int b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LocationResult)) {
            return false;
        }
        LocationResult locationResult = (LocationResult) obj;
        if (locationResult.c.size() != this.c.size()) {
            return false;
        }
        Iterator it = this.c.iterator();
        for (Location time : locationResult.c) {
            if (((Location) it.next()).getTime() != time.getTime()) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i = 17;
        Iterator it = this.c.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            long time = ((Location) it.next()).getTime();
            i = ((int) (time ^ (time >>> 32))) + (i2 * 31);
        }
    }

    public String toString() {
        String valueOf = String.valueOf(this.c);
        return new StringBuilder(String.valueOf(valueOf).length() + 27).append("LocationResult[locations: ").append(valueOf).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        aa.a(this, parcel, i);
    }
}
