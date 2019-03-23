package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.safeparcel.a;

public final class i extends a implements f {
    public static final Creator<i> CREATOR = new ae();
    private final int a;
    private final Status b;
    private final j c;

    i(int i, Status status, j jVar) {
        this.a = i;
        this.b = status;
        this.c = jVar;
    }

    public Status a() {
        return this.b;
    }

    public int b() {
        return this.a;
    }

    public j c() {
        return this.c;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ae.a(this, parcel, i);
    }
}
