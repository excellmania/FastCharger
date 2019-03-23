package com.google.android.gms.c;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.google.android.gms.ads.internal.v;
import java.lang.ref.WeakReference;

@pa
class tn extends tp implements OnGlobalLayoutListener {
    private final WeakReference<OnGlobalLayoutListener> a;

    public tn(View view, OnGlobalLayoutListener onGlobalLayoutListener) {
        super(view);
        this.a = new WeakReference(onGlobalLayoutListener);
    }

    /* Access modifiers changed, original: protected */
    public void a(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnGlobalLayoutListener(this);
    }

    /* Access modifiers changed, original: protected */
    public void b(ViewTreeObserver viewTreeObserver) {
        v.g().a(viewTreeObserver, (OnGlobalLayoutListener) this);
    }

    public void onGlobalLayout() {
        OnGlobalLayoutListener onGlobalLayoutListener = (OnGlobalLayoutListener) this.a.get();
        if (onGlobalLayoutListener != null) {
            onGlobalLayoutListener.onGlobalLayout();
        } else {
            b();
        }
    }
}
