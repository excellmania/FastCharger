package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;

public class cb extends a {
    public static final Creator<cb> CREATOR = new cc();
    static final List<bp> a = Collections.emptyList();
    LocationRequest b;
    boolean c;
    List<bp> d;
    @Nullable
    String e;
    boolean f;
    boolean g;
    private final int h;

    cb(int i, LocationRequest locationRequest, boolean z, List<bp> list, @Nullable String str, boolean z2, boolean z3) {
        this.h = i;
        this.b = locationRequest;
        this.c = z;
        this.d = list;
        this.e = str;
        this.f = z2;
        this.g = z3;
    }

    /* Access modifiers changed, original: 0000 */
    public int a() {
        return this.h;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof cb)) {
            return false;
        }
        cb cbVar = (cb) obj;
        return b.a(this.b, cbVar.b) && this.c == cbVar.c && this.f == cbVar.f && b.a(this.d, cbVar.d) && this.g == cbVar.g;
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.b.toString());
        if (this.e != null) {
            stringBuilder.append(" tag=").append(this.e);
        }
        stringBuilder.append(" trigger=").append(this.c);
        stringBuilder.append(" hideAppOps=").append(this.f);
        stringBuilder.append(" clients=").append(this.d);
        stringBuilder.append(" forceCoarseLocation=").append(this.g);
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        cc.a(this, parcel, i);
    }
}
