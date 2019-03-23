package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.List;

public class cx extends a {
    public static final Creator<cx> CREATOR = new cy();
    final int a;
    final boolean b;
    final List<Scope> c;

    cx(int i, boolean z, List<Scope> list) {
        this.a = i;
        this.b = z;
        this.c = list;
    }

    public void writeToParcel(Parcel parcel, int i) {
        cy.a(this, parcel, i);
    }
}
