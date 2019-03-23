package com.google.android.gms.c;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import java.lang.ref.WeakReference;

@pa
class to extends tp implements OnScrollChangedListener {
    private final WeakReference<OnScrollChangedListener> a;

    public to(View view, OnScrollChangedListener onScrollChangedListener) {
        super(view);
        this.a = new WeakReference(onScrollChangedListener);
    }

    /* Access modifiers changed, original: protected */
    public void a(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnScrollChangedListener(this);
    }

    /* Access modifiers changed, original: protected */
    public void b(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.removeOnScrollChangedListener(this);
    }

    public void onScrollChanged() {
        OnScrollChangedListener onScrollChangedListener = (OnScrollChangedListener) this.a.get();
        if (onScrollChangedListener != null) {
            onScrollChangedListener.onScrollChanged();
        } else {
            b();
        }
    }
}
