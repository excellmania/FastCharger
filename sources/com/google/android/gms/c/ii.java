package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.i;
import com.google.android.gms.common.internal.safeparcel.a;

@pa
public class ii extends a {
    public static final Creator<ii> CREATOR = new ij();
    public final int a;
    public final boolean b;

    public ii(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    public ii(i iVar) {
        this(1, iVar.a());
    }

    public void writeToParcel(Parcel parcel, int i) {
        ij.a(this, parcel, i);
    }
}
