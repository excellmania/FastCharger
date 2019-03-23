package com.facebook.ads.internal.h.b;

import android.content.Context;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.View.MeasureSpec;

public class c extends e implements com.facebook.ads.internal.h.b.e.a {
    private b c;
    private a d;
    private int e = -1;
    private int f = -1;
    private int g = 0;
    private int h = 0;

    public interface a {
        void a(int i, int i2);
    }

    public c(Context context) {
        super(context);
        a();
    }

    private void a() {
        this.c = new b(getContext(), new d(), new a());
        this.c.setOrientation(0);
        setLayoutManager(this.c);
        setSnapDelegate(this);
    }

    private void a(int i, int i2) {
        if (i != this.e || i2 != this.f) {
            this.e = i;
            this.f = i2;
            if (this.d != null) {
                this.d.a(this.e, this.f);
            }
        }
    }

    private int b(int i) {
        int i2 = this.h * 2;
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - i2;
        int itemCount = getAdapter().getItemCount();
        int i3 = 0;
        int i4 = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        while (i4 > i) {
            i3++;
            if (i3 >= itemCount) {
                return i;
            }
            i4 = (int) (((float) (measuredWidth - (i3 * i2))) / (((float) i3) + 0.333f));
        }
        return i4;
    }

    public int a(int i) {
        int abs = Math.abs(i);
        return abs <= this.b ? 0 : this.g == 0 ? 1 : (abs / this.g) + 1;
    }

    /* Access modifiers changed, original: protected */
    public void a(int i, boolean z) {
        super.a(i, z);
        a(i, 0);
    }

    public int getChildSpacing() {
        return this.h;
    }

    /* Access modifiers changed, original: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int round = Math.round(((float) getMeasuredWidth()) / 1.91f);
        switch (MeasureSpec.getMode(i2)) {
            case Integer.MIN_VALUE:
                round = Math.min(MeasureSpec.getSize(i2), round);
                break;
            case 1073741824:
                round = MeasureSpec.getSize(i2);
                break;
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        round = b(round - paddingTop);
        setMeasuredDimension(getMeasuredWidth(), paddingTop + round);
        setChildWidth(round + (this.h * 2));
    }

    public void setAdapter(Adapter adapter) {
        this.c.a(adapter == null ? -1 : adapter.hashCode());
        super.setAdapter(adapter);
    }

    public void setChildSpacing(int i) {
        this.h = i;
    }

    public void setChildWidth(int i) {
        this.g = i;
        int measuredWidth = getMeasuredWidth();
        this.c.b((((measuredWidth - getPaddingLeft()) - getPaddingRight()) - this.g) / 2);
        this.c.a(((double) this.g) / ((double) measuredWidth));
    }

    public void setCurrentPosition(int i) {
        a(i, false);
    }

    public void setOnPageChangedListener(a aVar) {
        this.d = aVar;
    }
}
