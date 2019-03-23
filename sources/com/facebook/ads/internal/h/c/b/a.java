package com.facebook.ads.internal.h.c.b;

import android.support.annotation.NonNull;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.h.m;

public abstract class a extends RelativeLayout {
    static final /* synthetic */ boolean a = (!a.class.desiredAssertionStatus());
    private m b;

    /* Access modifiers changed, original: protected */
    public void a(@NonNull m mVar) {
    }

    public void b(m mVar) {
        this.b = mVar;
        a(mVar);
    }

    /* Access modifiers changed, original: protected */
    @NonNull
    public m getVideoView() {
        if (a || this.b != null) {
            return this.b;
        }
        throw new AssertionError();
    }
}
