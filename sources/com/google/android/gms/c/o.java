package com.google.android.gms.c;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class o {
    private static final ExecutorService a = Executors.newFixedThreadPool(2, new aq("GAC_Executor"));

    public static ExecutorService a() {
        return a;
    }
}
