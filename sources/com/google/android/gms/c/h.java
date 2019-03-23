package com.google.android.gms.c;

import android.support.annotation.NonNull;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.c;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class h extends GoogleApiClient {
    private final UnsupportedOperationException a;

    public h(String str) {
        this.a = new UnsupportedOperationException(str);
    }

    public void a(@NonNull c cVar) {
        throw this.a;
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        throw this.a;
    }

    public void b(@NonNull c cVar) {
        throw this.a;
    }

    public void connect() {
        throw this.a;
    }

    public void disconnect() {
        throw this.a;
    }
}
