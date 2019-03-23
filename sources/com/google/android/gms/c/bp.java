package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.safeparcel.a;

public class bp extends a {
    public static final Creator<bp> CREATOR = new bq();
    public final int a;
    public final String b;
    private final int c;

    bp(int i, int i2, String str) {
        this.c = i;
        this.a = i2;
        this.b = str;
    }

    /* Access modifiers changed, original: 0000 */
    public int a() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof bp)) {
            return false;
        }
        bp bpVar = (bp) obj;
        return bpVar.a == this.a && b.a(bpVar.b, this.b);
    }

    public int hashCode() {
        return this.a;
    }

    public String toString() {
        return String.format("%d:%s", new Object[]{Integer.valueOf(this.a), this.b});
    }

    public void writeToParcel(Parcel parcel, int i) {
        bq.a(this, parcel, i);
    }
}
