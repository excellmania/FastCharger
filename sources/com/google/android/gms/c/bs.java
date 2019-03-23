package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.safeparcel.a;

public final class bs extends a implements f {
    public static final Creator<bs> CREATOR = new bt();
    public static final bs a = new bs(Status.a);
    private final int b;
    private final Status c;

    bs(int i, Status status) {
        this.b = i;
        this.c = status;
    }

    public bs(Status status) {
        this(1, status);
    }

    public Status a() {
        return this.c;
    }

    public int b() {
        return this.b;
    }

    public void writeToParcel(Parcel parcel, int i) {
        bt.a(this, parcel, i);
    }
}
