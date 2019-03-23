package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

@pa
public class pu extends a {
    public static final Creator<pu> CREATOR = new pv();
    final int a;
    String b;

    pu(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public pu(String str) {
        this.a = 1;
        this.b = str;
    }

    public String a() {
        return this.b;
    }

    public void writeToParcel(Parcel parcel, int i) {
        pv.a(this, parcel, i);
    }
}
