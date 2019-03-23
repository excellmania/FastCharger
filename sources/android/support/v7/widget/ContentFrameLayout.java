package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;

public class ContentFrameLayout extends FrameLayout {
    private OnAttachListener mAttachListener;
    private final Rect mDecorPadding;
    private TypedValue mFixedHeightMajor;
    private TypedValue mFixedHeightMinor;
    private TypedValue mFixedWidthMajor;
    private TypedValue mFixedWidthMinor;
    private TypedValue mMinWidthMajor;
    private TypedValue mMinWidthMinor;

    public interface OnAttachListener {
        void onAttachedFromWindow();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDecorPadding = new Rect();
    }

    public void dispatchFitSystemWindows(Rect rect) {
        fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.mFixedHeightMajor == null) {
            this.mFixedHeightMajor = new TypedValue();
        }
        return this.mFixedHeightMajor;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.mFixedHeightMinor == null) {
            this.mFixedHeightMinor = new TypedValue();
        }
        return this.mFixedHeightMinor;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.mFixedWidthMajor == null) {
            this.mFixedWidthMajor = new TypedValue();
        }
        return this.mFixedWidthMajor;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.mFixedWidthMinor == null) {
            this.mFixedWidthMinor = new TypedValue();
        }
        return this.mFixedWidthMinor;
    }

    public TypedValue getMinWidthMajor() {
        if (this.mMinWidthMajor == null) {
            this.mMinWidthMajor = new TypedValue();
        }
        return this.mMinWidthMajor;
    }

    public TypedValue getMinWidthMinor() {
        if (this.mMinWidthMinor == null) {
            this.mMinWidthMinor = new TypedValue();
        }
        return this.mMinWidthMinor;
    }

    /* Access modifiers changed, original: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mAttachListener != null) {
            this.mAttachListener.onAttachedFromWindow();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mAttachListener != null) {
            this.mAttachListener.onDetachedFromWindow();
        }
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: Removed duplicated region for block: B:62:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00b4  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0052  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00e5  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x008e  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00e8  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x009a  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00a1  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00ad  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00b4  */
    /* JADX WARNING: Removed duplicated region for block: B:62:? A:{SYNTHETIC, RETURN} */
    public void onMeasure(int r13, int r14) {
        /*
        r12 = this;
        r11 = 5;
        r1 = 1;
        r10 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r9 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r2 = 0;
        r0 = r12.getContext();
        r0 = r0.getResources();
        r5 = r0.getDisplayMetrics();
        r0 = r5.widthPixels;
        r3 = r5.heightPixels;
        if (r0 >= r3) goto L_0x00b8;
    L_0x0019:
        r0 = r1;
    L_0x001a:
        r6 = android.view.View.MeasureSpec.getMode(r13);
        r7 = android.view.View.MeasureSpec.getMode(r14);
        if (r6 != r10) goto L_0x0100;
    L_0x0024:
        if (r0 == 0) goto L_0x00bb;
    L_0x0026:
        r3 = r12.mFixedWidthMinor;
    L_0x0028:
        if (r3 == 0) goto L_0x0100;
    L_0x002a:
        r4 = r3.type;
        if (r4 == 0) goto L_0x0100;
    L_0x002e:
        r4 = r3.type;
        if (r4 != r11) goto L_0x00bf;
    L_0x0032:
        r3 = r3.getDimension(r5);
        r3 = (int) r3;
    L_0x0037:
        if (r3 <= 0) goto L_0x0100;
    L_0x0039:
        r4 = r12.mDecorPadding;
        r4 = r4.left;
        r8 = r12.mDecorPadding;
        r8 = r8.right;
        r4 = r4 + r8;
        r3 = r3 - r4;
        r4 = android.view.View.MeasureSpec.getSize(r13);
        r3 = java.lang.Math.min(r3, r4);
        r13 = android.view.View.MeasureSpec.makeMeasureSpec(r3, r9);
        r4 = r1;
    L_0x0050:
        if (r7 != r10) goto L_0x007d;
    L_0x0052:
        if (r0 == 0) goto L_0x00d1;
    L_0x0054:
        r3 = r12.mFixedHeightMajor;
    L_0x0056:
        if (r3 == 0) goto L_0x007d;
    L_0x0058:
        r7 = r3.type;
        if (r7 == 0) goto L_0x007d;
    L_0x005c:
        r7 = r3.type;
        if (r7 != r11) goto L_0x00d4;
    L_0x0060:
        r3 = r3.getDimension(r5);
        r3 = (int) r3;
    L_0x0065:
        if (r3 <= 0) goto L_0x007d;
    L_0x0067:
        r7 = r12.mDecorPadding;
        r7 = r7.top;
        r8 = r12.mDecorPadding;
        r8 = r8.bottom;
        r7 = r7 + r8;
        r3 = r3 - r7;
        r7 = android.view.View.MeasureSpec.getSize(r14);
        r3 = java.lang.Math.min(r3, r7);
        r14 = android.view.View.MeasureSpec.makeMeasureSpec(r3, r9);
    L_0x007d:
        super.onMeasure(r13, r14);
        r7 = r12.getMeasuredWidth();
        r3 = android.view.View.MeasureSpec.makeMeasureSpec(r7, r9);
        if (r4 != 0) goto L_0x00f9;
    L_0x008a:
        if (r6 != r10) goto L_0x00f9;
    L_0x008c:
        if (r0 == 0) goto L_0x00e5;
    L_0x008e:
        r0 = r12.mMinWidthMinor;
    L_0x0090:
        if (r0 == 0) goto L_0x00f9;
    L_0x0092:
        r4 = r0.type;
        if (r4 == 0) goto L_0x00f9;
    L_0x0096:
        r4 = r0.type;
        if (r4 != r11) goto L_0x00e8;
    L_0x009a:
        r0 = r0.getDimension(r5);
        r0 = (int) r0;
    L_0x009f:
        if (r0 <= 0) goto L_0x00ab;
    L_0x00a1:
        r4 = r12.mDecorPadding;
        r4 = r4.left;
        r5 = r12.mDecorPadding;
        r5 = r5.right;
        r4 = r4 + r5;
        r0 = r0 - r4;
    L_0x00ab:
        if (r7 >= r0) goto L_0x00f9;
    L_0x00ad:
        r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r9);
        r2 = r1;
    L_0x00b2:
        if (r2 == 0) goto L_0x00b7;
    L_0x00b4:
        super.onMeasure(r0, r14);
    L_0x00b7:
        return;
    L_0x00b8:
        r0 = r2;
        goto L_0x001a;
    L_0x00bb:
        r3 = r12.mFixedWidthMajor;
        goto L_0x0028;
    L_0x00bf:
        r4 = r3.type;
        r8 = 6;
        if (r4 != r8) goto L_0x0103;
    L_0x00c4:
        r4 = r5.widthPixels;
        r4 = (float) r4;
        r8 = r5.widthPixels;
        r8 = (float) r8;
        r3 = r3.getFraction(r4, r8);
        r3 = (int) r3;
        goto L_0x0037;
    L_0x00d1:
        r3 = r12.mFixedHeightMinor;
        goto L_0x0056;
    L_0x00d4:
        r7 = r3.type;
        r8 = 6;
        if (r7 != r8) goto L_0x00fd;
    L_0x00d9:
        r7 = r5.heightPixels;
        r7 = (float) r7;
        r8 = r5.heightPixels;
        r8 = (float) r8;
        r3 = r3.getFraction(r7, r8);
        r3 = (int) r3;
        goto L_0x0065;
    L_0x00e5:
        r0 = r12.mMinWidthMajor;
        goto L_0x0090;
    L_0x00e8:
        r4 = r0.type;
        r6 = 6;
        if (r4 != r6) goto L_0x00fb;
    L_0x00ed:
        r4 = r5.widthPixels;
        r4 = (float) r4;
        r5 = r5.widthPixels;
        r5 = (float) r5;
        r0 = r0.getFraction(r4, r5);
        r0 = (int) r0;
        goto L_0x009f;
    L_0x00f9:
        r0 = r3;
        goto L_0x00b2;
    L_0x00fb:
        r0 = r2;
        goto L_0x009f;
    L_0x00fd:
        r3 = r2;
        goto L_0x0065;
    L_0x0100:
        r4 = r2;
        goto L_0x0050;
    L_0x0103:
        r3 = r2;
        goto L_0x0037;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(OnAttachListener onAttachListener) {
        this.mAttachListener = onAttachListener;
    }

    public void setDecorPadding(int i, int i2, int i3, int i4) {
        this.mDecorPadding.set(i, i2, i3, i4);
        if (ViewCompat.isLaidOut(this)) {
            requestLayout();
        }
    }
}
