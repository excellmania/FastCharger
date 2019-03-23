package com.google.android.gms.c;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;

public class u {
    private final Object a;

    public boolean a() {
        return this.a instanceof FragmentActivity;
    }

    public Activity b() {
        return (Activity) this.a;
    }

    public FragmentActivity c() {
        return (FragmentActivity) this.a;
    }
}
