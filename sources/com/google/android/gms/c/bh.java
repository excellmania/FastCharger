package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class bh extends a {
    public static final Creator<bh> CREATOR = new bi();
    public final int a;
    public final String b;
    public final String c;

    bh(int i, String str, String str2) {
        this.a = i;
        this.b = str;
        this.c = str2;
    }

    public bh(String str, String str2) {
        this(1, str, str2);
    }

    public void writeToParcel(Parcel parcel, int i) {
        bi.a(this, parcel, i);
    }
}
