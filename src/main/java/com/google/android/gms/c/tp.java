package com.google.android.gms.c;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;

@pa
abstract class tp {
    private final WeakReference<View> a;

    public tp(View view) {
        this.a = new WeakReference(view);
    }

    public final void a() {
        ViewTreeObserver c = c();
        if (c != null) {
            a(c);
        }
    }

    public abstract void a(ViewTreeObserver viewTreeObserver);

    public final void b() {
        ViewTreeObserver c = c();
        if (c != null) {
            b(c);
        }
    }

    public abstract void b(ViewTreeObserver viewTreeObserver);

    /* Access modifiers changed, original: protected */
    public ViewTreeObserver c() {
        View view = (View) this.a.get();
        if (view == null) {
            return null;
        }
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        return (viewTreeObserver == null || !viewTreeObserver.isAlive()) ? null : viewTreeObserver;
    }
}
