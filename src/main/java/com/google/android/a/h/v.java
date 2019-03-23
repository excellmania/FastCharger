package com.google.android.a.h;

import android.annotation.TargetApi;
import android.os.Trace;

public final class v {
    public static void a() {
        if (x.a >= 18) {
            b();
        }
    }

    public static void a(String str) {
        if (x.a >= 18) {
            b(str);
        }
    }

    @TargetApi(18)
    private static void b() {
        Trace.endSection();
    }

    @TargetApi(18)
    private static void b(String str) {
        Trace.beginSection(str);
    }
}
