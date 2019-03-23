package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

@pa
public final class tc extends a {
    public static final Creator<tc> CREATOR = new td();
    public final int a;
    public String b;
    public int c;
    public int d;
    public boolean e;

    public tc(int i, int i2, boolean z) {
        this(i, i2, z, false);
    }

    public tc(int i, int i2, boolean z, boolean z2) {
        String valueOf = String.valueOf("afma-sdk-a-v");
        Object obj = z ? "0" : z2 ? "2" : "1";
        valueOf = new StringBuilder((String.valueOf(valueOf).length() + 24) + String.valueOf(obj).length()).append(valueOf).append(i).append(".").append(i2).append(".").append(obj).toString();
        this(1, valueOf, i, i2, z);
    }

    tc(int i, String str, int i2, int i3, boolean z) {
        this.a = i;
        this.b = str;
        this.c = i2;
        this.d = i3;
        this.e = z;
    }

    public static tc a() {
        return new tc(10084208, 10084208, true);
    }

    public void writeToParcel(Parcel parcel, int i) {
        td.a(this, parcel, i);
    }
}
