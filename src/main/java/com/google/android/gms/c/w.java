package com.google.android.gms.c;

import android.app.Activity;
import android.content.Intent;
import android.support.annotation.NonNull;

public interface w {
    Activity a();

    <T extends v> T a(String str, Class<T> cls);

    void a(String str, @NonNull v vVar);

    void startActivityForResult(Intent intent, int i);
}
