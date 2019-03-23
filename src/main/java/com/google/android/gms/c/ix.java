package com.google.android.gms.c;

import android.support.annotation.Nullable;

@pa
public class ix {
    @Nullable
    public static iz a(@Nullable jb jbVar) {
        return jbVar == null ? null : jbVar.a();
    }

    @Nullable
    public static iz a(@Nullable jb jbVar, long j) {
        return jbVar == null ? null : jbVar.a(j);
    }

    public static boolean a(@Nullable jb jbVar, @Nullable iz izVar, long j, String... strArr) {
        return (jbVar == null || izVar == null) ? false : jbVar.a(izVar, j, strArr);
    }

    public static boolean a(@Nullable jb jbVar, @Nullable iz izVar, String... strArr) {
        return (jbVar == null || izVar == null) ? false : jbVar.a(izVar, strArr);
    }
}
