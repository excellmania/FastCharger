package com.google.android.gms.c;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.MainThread;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class v {
    protected final w a;

    protected v(w wVar) {
        this.a = wVar;
    }

    protected static w a(u uVar) {
        return uVar.a() ? ak.a(uVar.c()) : x.a(uVar.b());
    }

    @MainThread
    public void a() {
    }

    @MainThread
    public void a(int i, int i2, Intent intent) {
    }

    @MainThread
    public void a(Bundle bundle) {
    }

    @MainThread
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @MainThread
    public void b() {
    }

    @MainThread
    public void b(Bundle bundle) {
    }

    public Activity e() {
        return this.a.a();
    }

    @MainThread
    public void f() {
    }
}
