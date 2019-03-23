package com.google.android.gms.c;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.c;

@pa
public class ig extends ha {
    public ig(ha haVar) {
        super(haVar.a, haVar.b, haVar.c, haVar.d, haVar.e, haVar.f, haVar.g, haVar.h, haVar.i, haVar.j, haVar.k);
    }

    public void writeToParcel(Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, this.a);
        c.a(parcel, 2, this.b, false);
        c.a(parcel, 3, this.c);
        c.a(parcel, 6, this.f);
        c.a(parcel, a);
    }
}
