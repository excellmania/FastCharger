package com.facebook.ads.internal.i;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.ads.internal.h;
import com.facebook.ads.internal.util.y;
import java.util.HashMap;
import java.util.Map;

public class a {
    private static final String a = a.class.getSimpleName();
    private int b;
    private int c;
    private final View d;
    private final int e;
    private final a f;
    private final Handler g;
    private final Runnable h;
    private final boolean i;
    private b j;
    private Map<String, Integer> k;

    public static abstract class a {
        public abstract void a();

        public void b() {
        }
    }

    private static final class b extends y<a> {
        public b(a aVar) {
            super(aVar);
        }

        public void run() {
            int i = 0;
            a aVar = (a) a();
            if (aVar != null) {
                View a = aVar.d;
                a b = aVar.f;
                if (a != null && b != null) {
                    b a2 = a.a(a, aVar.e);
                    boolean a3 = a2.a();
                    int i2 = (aVar.j == null || !aVar.j.a()) ? 0 : 1;
                    aVar.j = a2;
                    String valueOf = String.valueOf(a2.b());
                    synchronized (aVar) {
                        if (aVar.k.containsKey(valueOf)) {
                            i = ((Integer) aVar.k.get(valueOf)).intValue();
                        }
                        aVar.k.put(valueOf, Integer.valueOf(i + 1));
                    }
                    if (a3 && i2 == 0) {
                        b.a();
                        if (!aVar.i) {
                            return;
                        }
                    } else if (!(a3 || i2 == 0)) {
                        b.b();
                    }
                    aVar.g.postDelayed(aVar.h, (long) aVar.c);
                }
            }
        }
    }

    public a(View view, int i, a aVar) {
        this(view, i, false, aVar);
    }

    public a(View view, int i, boolean z, a aVar) {
        this.b = 0;
        this.c = 1000;
        this.g = new Handler();
        this.h = new b(this);
        this.j = new b(c.UNKNOWN);
        this.k = new HashMap();
        this.d = view;
        this.e = i;
        this.f = aVar;
        this.i = z;
    }

    public static b a(View view, int i) {
        if (view == null) {
            a(view, false, "adView is null.");
            return new b(c.AD_IS_NULL);
        } else if (view.getParent() == null) {
            a(view, false, "adView has no parent.");
            return new b(c.INVALID_PARENT);
        } else if (view.getWindowVisibility() != 0) {
            a(view, false, "adView window is not set to VISIBLE.");
            return new b(c.INVALID_WINDOW);
        } else if (view.getVisibility() != 0) {
            a(view, false, "adView is not set to VISIBLE.");
            return new b(c.AD_IS_NOT_VISIBLE);
        } else if (view.getMeasuredWidth() <= 0 || view.getMeasuredHeight() <= 0) {
            a(view, false, "adView has invisible dimensions (w=" + view.getMeasuredWidth() + ", h=" + view.getMeasuredHeight());
            return new b(c.INVALID_DIMENSIONS);
        } else if (VERSION.SDK_INT < 11 || view.getAlpha() >= 0.9f) {
            int width = view.getWidth();
            int height = view.getHeight();
            int[] iArr = new int[2];
            try {
                view.getLocationOnScreen(iArr);
                Context context = view.getContext();
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                Rect rect = new Rect(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
                float f = 0.0f;
                if (rect.intersect(iArr[0], iArr[1], iArr[0] + width, iArr[1] + height)) {
                    f = (((float) (rect.width() * rect.height())) * 1.0f) / ((float) (width * height));
                }
                if (h.a(context)) {
                    rect = new Rect();
                    view.getGlobalVisibleRect(rect);
                    if (a(rect, view)) {
                        a(view, false, "adView is obstructed by another view.");
                        return new b(c.AD_IS_OBSTRUCTED, f);
                    }
                }
                if (iArr[0] < 0 || displayMetrics.widthPixels - iArr[0] < width) {
                    a(view, false, "adView is not fully on screen horizontally.");
                    return new b(c.AD_OFFSCREEN_HORIZONTALLY, f);
                }
                width = (int) ((((double) height) * (100.0d - ((double) i))) / 100.0d);
                if (iArr[1] < 0 && Math.abs(iArr[1]) > width) {
                    a(view, false, "adView is not visible from the top.");
                    return new b(c.AD_OFFSCREEN_TOP, f);
                } else if ((height + iArr[1]) - displayMetrics.heightPixels > width) {
                    a(view, false, "adView is not visible from the bottom.");
                    return new b(c.AD_OFFSCREEN_BOTTOM, f);
                } else if (com.facebook.ads.internal.util.h.a(context)) {
                    a(view, true, "adView is visible.");
                    return new b(c.IS_VIEWABLE, f);
                } else {
                    a(view, false, "Screen is not turned on.");
                    return new b(c.SCREEN_OFF, f);
                }
            } catch (NullPointerException e) {
                a(view, false, "Cannot get location on screen.");
                return new b(c.INVALID_DIMENSIONS);
            }
        } else {
            a(view, false, "adView is too transparent.");
            return new b(c.AD_IS_TRANSPARENT);
        }
    }

    private static void a(View view, boolean z, String str) {
    }

    private static boolean a(Rect rect, View view) {
        if (!(view.getParent() instanceof ViewGroup)) {
            return false;
        }
        View view2 = (ViewGroup) view.getParent();
        int indexOfChild = view2.indexOfChild(view);
        while (true) {
            indexOfChild++;
            if (indexOfChild >= view2.getChildCount()) {
                return a(rect, view2);
            }
            if (b(rect, view2.getChildAt(indexOfChild))) {
                return true;
            }
        }
    }

    private static boolean b(Rect rect, View view) {
        if (!view.isShown()) {
            return false;
        }
        if (VERSION.SDK_INT >= 11 && view.getAlpha() <= 0.0f) {
            return false;
        }
        if (c(rect, view)) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            if (b(rect, viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    private static boolean c(Rect rect, View view) {
        if (view instanceof ViewGroup) {
            if (view.getBackground() == null) {
                return false;
            }
            if (VERSION.SDK_INT >= 19 && view.getBackground().getAlpha() <= 0) {
                return false;
            }
        }
        Rect rect2 = new Rect();
        view.getGlobalVisibleRect(rect2);
        return rect.left < rect2.right && rect.right > rect2.left && rect.top < rect2.bottom && rect.bottom > rect2.top;
    }

    public void a() {
        this.g.postDelayed(this.h, (long) this.b);
    }

    public void a(int i) {
        this.b = i;
    }

    public void b() {
        this.g.removeCallbacks(this.h);
    }

    public void b(int i) {
        this.c = i;
    }

    public b c() {
        return this.j;
    }

    public Map<String, Integer> d() {
        return this.k;
    }
}
