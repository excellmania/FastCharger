package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.safeparcel.a;

public class o extends a {
    public static final Creator<o> CREATOR = new p();
    private final int a;
    private final int b;
    private final int c;

    o(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public int a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.b == oVar.b && this.c == oVar.c;
    }

    public int hashCode() {
        return b.a(Integer.valueOf(this.b), Integer.valueOf(this.c));
    }

    public String toString() {
        int i = this.b;
        return "ActivityTransition [mActivityType=" + i + ", mTransitionType=" + this.c + "]";
    }

    public void writeToParcel(Parcel parcel, int i) {
        p.a(this, parcel, i);
    }
}
