package com.facebook.ads.internal.util;

import android.content.Context;
import android.support.annotation.NonNull;
import com.facebook.ads.internal.util.w.a;

public class o extends w {
    @NonNull
    private final String a;
    @NonNull
    private final String b;

    public o(@NonNull Context context, @NonNull a aVar, @NonNull String str, @NonNull String str2) {
        super(context, new g(), aVar, "");
        this.a = str;
        this.b = str2;
    }

    /* Access modifiers changed, original: protected */
    public String a(b bVar) {
        switch (bVar) {
            case PLAY:
                return this.b;
            case TIME:
                return this.a;
            default:
                return null;
        }
    }
}
