package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Collections;
import java.util.List;

public final class h extends a {
    public static final Creator<h> CREATOR = new ad();
    private final int a;
    private final List<LocationRequest> b;
    private final boolean c;
    private final boolean d;
    private ab e;

    h(int i, List<LocationRequest> list, boolean z, boolean z2, ab abVar) {
        this.a = i;
        this.b = list;
        this.c = z;
        this.d = z2;
        this.e = abVar;
    }

    public int a() {
        return this.a;
    }

    public List<LocationRequest> b() {
        return Collections.unmodifiableList(this.b);
    }

    public boolean c() {
        return this.c;
    }

    public boolean d() {
        return this.d;
    }

    @Nullable
    public ab e() {
        return this.e;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ad.a(this, parcel, i);
    }
}
