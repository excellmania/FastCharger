package com.google.android.gms.c;

import android.support.annotation.Nullable;
import android.text.TextUtils;

@pa
public class iw {
    @Nullable
    public iu a(@Nullable it itVar) {
        if (itVar == null) {
            throw new IllegalArgumentException("CSI configuration can't be null. ");
        } else if (!itVar.a()) {
            sf.a("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
            return null;
        } else if (itVar.c() == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        } else if (!TextUtils.isEmpty(itVar.d())) {
            return new iu(itVar.c(), itVar.d(), itVar.b(), itVar.e());
        } else {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
    }
}
