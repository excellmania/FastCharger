package com.google.android.gms.c;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import java.util.concurrent.Executor;

public class ap implements Executor {
    private final Handler a;

    public ap(Looper looper) {
        this.a = new Handler(looper);
    }

    public void execute(@NonNull Runnable runnable) {
        this.a.post(runnable);
    }
}
