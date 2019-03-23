package com.facebook.ads.internal.h.b;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

public class e extends RecyclerView implements OnTouchListener {
    protected int a = 0;
    protected int b;
    private int c = 0;
    private boolean d = true;
    private boolean e = false;
    private LinearLayoutManager f;
    private a g;

    public interface a {
        int a(int i);
    }

    public e(Context context) {
        super(context);
        a(context);
    }

    private int a(int i) {
        int i2 = this.c - i;
        int a = this.g.a(i2);
        return i2 > this.b ? a(this.a, a) : i2 < (-this.b) ? b(this.a, a) : this.a;
    }

    private int a(int i, int i2) {
        return Math.min(i + i2, getItemCount() - 1);
    }

    private void a(Context context) {
        setOnTouchListener(this);
        this.b = ((int) context.getResources().getDisplayMetrics().density) * 10;
    }

    private int b(int i, int i2) {
        return Math.max(i - i2, 0);
    }

    private int getItemCount() {
        return getAdapter() == null ? 0 : getAdapter().getItemCount();
    }

    /* Access modifiers changed, original: protected */
    public void a(int i, boolean z) {
        if (getAdapter() != null) {
            this.a = i;
            if (z) {
                smoothScrollToPosition(i);
            } else {
                scrollToPosition(i);
            }
        }
    }

    public int getCurrentPosition() {
        return this.a;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        int rawX = (int) motionEvent.getRawX();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 6 || actionMasked == 3 || actionMasked == 4) {
            if (this.e) {
                a(a(rawX), true);
            }
            this.d = true;
            this.e = false;
            return true;
        } else if (actionMasked != 0 && actionMasked != 5 && (!this.d || actionMasked != 2)) {
            return false;
        } else {
            this.c = rawX;
            if (this.d) {
                this.d = false;
            }
            this.e = true;
            return false;
        }
    }

    public void setLayoutManager(LayoutManager layoutManager) {
        if (layoutManager instanceof LinearLayoutManager) {
            super.setLayoutManager(layoutManager);
            this.f = (LinearLayoutManager) layoutManager;
            return;
        }
        throw new IllegalArgumentException("SnapRecyclerView only supports LinearLayoutManager");
    }

    public void setSnapDelegate(a aVar) {
        this.g = aVar;
    }
}
