package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.common.internal.safeparcel.a;

public class dh extends a {
    public static final Creator<dh> CREATOR = new di();
    final int a;
    private final com.google.android.gms.common.a b;
    private final f c;

    public dh(int i) {
        this(new com.google.android.gms.common.a(i, null), null);
    }

    dh(int i, com.google.android.gms.common.a aVar, f fVar) {
        this.a = i;
        this.b = aVar;
        this.c = fVar;
    }

    public dh(com.google.android.gms.common.a aVar, f fVar) {
        this(1, aVar, fVar);
    }

    public com.google.android.gms.common.a a() {
        return this.b;
    }

    public f b() {
        return this.c;
    }

    public void writeToParcel(Parcel parcel, int i) {
        di.a(this, parcel, i);
    }
}
