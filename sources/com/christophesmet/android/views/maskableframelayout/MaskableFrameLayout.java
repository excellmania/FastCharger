package com.christophesmet.android.views.maskableframelayout;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import com.christophesmet.android.a.a.a.a;

public class MaskableFrameLayout extends FrameLayout {
    private Handler a;
    private Drawable b = null;
    private Bitmap c = null;
    private Paint d = null;
    private PorterDuffXfermode e = null;

    public MaskableFrameLayout(Context context) {
        super(context);
    }

    public MaskableFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public MaskableFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private Paint a() {
        Paint paint = new Paint(1);
        paint.setXfermode(this.e);
        return paint;
    }

    /* JADX WARNING: Missing block: B:3:0x0007, code skipped:
            a("Mode is " + r0.toString());
     */
    /* JADX WARNING: Missing block: B:4:0x0026, code skipped:
            return new android.graphics.PorterDuffXfermode(r0);
     */
    /* JADX WARNING: Missing block: B:8:0x002d, code skipped:
            r0 = android.graphics.PorterDuff.Mode.CLEAR;
     */
    /* JADX WARNING: Missing block: B:21:0x0067, code skipped:
            r0 = android.graphics.PorterDuff.Mode.SCREEN;
     */
    private android.graphics.PorterDuffXfermode a(int r4) {
        /*
        r3 = this;
        r1 = 11;
        switch(r4) {
            case 0: goto L_0x0027;
            case 1: goto L_0x002d;
            case 2: goto L_0x0049;
            case 3: goto L_0x004c;
            case 4: goto L_0x004f;
            case 5: goto L_0x0052;
            case 6: goto L_0x0055;
            case 7: goto L_0x0058;
            case 8: goto L_0x005b;
            case 9: goto L_0x005e;
            case 10: goto L_0x0061;
            case 11: goto L_0x0067;
            case 12: goto L_0x0083;
            case 13: goto L_0x0086;
            case 14: goto L_0x008a;
            case 15: goto L_0x008e;
            case 16: goto L_0x0092;
            case 17: goto L_0x0096;
            default: goto L_0x0005;
        };
    L_0x0005:
        r0 = android.graphics.PorterDuff.Mode.DST_IN;
    L_0x0007:
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Mode is ";
        r1 = r1.append(r2);
        r2 = r0.toString();
        r1 = r1.append(r2);
        r1 = r1.toString();
        r3.a(r1);
        r1 = new android.graphics.PorterDuffXfermode;
        r1.<init>(r0);
        return r1;
    L_0x0027:
        r0 = android.os.Build.VERSION.SDK_INT;
        if (r0 < r1) goto L_0x0030;
    L_0x002b:
        r0 = android.graphics.PorterDuff.Mode.ADD;
    L_0x002d:
        r0 = android.graphics.PorterDuff.Mode.CLEAR;
        goto L_0x0007;
    L_0x0030:
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r1 = "MODE_ADD is not supported on api lvl ";
        r0 = r0.append(r1);
        r1 = android.os.Build.VERSION.SDK_INT;
        r0 = r0.append(r1);
        r0 = r0.toString();
        r3.a(r0);
        goto L_0x002d;
    L_0x0049:
        r0 = android.graphics.PorterDuff.Mode.DARKEN;
        goto L_0x0007;
    L_0x004c:
        r0 = android.graphics.PorterDuff.Mode.DST;
        goto L_0x0007;
    L_0x004f:
        r0 = android.graphics.PorterDuff.Mode.DST_ATOP;
        goto L_0x0007;
    L_0x0052:
        r0 = android.graphics.PorterDuff.Mode.DST_IN;
        goto L_0x0007;
    L_0x0055:
        r0 = android.graphics.PorterDuff.Mode.DST_OUT;
        goto L_0x0007;
    L_0x0058:
        r0 = android.graphics.PorterDuff.Mode.DST_OVER;
        goto L_0x0007;
    L_0x005b:
        r0 = android.graphics.PorterDuff.Mode.LIGHTEN;
        goto L_0x0007;
    L_0x005e:
        r0 = android.graphics.PorterDuff.Mode.MULTIPLY;
        goto L_0x0007;
    L_0x0061:
        r0 = android.os.Build.VERSION.SDK_INT;
        if (r0 < r1) goto L_0x006a;
    L_0x0065:
        r0 = android.graphics.PorterDuff.Mode.OVERLAY;
    L_0x0067:
        r0 = android.graphics.PorterDuff.Mode.SCREEN;
        goto L_0x0007;
    L_0x006a:
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r1 = "MODE_OVERLAY is not supported on api lvl ";
        r0 = r0.append(r1);
        r1 = android.os.Build.VERSION.SDK_INT;
        r0 = r0.append(r1);
        r0 = r0.toString();
        r3.a(r0);
        goto L_0x0067;
    L_0x0083:
        r0 = android.graphics.PorterDuff.Mode.SRC;
        goto L_0x0007;
    L_0x0086:
        r0 = android.graphics.PorterDuff.Mode.SRC_ATOP;
        goto L_0x0007;
    L_0x008a:
        r0 = android.graphics.PorterDuff.Mode.SRC_IN;
        goto L_0x0007;
    L_0x008e:
        r0 = android.graphics.PorterDuff.Mode.SRC_OUT;
        goto L_0x0007;
    L_0x0092:
        r0 = android.graphics.PorterDuff.Mode.SRC_OVER;
        goto L_0x0007;
    L_0x0096:
        r0 = android.graphics.PorterDuff.Mode.XOR;
        goto L_0x0007;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.christophesmet.android.views.maskableframelayout.MaskableFrameLayout.a(int):android.graphics.PorterDuffXfermode");
    }

    private Drawable a(TypedArray typedArray) {
        return typedArray.getDrawable(a.MaskableLayout_mask);
    }

    private void a(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            a("Width and height must be higher than 0");
        } else if (this.b != null) {
            a(b(this.b));
        }
    }

    private void a(Context context, AttributeSet attributeSet) {
        this.a = new Handler();
        setDrawingCacheEnabled(true);
        if (VERSION.SDK_INT >= 11) {
            setLayerType(1, null);
        }
        this.d = a();
        Theme theme = context.getTheme();
        if (theme != null) {
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, a.MaskableLayout, 0, 0);
            try {
                a(a(obtainStyledAttributes));
                this.e = a(obtainStyledAttributes.getInteger(a.MaskableLayout_porterduffxfermode, 0));
                a(this.b);
                b();
            } finally {
                if (obtainStyledAttributes != null) {
                    obtainStyledAttributes.recycle();
                }
            }
        } else {
            a("Couldn't load theme, mask in xml won't be loaded.");
            b();
        }
    }

    private void a(Bitmap bitmap) {
        if (bitmap != null) {
            if (!(this.c == null || this.c.isRecycled())) {
                this.c.recycle();
            }
            this.c = bitmap;
        }
    }

    private void a(Drawable drawable) {
        if (drawable != null) {
            this.b = drawable;
            if (this.b instanceof AnimationDrawable) {
                this.b.setCallback(this);
                return;
            }
            return;
        }
        a("Are you sure you don't want to provide a mask ?");
    }

    private void a(String str) {
        Log.d("MaskableFrameLayout", str);
    }

    private Bitmap b(Drawable drawable) {
        if (drawable == null) {
            a("No bitmap mask loaded, view will NOT be masked !");
            return null;
        } else if (getMeasuredWidth() <= 0 || getMeasuredHeight() <= 0) {
            a("Can't create a mask with height 0 or width 0. Or the layout has no children and is wrap content");
            return null;
        } else {
            Bitmap createBitmap = Bitmap.createBitmap(getMeasuredWidth(), getMeasuredHeight(), Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            drawable.draw(canvas);
            return createBitmap;
        }
    }

    private void b() {
        final ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.addOnGlobalLayoutListener(new OnGlobalLayoutListener() {
                public void onGlobalLayout() {
                    ViewTreeObserver viewTreeObserver = viewTreeObserver;
                    if (!viewTreeObserver.isAlive()) {
                        viewTreeObserver = MaskableFrameLayout.this.getViewTreeObserver();
                    }
                    if (viewTreeObserver == null) {
                        MaskableFrameLayout.this.a("GlobalLayoutListener not removed as ViewTreeObserver is not valid");
                    } else if (VERSION.SDK_INT >= 16) {
                        viewTreeObserver.removeOnGlobalLayoutListener(this);
                    } else {
                        viewTreeObserver.removeGlobalOnLayoutListener(this);
                    }
                    MaskableFrameLayout.this.a(MaskableFrameLayout.this.b(MaskableFrameLayout.this.b));
                }
            });
        }
    }

    /* Access modifiers changed, original: protected */
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.c == null || this.d == null) {
            a("Mask or paint is null ...");
            return;
        }
        this.d.setXfermode(this.e);
        canvas.drawBitmap(this.c, 0.0f, 0.0f, this.d);
        this.d.setXfermode(null);
    }

    public Drawable getDrawableMask() {
        return this.b;
    }

    public void invalidateDrawable(Drawable drawable) {
        if (drawable != null) {
            a(drawable);
            a(b(drawable));
            invalidate();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a(i, i2);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != null && runnable != null) {
            this.a.postAtTime(runnable, j);
        }
    }

    public void setMask(int i) {
        Resources resources = getResources();
        if (resources != null) {
            setMask(resources.getDrawable(i));
        } else {
            a("Unable to load resources, mask will not be loaded as drawable");
        }
    }

    public void setMask(Drawable drawable) {
        a(drawable);
        a(b(this.b));
        invalidate();
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != null && runnable != null) {
            this.a.removeCallbacks(runnable);
        }
    }
}
