package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.c.cf;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.List;

public class d extends a {
    public static final Creator<d> CREATOR = new t();
    private final int a;
    private final List<cf> b;
    private final int c;
    private final String d;

    d(int i, List<cf> list, int i2, String str) {
        this.a = i;
        this.b = list;
        this.c = i2;
        this.d = str;
    }

    public int a() {
        return this.a;
    }

    public List<cf> b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }

    public void writeToParcel(Parcel parcel, int i) {
        t.a(this, parcel, i);
    }
}
