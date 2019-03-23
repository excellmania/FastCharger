package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.b.c;
import com.google.android.gms.common.internal.safeparcel.a;

@pa
public class js extends a {
    public static final Creator<js> CREATOR = new jt();
    public final int a;
    public final boolean b;
    public final int c;
    public final boolean d;
    public final int e;
    @Nullable
    public final ii f;

    public js(int i, boolean z, int i2, boolean z2, int i3, ii iiVar) {
        this.a = i;
        this.b = z;
        this.c = i2;
        this.d = z2;
        this.e = i3;
        this.f = iiVar;
    }

    public js(c cVar) {
        this(3, cVar.a(), cVar.b(), cVar.c(), cVar.d(), cVar.e() != null ? new ii(cVar.e()) : null);
    }

    public void writeToParcel(Parcel parcel, int i) {
        jt.a(this, parcel, i);
    }
}
