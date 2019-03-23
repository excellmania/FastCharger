package com.google.android.gms.c;

import android.os.Bundle;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.f;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public interface t {

    public interface a {
        void a(int i, boolean z);

        void a(Bundle bundle);

        void a(com.google.android.gms.common.a aVar);
    }

    <A extends c, T extends com.google.android.gms.c.vf.a<? extends f, A>> T a(@NonNull T t);

    void a();

    void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    void b();

    boolean c();

    void d();
}
