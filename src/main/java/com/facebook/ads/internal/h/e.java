package com.facebook.ads.internal.h;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class e extends LinearLayout {
    private Bitmap a;
    private Bitmap b;
    private ImageView c;
    private ImageView d;
    private ImageView e;
    private Bitmap f;
    private Bitmap g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private double n;
    private double o;

    public e(Context context) {
        super(context);
        d();
    }

    private int a(double d) {
        return (int) Math.round(((double) getWidth()) / d);
    }

    private void a() {
        if (getHeight() > 0 && getWidth() > 0) {
            this.o = ((double) getMeasuredWidth()) / ((double) getMeasuredHeight());
            this.n = ((double) this.a.getWidth()) / ((double) this.a.getHeight());
            if (this.n > this.o) {
                b();
            } else {
                c();
            }
        }
    }

    private int b(double d) {
        return (int) Math.round(((double) getHeight()) * d);
    }

    private void b() {
        this.j = a(this.n);
        this.k = getWidth();
        this.h = (int) Math.ceil((double) (((float) (getHeight() - this.j)) / 2.0f));
        if (this.b != null) {
            Matrix matrix = new Matrix();
            matrix.preScale(1.0f, -1.0f);
            this.i = (int) Math.floor((double) (((float) (getHeight() - this.j)) / 2.0f));
            float height = ((float) this.a.getHeight()) / ((float) this.j);
            int min = Math.min(Math.round(((float) this.h) * height), this.b.getHeight());
            if (min > 0) {
                this.f = Bitmap.createBitmap(this.b, 0, 0, this.b.getWidth(), min, matrix, true);
                this.c.setImageBitmap(this.f);
            }
            min = Math.min(Math.round(((float) this.i) * height), this.b.getHeight());
            if (min > 0) {
                this.g = Bitmap.createBitmap(this.b, 0, this.b.getHeight() - min, this.b.getWidth(), min, matrix, true);
                this.e.setImageBitmap(this.g);
            }
        }
    }

    private void c() {
        this.k = b(this.n);
        this.j = getHeight();
        this.l = (int) Math.ceil((double) (((float) (getWidth() - this.k)) / 2.0f));
        if (this.b != null) {
            Matrix matrix = new Matrix();
            matrix.preScale(-1.0f, 1.0f);
            this.m = (int) Math.floor((double) (((float) (getWidth() - this.k)) / 2.0f));
            float width = ((float) this.a.getWidth()) / ((float) this.k);
            int min = Math.min(Math.round(((float) this.l) * width), this.b.getWidth());
            if (min > 0) {
                this.f = Bitmap.createBitmap(this.b, 0, 0, min, this.b.getHeight(), matrix, true);
                this.c.setImageBitmap(this.f);
            }
            int min2 = Math.min(Math.round(((float) this.m) * width), this.b.getWidth());
            if (min2 > 0) {
                this.g = Bitmap.createBitmap(this.b, this.b.getWidth() - min2, 0, min2, this.b.getHeight(), matrix, true);
                this.e.setImageBitmap(this.g);
            }
        }
    }

    private void d() {
        getContext().getResources().getDisplayMetrics();
        setOrientation(1);
        this.c = new ImageView(getContext());
        this.c.setScaleType(ScaleType.FIT_XY);
        addView(this.c);
        this.d = new ImageView(getContext());
        this.d.setLayoutParams(new LayoutParams(-1, -1));
        this.d.setScaleType(ScaleType.FIT_XY);
        addView(this.d);
        this.e = new ImageView(getContext());
        this.e.setScaleType(ScaleType.FIT_XY);
        addView(this.e);
    }

    private boolean e() {
        return ((this.h + this.j) + this.i == getMeasuredHeight() && (this.l + this.k) + this.m == getMeasuredWidth()) ? false : true;
    }

    public void a(Bitmap bitmap, Bitmap bitmap2) {
        if (bitmap2 == null) {
            this.c.setImageDrawable(null);
            this.e.setImageDrawable(null);
        }
        if (bitmap == null) {
            this.d.setImageDrawable(null);
            return;
        }
        this.d.setImageBitmap(Bitmap.createBitmap(bitmap));
        this.a = bitmap;
        this.b = bitmap2;
        a();
    }

    /* Access modifiers changed, original: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.a == null) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        a(this.n);
        b(this.n);
        if (this.f == null || e()) {
            a();
        }
        if (this.n > this.o) {
            this.c.layout(i, i2, i3, this.h);
            this.d.layout(i, this.h + i2, i3, this.h + this.j);
            this.e.layout(i, (this.h + i2) + this.j, i3, i4);
            return;
        }
        this.c.layout(i, i2, this.l, i4);
        this.d.layout(this.l + i, i2, this.l + this.k, i4);
        this.e.layout((this.l + i) + this.k, i2, i3, i4);
    }
}
