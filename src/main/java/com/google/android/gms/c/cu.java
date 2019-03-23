package com.google.android.gms.c;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.safeparcel.a;

public class cu extends a implements f {
    public static final Creator<cu> CREATOR = new cv();
    final int a;
    private int b;
    private Intent c;

    public cu() {
        this(0, null);
    }

    cu(int i, int i2, Intent intent) {
        this.a = i;
        this.b = i2;
        this.c = intent;
    }

    public cu(int i, Intent intent) {
        this(2, i, intent);
    }

    public Status a() {
        return this.b == 0 ? Status.a : Status.e;
    }

    public int b() {
        return this.b;
    }

    public Intent c() {
        return this.c;
    }

    public void writeToParcel(Parcel parcel, int i) {
        cv.a(this, parcel, i);
    }
}
