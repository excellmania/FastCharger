package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class LinearLayoutCompat extends ViewGroup {
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    public static class LayoutParams extends MarginLayoutParams {
        public int gravity;
        public float weight;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = -1;
            this.weight = 0.0f;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2);
            this.gravity = -1;
            this.weight = f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LinearLayoutCompat_Layout);
            this.weight = obtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.gravity = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
            this.weight = layoutParams.weight;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = -1;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface DividerMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OrientationMode {
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.LinearLayoutCompat, i, 0);
        int i2 = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        i2 = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i2 >= 0) {
            setGravity(i2);
        }
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.mWeightSum = obtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = obtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(obtainStyledAttributes.getDrawable(R.styleable.LinearLayoutCompat_divider));
        this.mShowDividers = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = obtainStyledAttributes.getDimensionPixelSize(R.styleable.LinearLayoutCompat_dividerPadding, 0);
        obtainStyledAttributes.recycle();
    }

    private void forceUniformHeight(int i, int i2) {
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.height == -1) {
                    int i4 = layoutParams.width;
                    layoutParams.width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i2, 0, makeMeasureSpec, 0);
                    layoutParams.width = i4;
                }
            }
        }
    }

    private void forceUniformWidth(int i, int i2) {
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i4 = layoutParams.height;
                    layoutParams.height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, makeMeasureSpec, 0, i2, 0);
                    layoutParams.height = i4;
                }
            }
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i + i3, i2 + i4);
    }

    /* Access modifiers changed, original: protected */
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* Access modifiers changed, original: 0000 */
    public void drawDividersHorizontal(Canvas canvas) {
        LayoutParams layoutParams;
        int virtualChildCount = getVirtualChildCount();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int i = 0;
        while (i < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i);
            if (!(virtualChildAt == null || virtualChildAt.getVisibility() == 8 || !hasDividerBeforeChildAt(i))) {
                layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                drawVerticalDivider(canvas, isLayoutRtl ? layoutParams.rightMargin + virtualChildAt.getRight() : (virtualChildAt.getLeft() - layoutParams.leftMargin) - this.mDividerWidth);
            }
            i++;
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            int paddingLeft;
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                paddingLeft = isLayoutRtl ? getPaddingLeft() : (getWidth() - getPaddingRight()) - this.mDividerWidth;
            } else {
                layoutParams = (LayoutParams) virtualChildAt2.getLayoutParams();
                paddingLeft = isLayoutRtl ? (virtualChildAt2.getLeft() - layoutParams.leftMargin) - this.mDividerWidth : layoutParams.rightMargin + virtualChildAt2.getRight();
            }
            drawVerticalDivider(canvas, paddingLeft);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void drawDividersVertical(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        int i = 0;
        while (i < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i);
            if (!(virtualChildAt == null || virtualChildAt.getVisibility() == 8 || !hasDividerBeforeChildAt(i))) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LayoutParams) virtualChildAt.getLayoutParams()).topMargin) - this.mDividerHeight);
            }
            i++;
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            int height;
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                height = (getHeight() - getPaddingBottom()) - this.mDividerHeight;
            } else {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt2.getLayoutParams();
                height = layoutParams.bottomMargin + virtualChildAt2.getBottom();
            }
            drawHorizontalDivider(canvas, height);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    /* Access modifiers changed, original: 0000 */
    public void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    /* Access modifiers changed, original: protected */
    public LayoutParams generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new LayoutParams(-2, -2) : this.mOrientation == 1 ? new LayoutParams(-1, -2) : null;
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* Access modifiers changed, original: protected */
    public LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public int getBaseline() {
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        if (getChildCount() <= this.mBaselineAlignedChildIndex) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(this.mBaselineAlignedChildIndex);
        int baseline = childAt.getBaseline();
        if (baseline != -1) {
            int i;
            int i2 = this.mBaselineChildTop;
            if (this.mOrientation == 1) {
                i = this.mGravity & 112;
                if (i != 48) {
                    switch (i) {
                        case 16:
                            i = i2 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2);
                            break;
                        case 80:
                            i = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
                            break;
                    }
                }
            }
            i = i2;
            return (((LayoutParams) childAt.getLayoutParams()).topMargin + i) + baseline;
        } else if (this.mBaselineAlignedChildIndex == 0) {
            return -1;
        } else {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    /* Access modifiers changed, original: 0000 */
    public int getChildrenSkipCount(View view, int i) {
        return 0;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    /* Access modifiers changed, original: 0000 */
    public int getLocationOffset(View view) {
        return 0;
    }

    /* Access modifiers changed, original: 0000 */
    public int getNextLocationOffset(View view) {
        return 0;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    /* Access modifiers changed, original: 0000 */
    public View getVirtualChildAt(int i) {
        return getChildAt(i);
    }

    /* Access modifiers changed, original: 0000 */
    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    /* Access modifiers changed, original: protected */
    public boolean hasDividerBeforeChildAt(int i) {
        if (i == 0) {
            return (this.mShowDividers & 1) != 0;
        } else {
            if (i == getChildCount()) {
                return (this.mShowDividers & 4) != 0;
            } else {
                if ((this.mShowDividers & 2) == 0) {
                    return false;
                }
                for (int i2 = i - 1; i2 >= 0; i2--) {
                    if (getChildAt(i2).getVisibility() != 8) {
                        return true;
                    }
                }
                return false;
            }
        }
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    /* Access modifiers changed, original: 0000 */
    public void layoutHorizontal(int i, int i2, int i3, int i4) {
        int paddingLeft;
        int i5;
        int i6;
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop = getPaddingTop();
        int i7 = i4 - i2;
        int paddingBottom = i7 - getPaddingBottom();
        int paddingBottom2 = (i7 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        i7 = this.mGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int i8 = this.mGravity & 112;
        boolean z = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        switch (GravityCompat.getAbsoluteGravity(i7, ViewCompat.getLayoutDirection(this))) {
            case 1:
                paddingLeft = getPaddingLeft() + (((i3 - i) - this.mTotalLength) / 2);
                break;
            case 5:
                paddingLeft = ((getPaddingLeft() + i3) - i) - this.mTotalLength;
                break;
            default:
                paddingLeft = getPaddingLeft();
                break;
        }
        if (isLayoutRtl) {
            i5 = -1;
            i6 = virtualChildCount - 1;
        } else {
            i5 = 1;
            i6 = 0;
        }
        int i9 = 0;
        while (i9 < virtualChildCount) {
            int i10 = i6 + (i5 * i9);
            View virtualChildAt = getVirtualChildAt(i10);
            if (virtualChildAt == null) {
                paddingLeft += measureNullChild(i10);
                i7 = i9;
            } else if (virtualChildAt.getVisibility() != 8) {
                int i11;
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                i7 = (!z || layoutParams.height == -1) ? -1 : virtualChildAt.getBaseline();
                int i12 = layoutParams.gravity;
                if (i12 < 0) {
                    i12 = i8;
                }
                switch (i12 & 112) {
                    case 16:
                        i11 = ((((paddingBottom2 - measuredHeight) / 2) + paddingTop) + layoutParams.topMargin) - layoutParams.bottomMargin;
                        break;
                    case 48:
                        i11 = paddingTop + layoutParams.topMargin;
                        if (i7 != -1) {
                            i11 += iArr[1] - i7;
                            break;
                        }
                        break;
                    case 80:
                        i11 = (paddingBottom - measuredHeight) - layoutParams.bottomMargin;
                        if (i7 != -1) {
                            i11 -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - i7);
                            break;
                        }
                        break;
                    default:
                        i11 = paddingTop;
                        break;
                }
                paddingLeft = (hasDividerBeforeChildAt(i10) ? this.mDividerWidth + paddingLeft : paddingLeft) + layoutParams.leftMargin;
                setChildFrame(virtualChildAt, paddingLeft + getLocationOffset(virtualChildAt), i11, measuredWidth, measuredHeight);
                paddingLeft += (layoutParams.rightMargin + measuredWidth) + getNextLocationOffset(virtualChildAt);
                i7 = getChildrenSkipCount(virtualChildAt, i10) + i9;
            } else {
                i7 = i9;
            }
            i9 = i7 + 1;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void layoutVertical(int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int i5 = i3 - i;
        int paddingRight = i5 - getPaddingRight();
        int paddingRight2 = (i5 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i6 = this.mGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        switch (this.mGravity & 112) {
            case 16:
                i5 = getPaddingTop() + (((i4 - i2) - this.mTotalLength) / 2);
                break;
            case 80:
                i5 = ((getPaddingTop() + i4) - i2) - this.mTotalLength;
                break;
            default:
                i5 = getPaddingTop();
                break;
        }
        int i7 = 0;
        int i8 = i5;
        while (i7 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i7);
            if (virtualChildAt == null) {
                i8 += measureNullChild(i7);
                i5 = i7;
            } else if (virtualChildAt.getVisibility() != 8) {
                int i9;
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                i5 = layoutParams.gravity;
                if (i5 < 0) {
                    i5 = i6;
                }
                switch (GravityCompat.getAbsoluteGravity(i5, ViewCompat.getLayoutDirection(this)) & 7) {
                    case 1:
                        i9 = ((((paddingRight2 - measuredWidth) / 2) + paddingLeft) + layoutParams.leftMargin) - layoutParams.rightMargin;
                        break;
                    case 5:
                        i9 = (paddingRight - measuredWidth) - layoutParams.rightMargin;
                        break;
                    default:
                        i9 = paddingLeft + layoutParams.leftMargin;
                        break;
                }
                int i10 = (hasDividerBeforeChildAt(i7) ? this.mDividerHeight + i8 : i8) + layoutParams.topMargin;
                setChildFrame(virtualChildAt, i9, i10 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                i8 = i10 + ((layoutParams.bottomMargin + measuredHeight) + getNextLocationOffset(virtualChildAt));
                i5 = getChildrenSkipCount(virtualChildAt, i7) + i7;
            } else {
                i5 = i7;
            }
            i7 = i5 + 1;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* Access modifiers changed, original: 0000 */
    public void measureHorizontal(int i, int i2) {
        int i3;
        Object obj;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        LayoutParams layoutParams;
        this.mTotalLength = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        Object obj2 = 1;
        float f = 0.0f;
        int virtualChildCount = getVirtualChildCount();
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        Object obj3 = null;
        Object obj4 = null;
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        boolean z = this.mBaselineAligned;
        boolean z2 = this.mUseLargestChild;
        Object obj5 = mode == 1073741824 ? 1 : null;
        int i13 = Integer.MIN_VALUE;
        int i14 = 0;
        while (i14 < virtualChildCount) {
            Object obj6;
            View virtualChildAt = getVirtualChildAt(i14);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(i14);
                i3 = i13;
                obj = obj4;
                obj6 = obj2;
                i4 = i10;
                i5 = i9;
            } else if (virtualChildAt.getVisibility() == 8) {
                i14 += getChildrenSkipCount(virtualChildAt, i14);
                i3 = i13;
                obj = obj4;
                obj6 = obj2;
                i4 = i10;
                i5 = i9;
            } else {
                Object obj7;
                if (hasDividerBeforeChildAt(i14)) {
                    this.mTotalLength += this.mDividerWidth;
                }
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt.getLayoutParams();
                float f2 = f + layoutParams2.weight;
                if (mode == 1073741824 && layoutParams2.width == 0 && layoutParams2.weight > 0.0f) {
                    if (obj5 != null) {
                        this.mTotalLength += layoutParams2.leftMargin + layoutParams2.rightMargin;
                    } else {
                        i3 = this.mTotalLength;
                        this.mTotalLength = Math.max(i3, (layoutParams2.leftMargin + i3) + layoutParams2.rightMargin);
                    }
                    if (z) {
                        i3 = MeasureSpec.makeMeasureSpec(0, 0);
                        virtualChildAt.measure(i3, i3);
                    } else {
                        obj4 = 1;
                    }
                } else {
                    i3 = Integer.MIN_VALUE;
                    if (layoutParams2.width == 0 && layoutParams2.weight > 0.0f) {
                        i3 = 0;
                        layoutParams2.width = -2;
                    }
                    int i15 = i3;
                    measureChildBeforeLayout(virtualChildAt, i14, i, f2 == 0.0f ? this.mTotalLength : 0, i2, 0);
                    if (i15 != Integer.MIN_VALUE) {
                        layoutParams2.width = i15;
                    }
                    i3 = virtualChildAt.getMeasuredWidth();
                    if (obj5 != null) {
                        this.mTotalLength += ((layoutParams2.leftMargin + i3) + layoutParams2.rightMargin) + getNextLocationOffset(virtualChildAt);
                    } else {
                        i6 = this.mTotalLength;
                        this.mTotalLength = Math.max(i6, (((i6 + i3) + layoutParams2.leftMargin) + layoutParams2.rightMargin) + getNextLocationOffset(virtualChildAt));
                    }
                    if (z2) {
                        i13 = Math.max(i3, i13);
                    }
                }
                Object obj8 = null;
                if (mode2 == 1073741824 || layoutParams2.height != -1) {
                    obj7 = obj3;
                } else {
                    obj7 = 1;
                    obj8 = 1;
                }
                i4 = layoutParams2.bottomMargin + layoutParams2.topMargin;
                i5 = virtualChildAt.getMeasuredHeight() + i4;
                int combineMeasuredStates = ViewUtils.combineMeasuredStates(i10, ViewCompat.getMeasuredState(virtualChildAt));
                if (z) {
                    i10 = virtualChildAt.getBaseline();
                    if (i10 != -1) {
                        i7 = ((((layoutParams2.gravity < 0 ? this.mGravity : layoutParams2.gravity) & 112) >> 4) & -2) >> 1;
                        iArr[i7] = Math.max(iArr[i7], i10);
                        iArr2[i7] = Math.max(iArr2[i7], i5 - i10);
                    }
                }
                i10 = Math.max(i9, i5);
                obj6 = (obj2 == null || layoutParams2.height != -1) ? null : 1;
                if (layoutParams2.weight > 0.0f) {
                    i3 = Math.max(i12, obj8 != null ? i4 : i5);
                    i4 = i11;
                } else {
                    if (obj8 == null) {
                        i4 = i5;
                    }
                    i4 = Math.max(i11, i4);
                    i3 = i12;
                }
                i14 += getChildrenSkipCount(virtualChildAt, i14);
                obj = obj4;
                i12 = i3;
                i11 = i4;
                i5 = i10;
                i3 = i13;
                i4 = combineMeasuredStates;
                obj3 = obj7;
                f = f2;
            }
            i14++;
            i13 = i3;
            obj4 = obj;
            obj2 = obj6;
            i10 = i4;
            i9 = i5;
        }
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerWidth;
        }
        i14 = (iArr[1] == -1 && iArr[0] == -1 && iArr[2] == -1 && iArr[3] == -1) ? i9 : Math.max(i9, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
        if (z2 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.mTotalLength = 0;
            i8 = 0;
            while (i8 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(i8);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(i8);
                    i3 = i8;
                } else if (virtualChildAt2.getVisibility() == 8) {
                    i3 = getChildrenSkipCount(virtualChildAt2, i8) + i8;
                } else {
                    layoutParams = (LayoutParams) virtualChildAt2.getLayoutParams();
                    if (obj5 != null) {
                        this.mTotalLength = ((layoutParams.rightMargin + (layoutParams.leftMargin + i13)) + getNextLocationOffset(virtualChildAt2)) + this.mTotalLength;
                        i3 = i8;
                    } else {
                        i4 = this.mTotalLength;
                        this.mTotalLength = Math.max(i4, (layoutParams.rightMargin + ((i4 + i13) + layoutParams.leftMargin)) + getNextLocationOffset(virtualChildAt2));
                        i3 = i8;
                    }
                }
                i8 = i3 + 1;
            }
        }
        this.mTotalLength += getPaddingLeft() + getPaddingRight();
        int resolveSizeAndState = ViewCompat.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumWidth()), i, 0);
        i8 = (ViewCompat.MEASURED_SIZE_MASK & resolveSizeAndState) - this.mTotalLength;
        int i16;
        if (obj4 != null || (i8 != 0 && f > 0.0f)) {
            if (this.mWeightSum > 0.0f) {
                f = this.mWeightSum;
            }
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            this.mTotalLength = 0;
            i13 = 0;
            float f3 = f;
            Object obj9 = obj2;
            i16 = i11;
            i7 = i10;
            i6 = i8;
            i11 = -1;
            while (i13 < virtualChildCount) {
                float f4;
                Object obj10;
                View virtualChildAt3 = getVirtualChildAt(i13);
                if (virtualChildAt3 == null) {
                    f4 = f3;
                    i8 = i6;
                    i4 = i11;
                    i6 = i16;
                    obj10 = obj9;
                } else if (virtualChildAt3.getVisibility() == 8) {
                    f4 = f3;
                    i8 = i6;
                    i4 = i11;
                    i6 = i16;
                    obj10 = obj9;
                } else {
                    float f5;
                    layoutParams = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f6 = layoutParams.weight;
                    if (f6 > 0.0f) {
                        i8 = (int) ((((float) i6) * f6) / f3);
                        f3 -= f6;
                        i4 = i6 - i8;
                        i6 = getChildMeasureSpec(i2, ((getPaddingTop() + getPaddingBottom()) + layoutParams.topMargin) + layoutParams.bottomMargin, layoutParams.height);
                        if (layoutParams.width == 0 && mode == 1073741824) {
                            if (i8 <= 0) {
                                i8 = 0;
                            }
                            virtualChildAt3.measure(MeasureSpec.makeMeasureSpec(i8, 1073741824), i6);
                        } else {
                            i8 += virtualChildAt3.getMeasuredWidth();
                            if (i8 < 0) {
                                i8 = 0;
                            }
                            virtualChildAt3.measure(MeasureSpec.makeMeasureSpec(i8, 1073741824), i6);
                        }
                        i12 = ViewUtils.combineMeasuredStates(i7, ViewCompat.getMeasuredState(virtualChildAt3) & ViewCompat.MEASURED_STATE_MASK);
                        f5 = f3;
                    } else {
                        i4 = i6;
                        i12 = i7;
                        f5 = f3;
                    }
                    if (obj5 != null) {
                        this.mTotalLength += ((virtualChildAt3.getMeasuredWidth() + layoutParams.leftMargin) + layoutParams.rightMargin) + getNextLocationOffset(virtualChildAt3);
                    } else {
                        i8 = this.mTotalLength;
                        this.mTotalLength = Math.max(i8, (((virtualChildAt3.getMeasuredWidth() + i8) + layoutParams.leftMargin) + layoutParams.rightMargin) + getNextLocationOffset(virtualChildAt3));
                    }
                    obj = (mode2 == 1073741824 || layoutParams.height != -1) ? null : 1;
                    i14 = layoutParams.topMargin + layoutParams.bottomMargin;
                    i6 = virtualChildAt3.getMeasuredHeight() + i14;
                    i11 = Math.max(i11, i6);
                    i14 = Math.max(i16, obj != null ? i14 : i6);
                    obj = (obj9 == null || layoutParams.height != -1) ? null : 1;
                    if (z) {
                        i5 = virtualChildAt3.getBaseline();
                        if (i5 != -1) {
                            i3 = ((((layoutParams.gravity < 0 ? this.mGravity : layoutParams.gravity) & 112) >> 4) & -2) >> 1;
                            iArr[i3] = Math.max(iArr[i3], i5);
                            iArr2[i3] = Math.max(iArr2[i3], i6 - i5);
                        }
                    }
                    f4 = f5;
                    i6 = i14;
                    obj10 = obj;
                    i7 = i12;
                    i8 = i4;
                    i4 = i11;
                }
                i13++;
                i16 = i6;
                i11 = i4;
                obj9 = obj10;
                i6 = i8;
                f3 = f4;
            }
            this.mTotalLength += getPaddingLeft() + getPaddingRight();
            if (!(iArr[1] == -1 && iArr[0] == -1 && iArr[2] == -1 && iArr[3] == -1)) {
                i11 = Math.max(i11, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
            }
            obj2 = obj9;
            i3 = i16;
            i10 = i7;
            i8 = i11;
        } else {
            i16 = Math.max(i11, i12);
            if (z2 && mode != 1073741824) {
                i3 = 0;
                while (true) {
                    i8 = i3;
                    if (i8 >= virtualChildCount) {
                        break;
                    }
                    View virtualChildAt4 = getVirtualChildAt(i8);
                    if (!(virtualChildAt4 == null || virtualChildAt4.getVisibility() == 8 || ((LayoutParams) virtualChildAt4.getLayoutParams()).weight <= 0.0f)) {
                        virtualChildAt4.measure(MeasureSpec.makeMeasureSpec(i13, 1073741824), MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredHeight(), 1073741824));
                    }
                    i3 = i8 + 1;
                }
            }
            i3 = i16;
            i8 = i14;
        }
        if (obj2 != null || mode2 == 1073741824) {
            i3 = i8;
        }
        setMeasuredDimension((ViewCompat.MEASURED_STATE_MASK & i10) | resolveSizeAndState, ViewCompat.resolveSizeAndState(Math.max(i3 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight()), i2, i10 << 16));
        if (obj3 != null) {
            forceUniformHeight(virtualChildCount, i);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public int measureNullChild(int i) {
        return 0;
    }

    /* Access modifiers changed, original: 0000 */
    public void measureVertical(int i, int i2) {
        int i3;
        Object obj;
        int i4;
        int i5;
        int i6;
        int i7;
        View virtualChildAt;
        LayoutParams layoutParams;
        int i8;
        this.mTotalLength = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        Object obj2 = 1;
        float f = 0.0f;
        int virtualChildCount = getVirtualChildCount();
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        Object obj3 = null;
        Object obj4 = null;
        int i13 = this.mBaselineAlignedChildIndex;
        boolean z = this.mUseLargestChild;
        int i14 = Integer.MIN_VALUE;
        int i15 = 0;
        while (i15 < virtualChildCount) {
            Object obj5;
            View virtualChildAt2 = getVirtualChildAt(i15);
            if (virtualChildAt2 == null) {
                this.mTotalLength += measureNullChild(i15);
                i3 = i14;
                obj5 = obj4;
                obj = obj2;
                i4 = i10;
                i5 = i9;
            } else if (virtualChildAt2.getVisibility() == 8) {
                i15 += getChildrenSkipCount(virtualChildAt2, i15);
                i3 = i14;
                obj5 = obj4;
                obj = obj2;
                i4 = i10;
                i5 = i9;
            } else {
                if (hasDividerBeforeChildAt(i15)) {
                    this.mTotalLength += this.mDividerHeight;
                }
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                float f2 = f + layoutParams2.weight;
                if (mode2 == 1073741824 && layoutParams2.height == 0 && layoutParams2.weight > 0.0f) {
                    i3 = this.mTotalLength;
                    this.mTotalLength = Math.max(i3, (layoutParams2.topMargin + i3) + layoutParams2.bottomMargin);
                    obj4 = 1;
                } else {
                    i3 = Integer.MIN_VALUE;
                    if (layoutParams2.height == 0 && layoutParams2.weight > 0.0f) {
                        i3 = 0;
                        layoutParams2.height = -2;
                    }
                    int i16 = i3;
                    measureChildBeforeLayout(virtualChildAt2, i15, i, 0, i2, f2 == 0.0f ? this.mTotalLength : 0);
                    if (i16 != Integer.MIN_VALUE) {
                        layoutParams2.height = i16;
                    }
                    i3 = virtualChildAt2.getMeasuredHeight();
                    i6 = this.mTotalLength;
                    this.mTotalLength = Math.max(i6, (((i6 + i3) + layoutParams2.topMargin) + layoutParams2.bottomMargin) + getNextLocationOffset(virtualChildAt2));
                    if (z) {
                        i14 = Math.max(i3, i14);
                    }
                }
                if (i13 >= 0 && i13 == i15 + 1) {
                    this.mBaselineChildTop = this.mTotalLength;
                }
                if (i15 >= i13 || layoutParams2.weight <= 0.0f) {
                    Object obj6;
                    Object obj7 = null;
                    if (mode == 1073741824 || layoutParams2.width != -1) {
                        obj6 = obj3;
                    } else {
                        obj6 = 1;
                        obj7 = 1;
                    }
                    i4 = layoutParams2.rightMargin + layoutParams2.leftMargin;
                    i5 = virtualChildAt2.getMeasuredWidth() + i4;
                    i9 = Math.max(i9, i5);
                    int combineMeasuredStates = ViewUtils.combineMeasuredStates(i10, ViewCompat.getMeasuredState(virtualChildAt2));
                    obj = (obj2 == null || layoutParams2.width != -1) ? null : 1;
                    if (layoutParams2.weight > 0.0f) {
                        i3 = Math.max(i12, obj7 != null ? i4 : i5);
                        i4 = i11;
                    } else {
                        if (obj7 == null) {
                            i4 = i5;
                        }
                        i4 = Math.max(i11, i4);
                        i3 = i12;
                    }
                    i15 += getChildrenSkipCount(virtualChildAt2, i15);
                    obj5 = obj4;
                    i12 = i3;
                    i11 = i4;
                    i5 = i9;
                    i3 = i14;
                    i4 = combineMeasuredStates;
                    obj3 = obj6;
                    f = f2;
                } else {
                    throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                }
            }
            i15++;
            i14 = i3;
            obj4 = obj5;
            obj2 = obj;
            i10 = i4;
            i9 = i5;
        }
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerHeight;
        }
        if (z && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
            this.mTotalLength = 0;
            i7 = 0;
            while (i7 < virtualChildCount) {
                virtualChildAt = getVirtualChildAt(i7);
                if (virtualChildAt == null) {
                    this.mTotalLength += measureNullChild(i7);
                    i3 = i7;
                } else if (virtualChildAt.getVisibility() == 8) {
                    i3 = getChildrenSkipCount(virtualChildAt, i7) + i7;
                } else {
                    layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    i8 = this.mTotalLength;
                    this.mTotalLength = Math.max(i8, (layoutParams.bottomMargin + ((i8 + i14) + layoutParams.topMargin)) + getNextLocationOffset(virtualChildAt));
                    i3 = i7;
                }
                i7 = i3 + 1;
            }
        }
        this.mTotalLength += getPaddingTop() + getPaddingBottom();
        int resolveSizeAndState = ViewCompat.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumHeight()), i2, 0);
        i7 = (ViewCompat.MEASURED_SIZE_MASK & resolveSizeAndState) - this.mTotalLength;
        int i17;
        if (obj4 != null || (i7 != 0 && f > 0.0f)) {
            if (this.mWeightSum > 0.0f) {
                f = this.mWeightSum;
            }
            this.mTotalLength = 0;
            i14 = 0;
            float f3 = f;
            Object obj8 = obj2;
            i17 = i11;
            i8 = i10;
            i12 = i9;
            i6 = i7;
            while (i14 < virtualChildCount) {
                View virtualChildAt3 = getVirtualChildAt(i14);
                if (virtualChildAt3.getVisibility() == 8) {
                    i3 = i17;
                    i7 = i8;
                    i4 = i12;
                    obj = obj8;
                } else {
                    float f4;
                    float f5;
                    layoutParams = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f6 = layoutParams.weight;
                    if (f6 > 0.0f) {
                        i7 = (int) ((((float) i6) * f6) / f3);
                        f3 -= f6;
                        i6 -= i7;
                        i4 = getChildMeasureSpec(i, ((getPaddingLeft() + getPaddingRight()) + layoutParams.leftMargin) + layoutParams.rightMargin, layoutParams.width);
                        if (layoutParams.height == 0 && mode2 == 1073741824) {
                            if (i7 <= 0) {
                                i7 = 0;
                            }
                            virtualChildAt3.measure(i4, MeasureSpec.makeMeasureSpec(i7, 1073741824));
                        } else {
                            i7 += virtualChildAt3.getMeasuredHeight();
                            if (i7 < 0) {
                                i7 = 0;
                            }
                            virtualChildAt3.measure(i4, MeasureSpec.makeMeasureSpec(i7, 1073741824));
                        }
                        f4 = f3;
                        i15 = i6;
                        i6 = ViewUtils.combineMeasuredStates(i8, ViewCompat.getMeasuredState(virtualChildAt3) & InputDeviceCompat.SOURCE_ANY);
                        f5 = f4;
                    } else {
                        f5 = f3;
                        i15 = i6;
                        i6 = i8;
                    }
                    i8 = layoutParams.leftMargin + layoutParams.rightMargin;
                    i4 = virtualChildAt3.getMeasuredWidth() + i8;
                    i12 = Math.max(i12, i4);
                    Object obj9 = (mode == 1073741824 || layoutParams.width != -1) ? null : 1;
                    if (obj9 == null) {
                        i8 = i4;
                    }
                    i4 = Math.max(i17, i8);
                    obj = (obj8 == null || layoutParams.width != -1) ? null : 1;
                    i5 = this.mTotalLength;
                    this.mTotalLength = Math.max(i5, (layoutParams.bottomMargin + ((virtualChildAt3.getMeasuredHeight() + i5) + layoutParams.topMargin)) + getNextLocationOffset(virtualChildAt3));
                    i3 = i4;
                    i4 = i12;
                    f4 = f5;
                    i7 = i6;
                    i6 = i15;
                    f3 = f4;
                }
                i14++;
                i17 = i3;
                i12 = i4;
                obj8 = obj;
                i8 = i7;
            }
            this.mTotalLength += getPaddingTop() + getPaddingBottom();
            obj2 = obj8;
            i3 = i17;
            i10 = i8;
            i7 = i12;
        } else {
            i17 = Math.max(i11, i12);
            if (z && mode2 != 1073741824) {
                i3 = 0;
                while (true) {
                    i7 = i3;
                    if (i7 >= virtualChildCount) {
                        break;
                    }
                    virtualChildAt = getVirtualChildAt(i7);
                    if (!(virtualChildAt == null || virtualChildAt.getVisibility() == 8 || ((LayoutParams) virtualChildAt.getLayoutParams()).weight <= 0.0f)) {
                        virtualChildAt.measure(MeasureSpec.makeMeasureSpec(virtualChildAt.getMeasuredWidth(), 1073741824), MeasureSpec.makeMeasureSpec(i14, 1073741824));
                    }
                    i3 = i7 + 1;
                }
            }
            i3 = i17;
            i7 = i9;
        }
        if (obj2 != null || mode == 1073741824) {
            i3 = i7;
        }
        setMeasuredDimension(ViewCompat.resolveSizeAndState(Math.max(i3 + (getPaddingLeft() + getPaddingRight()), getSuggestedMinimumWidth()), i, i10), resolveSizeAndState);
        if (obj3 != null) {
            forceUniformWidth(virtualChildCount, i2);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onDraw(Canvas canvas) {
        if (this.mDivider != null) {
            if (this.mOrientation == 1) {
                drawDividersVertical(canvas);
            } else {
                drawDividersHorizontal(canvas);
            }
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(LinearLayoutCompat.class.getName());
        }
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(LinearLayoutCompat.class.getName());
        }
    }

    /* Access modifiers changed, original: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mOrientation == 1) {
            layoutVertical(i, i2, i3, i4);
        } else {
            layoutHorizontal(i, i2, i3, i4);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onMeasure(int i, int i2) {
        if (this.mOrientation == 1) {
            measureVertical(i, i2);
        } else {
            measureHorizontal(i, i2);
        }
    }

    public void setBaselineAligned(boolean z) {
        this.mBaselineAligned = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.mBaselineAlignedChildIndex = i;
    }

    public void setDividerDrawable(Drawable drawable) {
        boolean z = false;
        if (drawable != this.mDivider) {
            this.mDivider = drawable;
            if (drawable != null) {
                this.mDividerWidth = drawable.getIntrinsicWidth();
                this.mDividerHeight = drawable.getIntrinsicHeight();
            } else {
                this.mDividerWidth = 0;
                this.mDividerHeight = 0;
            }
            if (drawable == null) {
                z = true;
            }
            setWillNotDraw(z);
            requestLayout();
        }
    }

    public void setDividerPadding(int i) {
        this.mDividerPadding = i;
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            int i2 = (GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK & i) == 0 ? GravityCompat.START | i : i;
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.mGravity = i2;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if ((this.mGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) != i2) {
            this.mGravity = i2 | (this.mGravity & -8388616);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.mUseLargestChild = z;
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        if ((this.mGravity & 112) != i2) {
            this.mGravity = i2 | (this.mGravity & -113);
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.mWeightSum = Math.max(0.0f, f);
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
