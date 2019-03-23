package com.google.android.gms.c;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.b.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class dc implements Creator<db> {
    static void a(db dbVar, Parcel parcel, int i) {
        int a = c.a(parcel);
        c.a(parcel, 1, dbVar.a);
        c.a(parcel, 2, dbVar.a(), i, false);
        c.a(parcel, 3, dbVar.b(), i, false);
        c.a(parcel, 4, dbVar.c(), false);
        c.a(parcel, a);
    }

    /* renamed from: a */
    public db createFromParcel(Parcel parcel) {
        String str = null;
        int b = b.b(parcel);
        int i = 0;
        Scope[] scopeArr = null;
        Account account = null;
        while (parcel.dataPosition() < b) {
            Scope[] scopeArr2;
            Account account2;
            int e;
            String str2;
            int a = b.a(parcel);
            String str3;
            switch (b.a(a)) {
                case 1:
                    str3 = str;
                    scopeArr2 = scopeArr;
                    account2 = account;
                    e = b.e(parcel, a);
                    str2 = str3;
                    break;
                case 2:
                    e = i;
                    Scope[] scopeArr3 = scopeArr;
                    account2 = (Account) b.a(parcel, a, Account.CREATOR);
                    str2 = str;
                    scopeArr2 = scopeArr3;
                    break;
                case 3:
                    account2 = account;
                    e = i;
                    str3 = str;
                    scopeArr2 = (Scope[]) b.b(parcel, a, Scope.CREATOR);
                    str2 = str3;
                    break;
                case 4:
                    str2 = b.j(parcel, a);
                    scopeArr2 = scopeArr;
                    account2 = account;
                    e = i;
                    break;
                default:
                    b.b(parcel, a);
                    str2 = str;
                    scopeArr2 = scopeArr;
                    account2 = account;
                    e = i;
                    break;
            }
            i = e;
            account = account2;
            scopeArr = scopeArr2;
            str = str2;
        }
        if (parcel.dataPosition() == b) {
            return new db(i, account, scopeArr, str);
        }
        throw new a("Overread allowed size end=" + b, parcel);
    }

    /* renamed from: a */
    public db[] newArray(int i) {
        return new db[i];
    }
}
