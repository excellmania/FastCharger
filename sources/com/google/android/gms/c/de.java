package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.safeparcel.a;

public class de extends a {
    public static final Creator<de> CREATOR = new dg();
    final int a;
    final d b;

    de(int i, d dVar) {
        this.a = i;
        this.b = dVar;
    }

    public de(d dVar) {
        this(1, dVar);
    }

    public d a() {
        return this.b;
    }

    public void writeToParcel(Parcel parcel, int i) {
        dg.a(this, parcel, i);
    }
}
