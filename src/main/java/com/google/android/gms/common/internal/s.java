package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class s implements Creator<r> {
    static void a(r rVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, rVar.a);
        c.a(parcel, 2, rVar.b);
        c.a(parcel, 3, rVar.c);
        c.a(parcel, 4, rVar.d, false);
        c.a(parcel, 5, rVar.e, false);
        c.a(parcel, 6, rVar.f, i, false);
        c.a(parcel, 7, rVar.g, false);
        c.a(parcel, 8, rVar.h, i, false);
        c.a(parcel, 9, rVar.i);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public r createFromParcel(Parcel parcel) {
        int i = 0;
        Account account = null;
        int b = b.b(parcel);
        long j = 0;
        Bundle bundle = null;
        Scope[] scopeArr = null;
        IBinder iBinder = null;
        String str = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = b.a(parcel);
            switch (b.a(a)) {
                case 1:
                    i3 = b.e(parcel, a);
                    break;
                case 2:
                    i2 = b.e(parcel, a);
                    break;
                case 3:
                    i = b.e(parcel, a);
                    break;
                case 4:
                    str = b.j(parcel, a);
                    break;
                case 5:
                    iBinder = b.k(parcel, a);
                    break;
                case 6:
                    scopeArr = (Scope[]) b.b(parcel, a, Scope.CREATOR);
                    break;
                case 7:
                    bundle = b.l(parcel, a);
                    break;
                case 8:
                    account = (Account) b.a(parcel, a, Account.CREATOR);
                    break;
                case 9:
                    j = b.g(parcel, a);
                    break;
                default:
                    b.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new r(i3, i2, i, str, iBinder, scopeArr, bundle, account, j);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public r[] newArray(int i) {
        return new r[i];
    }
}
