package com.facebook.ads.internal.h.b;

import android.content.Context;
import android.graphics.PointF;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.LinearSmoothScroller;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.Recycler;
import android.support.v7.widget.RecyclerView.State;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;

public class b extends LinearLayoutManager {
    private final d a;
    private final a b;
    private final Context c;
    private int[] d;
    private int e = 0;
    private float f = 50.0f;
    private a g;
    private int h;

    private class a extends LinearSmoothScroller {
        public a(Context context) {
            super(context);
        }

        public int calculateDxToMakeVisible(View view, int i) {
            LayoutManager layoutManager = getLayoutManager();
            if (!layoutManager.canScrollHorizontally()) {
                return 0;
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            return calculateDtToFit(layoutManager.getDecoratedLeft(view) - layoutParams.leftMargin, layoutManager.getDecoratedRight(view) + layoutParams.rightMargin, layoutManager.getPaddingLeft(), layoutManager.getWidth() - layoutManager.getPaddingRight(), i) + b.this.e;
        }

        /* Access modifiers changed, original: protected */
        public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return b.this.f / ((float) displayMetrics.densityDpi);
        }

        public PointF computeScrollVectorForPosition(int i) {
            return b.this.computeScrollVectorForPosition(i);
        }

        /* Access modifiers changed, original: protected */
        public int getHorizontalSnapPreference() {
            return -1;
        }
    }

    public b(Context context, d dVar, a aVar) {
        super(context);
        this.c = context;
        this.a = dVar;
        this.b = aVar;
        this.h = -1;
        this.g = new a(this.c);
    }

    public void a(double d) {
        if (d <= 0.0d) {
            d = 1.0d;
        }
        this.f = (float) (50.0d / d);
        this.g = new a(this.c);
    }

    /* Access modifiers changed, original: 0000 */
    public void a(int i) {
        this.h = i;
    }

    public void b(int i) {
        this.e = i;
    }

    public void onMeasure(Recycler recycler, State state, int i, int i2) {
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        if ((mode == 1073741824 && getOrientation() == 1) || (mode2 == 1073741824 && getOrientation() == 0)) {
            super.onMeasure(recycler, state, i, i2);
            return;
        }
        int[] a;
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        if (this.b.b(this.h)) {
            a = this.b.a(this.h);
        } else {
            a = new int[]{0, 0};
            if (state.getItemCount() >= 1) {
                for (int i3 = 0; i3 < 1; i3++) {
                    this.d = this.a.a(recycler, i3, MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
                    if (getOrientation() == 0) {
                        a[0] = a[0] + this.d[0];
                        if (i3 == 0) {
                            a[1] = (this.d[1] + getPaddingTop()) + getPaddingBottom();
                        }
                    } else {
                        a[1] = a[1] + this.d[1];
                        if (i3 == 0) {
                            a[0] = (this.d[0] + getPaddingLeft()) + getPaddingRight();
                        }
                    }
                }
                if (this.h != -1) {
                    this.b.a(this.h, a);
                }
            }
        }
        if (mode == 1073741824) {
            a[0] = size;
        }
        if (mode2 == 1073741824) {
            a[1] = size2;
        }
        setMeasuredDimension(a[0], a[1]);
    }

    public void scrollToPosition(int i) {
        super.scrollToPositionWithOffset(i, this.e);
    }

    public void smoothScrollToPosition(RecyclerView recyclerView, State state, int i) {
        this.g.setTargetPosition(i);
        startSmoothScroll(this.g);
    }
}
