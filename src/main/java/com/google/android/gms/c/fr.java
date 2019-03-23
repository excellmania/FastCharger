package com.google.android.gms.c;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.PowerManager;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.Window;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.v;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;

@TargetApi(14)
@pa
public class fr implements ActivityLifecycleCallbacks, OnAttachStateChangeListener, OnGlobalLayoutListener, OnScrollChangedListener {
    private static final long c = ((Long) is.aY.c()).longValue();
    @Nullable
    BroadcastReceiver a;
    WeakReference<View> b;
    private final Context d;
    private Application e;
    private final WindowManager f;
    private final PowerManager g;
    private final KeyguardManager h;
    private WeakReference<ViewTreeObserver> i;
    private fs j;
    private su k = new su(c);
    private boolean l = false;
    private int m = -1;
    private HashSet<b> n = new HashSet();
    private DisplayMetrics o;

    public static class a {
        public final long a;
        public final boolean b;
        public final boolean c;
        public final int d;
        public final Rect e;
        public final Rect f;
        public final Rect g;
        public final boolean h;
        public final Rect i;
        public final boolean j;
        public final Rect k;
        public final float l;
        public final boolean m;

        public a(long j, boolean z, boolean z2, int i, Rect rect, Rect rect2, Rect rect3, boolean z3, Rect rect4, boolean z4, Rect rect5, float f, boolean z5) {
            this.a = j;
            this.b = z;
            this.c = z2;
            this.d = i;
            this.e = rect;
            this.f = rect2;
            this.g = rect3;
            this.h = z3;
            this.i = rect4;
            this.j = z4;
            this.k = rect5;
            this.l = f;
            this.m = z5;
        }
    }

    public interface b {
        void a(a aVar);
    }

    public fr(Context context, View view) {
        this.d = context.getApplicationContext();
        this.f = (WindowManager) context.getSystemService("window");
        this.g = (PowerManager) this.d.getSystemService("power");
        this.h = (KeyguardManager) context.getSystemService("keyguard");
        if (this.d instanceof Application) {
            this.e = (Application) this.d;
            this.j = new fs((Application) this.d, this);
        }
        this.o = context.getResources().getDisplayMetrics();
        a(view);
    }

    private void a() {
        v.e();
        sj.a.post(new Runnable() {
            public void run() {
                fr.this.a(3);
            }
        });
    }

    private void a(int i) {
        if (this.n.size() != 0 && this.b != null) {
            View view = (View) this.b.get();
            Object obj = i == 1 ? 1 : null;
            Object obj2 = view == null ? 1 : null;
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            boolean z = false;
            Rect rect3 = new Rect();
            boolean z2 = false;
            Rect rect4 = new Rect();
            Rect rect5 = new Rect();
            rect5.right = this.f.getDefaultDisplay().getWidth();
            rect5.bottom = this.f.getDefaultDisplay().getHeight();
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            if (view != null) {
                z = view.getGlobalVisibleRect(rect2);
                z2 = view.getLocalVisibleRect(rect3);
                view.getHitRect(rect4);
                try {
                    view.getLocationOnScreen(iArr);
                    view.getLocationInWindow(iArr2);
                } catch (Exception e) {
                    sz.b("Failure getting view location.", e);
                }
                rect.left = iArr[0];
                rect.top = iArr[1];
                rect.right = rect.left + view.getWidth();
                rect.bottom = rect.top + view.getHeight();
            }
            int windowVisibility = view != null ? view.getWindowVisibility() : 8;
            if (this.m != -1) {
                windowVisibility = this.m;
            }
            boolean z3 = obj2 == null && v.e().a(view, this.g, this.h) && z && z2 && windowVisibility == 0;
            if (obj != null && !this.k.a() && z3 == this.l) {
                return;
            }
            if (z3 || this.l || i != 1) {
                a aVar = new a(v.k().b(), this.g.isScreenOn(), view != null ? v.g().a(view) : false, view != null ? view.getWindowVisibility() : 8, a(rect5), a(rect), a(rect2), z, a(rect3), z2, a(rect4), this.o.density, z3);
                Iterator it = this.n.iterator();
                while (it.hasNext()) {
                    ((b) it.next()).a(aVar);
                }
                this.l = z3;
            }
        }
    }

    private void a(Activity activity, int i) {
        if (this.b != null) {
            Window window = activity.getWindow();
            if (window != null) {
                View peekDecorView = window.peekDecorView();
                View view = (View) this.b.get();
                if (view != null && peekDecorView != null && view.getRootView() == peekDecorView.getRootView()) {
                    this.m = i;
                }
            }
        }
    }

    private int b(int i) {
        return (int) (((float) i) / this.o.density);
    }

    private void b() {
        if (this.a == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.a = new BroadcastReceiver() {
                public void onReceive(Context context, Intent intent) {
                    fr.this.a(3);
                }
            };
            this.d.registerReceiver(this.a, intentFilter);
        }
    }

    private void b(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.i = new WeakReference(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        b();
        if (this.e != null) {
            try {
                this.e.registerActivityLifecycleCallbacks(this.j);
            } catch (Exception e) {
                sz.b("Error registering activity lifecycle callbacks.", e);
            }
        }
    }

    private void c() {
        if (this.a != null) {
            try {
                this.d.unregisterReceiver(this.a);
            } catch (IllegalStateException e) {
                sz.b("Failed trying to unregister the receiver", e);
            } catch (Exception e2) {
                v.i().a(e2, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.a = null;
        }
    }

    private void c(View view) {
        ViewTreeObserver viewTreeObserver;
        try {
            if (this.i != null) {
                viewTreeObserver = (ViewTreeObserver) this.i.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.i = null;
            }
        } catch (Exception e) {
            sz.b("Error while unregistering listeners from the last ViewTreeObserver.", e);
        }
        try {
            viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnScrollChangedListener(this);
                viewTreeObserver.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
            sz.b("Error while unregistering listeners from the ViewTreeObserver.", e2);
        }
        c();
        if (this.e != null) {
            try {
                this.e.unregisterActivityLifecycleCallbacks(this.j);
            } catch (Exception e22) {
                sz.b("Error registering activity lifecycle callbacks.", e22);
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public Rect a(Rect rect) {
        return new Rect(b(rect.left), b(rect.top), b(rect.right), b(rect.bottom));
    }

    public void a(View view) {
        View view2 = this.b != null ? (View) this.b.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            c(view2);
        }
        this.b = new WeakReference(view);
        if (view != null) {
            if (v.g().a(view)) {
                b(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    public void a(b bVar) {
        this.n.add(bVar);
        a(3);
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        a(activity, 0);
        a(3);
        a();
    }

    public void onActivityDestroyed(Activity activity) {
        a(3);
        a();
    }

    public void onActivityPaused(Activity activity) {
        a(activity, 4);
        a(3);
        a();
    }

    public void onActivityResumed(Activity activity) {
        a(activity, 0);
        a(3);
        a();
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(3);
        a();
    }

    public void onActivityStarted(Activity activity) {
        a(activity, 0);
        a(3);
        a();
    }

    public void onActivityStopped(Activity activity) {
        a(3);
        a();
    }

    public void onGlobalLayout() {
        a(2);
    }

    public void onScrollChanged() {
        a(1);
    }

    public void onViewAttachedToWindow(View view) {
        this.m = -1;
        b(view);
        a(3);
    }

    public void onViewDetachedFromWindow(View view) {
        this.m = -1;
        a(3);
        c(view);
    }
}
