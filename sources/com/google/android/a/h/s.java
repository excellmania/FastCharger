package com.google.android.a.h;

import android.os.HandlerThread;
import android.os.Process;

public final class s extends HandlerThread {
    private final int a;

    public s(String str, int i) {
        super(str);
        this.a = i;
    }

    public void run() {
        Process.setThreadPriority(this.a);
        super.run();
    }
}
