package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

@pa
public final class qx extends a {
    public static final Creator<qx> CREATOR = new qy();
    public final int a;
    public final gv b;
    public final String c;

    public qx(int i, gv gvVar, String str) {
        this.a = i;
        this.b = gvVar;
        this.c = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        qy.a(this, parcel, i);
    }
}
