package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.c.bd.a;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.flags.impl.a.b;
import com.google.android.gms.flags.impl.a.c;
import com.google.android.gms.flags.impl.a.d;

@DynamiteApi
public class FlagProviderImpl extends a {
    private boolean a = false;
    private SharedPreferences b;

    public boolean getBooleanFlagValue(String str, boolean z, int i) {
        return !this.a ? z : a.a.a(this.b, str, Boolean.valueOf(z)).booleanValue();
    }

    public int getIntFlagValue(String str, int i, int i2) {
        return !this.a ? i : b.a(this.b, str, Integer.valueOf(i)).intValue();
    }

    public long getLongFlagValue(String str, long j, int i) {
        return !this.a ? j : c.a(this.b, str, Long.valueOf(j)).longValue();
    }

    public String getStringFlagValue(String str, String str2, int i) {
        return !this.a ? str2 : d.a(this.b, str, str2);
    }

    public void init(com.google.android.gms.a.a aVar) {
        Context context = (Context) com.google.android.gms.a.b.a(aVar);
        if (!this.a) {
            try {
                this.b = b.a(context.createPackageContext("com.google.android.gms", 0));
                this.a = true;
            } catch (NameNotFoundException e) {
            }
        }
    }
}
