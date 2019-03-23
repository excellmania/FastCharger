package com.google.android.gms.c;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;

public class db extends a {
    public static final Creator<db> CREATOR = new dc();
    final int a;
    private final Account b;
    private final Scope[] c;
    private final String d;

    db(int i, Account account, Scope[] scopeArr, String str) {
        this.a = i;
        this.b = account;
        this.c = scopeArr;
        this.d = str;
    }

    public Account a() {
        return this.b;
    }

    public Scope[] b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public void writeToParcel(Parcel parcel, int i) {
        dc.a(this, parcel, i);
    }
}
