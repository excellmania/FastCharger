package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

@Deprecated
public class i extends a {
    public static final Creator<i> CREATOR = new j();
    final int a;

    i(int i) {
        this.a = i;
    }

    public void writeToParcel(Parcel parcel, int i) {
        j.a(this, parcel, i);
    }
}
