package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.design.R;
import android.support.design.widget.AppBarLayout.OnOffsetChangedListener;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.widget.FrameLayout;

public class CollapsingToolbarLayout extends FrameLayout {
    private static final int DEFAULT_SCRIM_ANIMATION_DURATION = 600;
    private final CollapsingTextHelper mCollapsingTextHelper;
    private boolean mCollapsingTitleEnabled;
    private Drawable mContentScrim;
    private int mCurrentOffset;
    private boolean mDrawCollapsingTitle;
    private View mDummyView;
    private int mExpandedMarginBottom;
    private int mExpandedMarginEnd;
    private int mExpandedMarginStart;
    private int mExpandedMarginTop;
    private WindowInsetsCompat mLastInsets;
    private OnOffsetChangedListener mOnOffsetChangedListener;
    private boolean mRefreshToolbar;
    private int mScrimAlpha;
    private long mScrimAnimationDuration;
    private ValueAnimatorCompat mScrimAnimator;
    private int mScrimVisibleHeightTrigger;
    private boolean mScrimsAreShown;
    private Drawable mStatusBarScrim;
    private final Rect mTmpRect;
    private Toolbar mToolbar;
    private View mToolbarDirectChild;
    private int mToolbarDrawIndex;
    private int mToolbarId;

    public static class LayoutParams extends android.widget.FrameLayout.LayoutParams {
        public static final int COLLAPSE_MODE_OFF = 0;
        public static final int COLLAPSE_MODE_PARALLAX = 2;
        public static final int COLLAPSE_MODE_PIN = 1;
        private static final float DEFAULT_PARALLAX_MULTIPLIER = 0.5f;
        int mCollapseMode = 0;
        float mParallaxMult = DEFAULT_PARALLAX_MULTIPLIER;

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CollapsingToolbarLayout_Layout);
            this.mCollapseMode = obtainStyledAttributes.getInt(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            setParallaxMultiplier(obtainStyledAttributes.getFloat(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, DEFAULT_PARALLAX_MULTIPLIER));
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(android.widget.FrameLayout.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public int getCollapseMode() {
            return this.mCollapseMode;
        }

        public float getParallaxMultiplier() {
            return this.mParallaxMult;
        }

        public void setCollapseMode(int i) {
            this.mCollapseMode = i;
        }

        public void setParallaxMultiplier(float f) {
            this.mParallaxMult = f;
        }
    }

    private class OffsetUpdateListener implements OnOffsetChangedListener {
        private OffsetUpdateListener() {
        }

        /* synthetic */ OffsetUpdateListener(CollapsingToolbarLayout collapsingToolbarLayout, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void onOffsetChanged(AppBarLayout appBarLayout, int i) {
            CollapsingToolbarLayout.this.mCurrentOffset = i;
            int systemWindowInsetTop = CollapsingToolbarLayout.this.mLastInsets != null ? CollapsingToolbarLayout.this.mLastInsets.getSystemWindowInsetTop() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                ViewOffsetHelper access$500 = CollapsingToolbarLayout.getViewOffsetHelper(childAt);
                switch (layoutParams.mCollapseMode) {
                    case 1:
                        access$500.setTopAndBottomOffset(MathUtils.constrain(-i, 0, CollapsingToolbarLayout.this.getMaxOffsetForPinChild(childAt)));
                        break;
                    case 2:
                        access$500.setTopAndBottomOffset(Math.round(layoutParams.mParallaxMult * ((float) (-i))));
                        break;
                    default:
                        break;
                }
            }
            CollapsingToolbarLayout.this.updateScrimVisibility();
            if (CollapsingToolbarLayout.this.mStatusBarScrim != null && systemWindowInsetTop > 0) {
                ViewCompat.postInvalidateOnAnimation(CollapsingToolbarLayout.this);
            }
            CollapsingToolbarLayout.this.mCollapsingTextHelper.setExpansionFraction(((float) Math.abs(i)) / ((float) ((CollapsingToolbarLayout.this.getHeight() - ViewCompat.getMinimumHeight(CollapsingToolbarLayout.this)) - systemWindowInsetTop)));
        }
    }

    public CollapsingToolbarLayout(Context context) {
        this(context, null);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mRefreshToolbar = true;
        this.mTmpRect = new Rect();
        this.mScrimVisibleHeightTrigger = -1;
        ThemeUtils.checkAppCompatTheme(context);
        this.mCollapsingTextHelper = new CollapsingTextHelper(this);
        this.mCollapsingTextHelper.setTextSizeInterpolator(AnimationUtils.DECELERATE_INTERPOLATOR);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CollapsingToolbarLayout, i, R.style.Widget_Design_CollapsingToolbar);
        this.mCollapsingTextHelper.setExpandedTextGravity(obtainStyledAttributes.getInt(R.styleable.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
        this.mCollapsingTextHelper.setCollapsedTextGravity(obtainStyledAttributes.getInt(R.styleable.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMargin, 0);
        this.mExpandedMarginBottom = dimensionPixelSize;
        this.mExpandedMarginEnd = dimensionPixelSize;
        this.mExpandedMarginTop = dimensionPixelSize;
        this.mExpandedMarginStart = dimensionPixelSize;
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart)) {
            this.mExpandedMarginStart = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd)) {
            this.mExpandedMarginEnd = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop)) {
            this.mExpandedMarginTop = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
            this.mExpandedMarginBottom = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
        }
        this.mCollapsingTitleEnabled = obtainStyledAttributes.getBoolean(R.styleable.CollapsingToolbarLayout_titleEnabled, true);
        setTitle(obtainStyledAttributes.getText(R.styleable.CollapsingToolbarLayout_title));
        this.mCollapsingTextHelper.setExpandedTextAppearance(R.style.TextAppearance_Design_CollapsingToolbar_Expanded);
        this.mCollapsingTextHelper.setCollapsedTextAppearance(android.support.v7.appcompat.R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance)) {
            this.mCollapsingTextHelper.setExpandedTextAppearance(obtainStyledAttributes.getResourceId(R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance, 0));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance)) {
            this.mCollapsingTextHelper.setCollapsedTextAppearance(obtainStyledAttributes.getResourceId(R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0));
        }
        this.mScrimVisibleHeightTrigger = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
        this.mScrimAnimationDuration = (long) obtainStyledAttributes.getInt(R.styleable.CollapsingToolbarLayout_scrimAnimationDuration, DEFAULT_SCRIM_ANIMATION_DURATION);
        setContentScrim(obtainStyledAttributes.getDrawable(R.styleable.CollapsingToolbarLayout_contentScrim));
        setStatusBarScrim(obtainStyledAttributes.getDrawable(R.styleable.CollapsingToolbarLayout_statusBarScrim));
        this.mToolbarId = obtainStyledAttributes.getResourceId(R.styleable.CollapsingToolbarLayout_toolbarId, -1);
        obtainStyledAttributes.recycle();
        setWillNotDraw(false);
        ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener() {
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return CollapsingToolbarLayout.this.onWindowInsetChanged(windowInsetsCompat);
            }
        });
    }

    private void animateScrim(int i) {
        ensureToolbar();
        if (this.mScrimAnimator == null) {
            this.mScrimAnimator = ViewUtils.createAnimator();
            this.mScrimAnimator.setDuration(this.mScrimAnimationDuration);
            this.mScrimAnimator.setInterpolator(i > this.mScrimAlpha ? AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR : AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
            this.mScrimAnimator.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat) {
                    CollapsingToolbarLayout.this.setScrimAlpha(valueAnimatorCompat.getAnimatedIntValue());
                }
            });
        } else if (this.mScrimAnimator.isRunning()) {
            this.mScrimAnimator.cancel();
        }
        this.mScrimAnimator.setIntValues(this.mScrimAlpha, i);
        this.mScrimAnimator.start();
    }

    private void ensureToolbar() {
        if (this.mRefreshToolbar) {
            this.mToolbar = null;
            this.mToolbarDirectChild = null;
            if (this.mToolbarId != -1) {
                this.mToolbar = (Toolbar) findViewById(this.mToolbarId);
                if (this.mToolbar != null) {
                    this.mToolbarDirectChild = findDirectChild(this.mToolbar);
                }
            }
            if (this.mToolbar == null) {
                Toolbar toolbar;
                int childCount = getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = getChildAt(i);
                    if (childAt instanceof Toolbar) {
                        toolbar = (Toolbar) childAt;
                        break;
                    }
                }
                toolbar = null;
                this.mToolbar = toolbar;
            }
            updateDummyView();
            this.mRefreshToolbar = false;
        }
    }

    private View findDirectChild(View view) {
        CollapsingToolbarLayout parent = view.getParent();
        View view2 = view;
        while (parent != this && parent != null) {
            if (parent instanceof View) {
                view2 = parent;
            }
            parent = parent.getParent();
        }
        return view2;
    }

    private static int getHeightWithMargins(@NonNull View view) {
        android.view.ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof MarginLayoutParams)) {
            return view.getHeight();
        }
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) layoutParams;
        return marginLayoutParams.bottomMargin + (view.getHeight() + marginLayoutParams.topMargin);
    }

    private static ViewOffsetHelper getViewOffsetHelper(View view) {
        ViewOffsetHelper viewOffsetHelper = (ViewOffsetHelper) view.getTag(R.id.view_offset_helper);
        if (viewOffsetHelper != null) {
            return viewOffsetHelper;
        }
        viewOffsetHelper = new ViewOffsetHelper(view);
        view.setTag(R.id.view_offset_helper, viewOffsetHelper);
        return viewOffsetHelper;
    }

    private boolean isToolbarChildDrawnNext(View view) {
        return this.mToolbarDrawIndex >= 0 && this.mToolbarDrawIndex == indexOfChild(view) + 1;
    }

    private WindowInsetsCompat onWindowInsetChanged(WindowInsetsCompat windowInsetsCompat) {
        Object obj = null;
        if (ViewCompat.getFitsSystemWindows(this)) {
            obj = windowInsetsCompat;
        }
        if (!ViewUtils.objectEquals(this.mLastInsets, obj)) {
            this.mLastInsets = obj;
            requestLayout();
        }
        return windowInsetsCompat;
    }

    private void setScrimAlpha(int i) {
        if (i != this.mScrimAlpha) {
            if (!(this.mContentScrim == null || this.mToolbar == null)) {
                ViewCompat.postInvalidateOnAnimation(this.mToolbar);
            }
            this.mScrimAlpha = i;
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    private void updateDummyView() {
        if (!(this.mCollapsingTitleEnabled || this.mDummyView == null)) {
            ViewParent parent = this.mDummyView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.mDummyView);
            }
        }
        if (this.mCollapsingTitleEnabled && this.mToolbar != null) {
            if (this.mDummyView == null) {
                this.mDummyView = new View(getContext());
            }
            if (this.mDummyView.getParent() == null) {
                this.mToolbar.addView(this.mDummyView, -1, -1);
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        ensureToolbar();
        if (this.mToolbar == null && this.mContentScrim != null && this.mScrimAlpha > 0) {
            this.mContentScrim.mutate().setAlpha(this.mScrimAlpha);
            this.mContentScrim.draw(canvas);
        }
        if (this.mCollapsingTitleEnabled && this.mDrawCollapsingTitle) {
            this.mCollapsingTextHelper.draw(canvas);
        }
        if (this.mStatusBarScrim != null && this.mScrimAlpha > 0) {
            int systemWindowInsetTop = this.mLastInsets != null ? this.mLastInsets.getSystemWindowInsetTop() : 0;
            if (systemWindowInsetTop > 0) {
                this.mStatusBarScrim.setBounds(0, -this.mCurrentOffset, getWidth(), systemWindowInsetTop - this.mCurrentOffset);
                this.mStatusBarScrim.mutate().setAlpha(this.mScrimAlpha);
                this.mStatusBarScrim.draw(canvas);
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean drawChild(Canvas canvas, View view, long j) {
        boolean drawChild = super.drawChild(canvas, view, j);
        if (this.mContentScrim == null || this.mScrimAlpha <= 0 || !isToolbarChildDrawnNext(view)) {
            return drawChild;
        }
        this.mContentScrim.mutate().setAlpha(this.mScrimAlpha);
        this.mContentScrim.draw(canvas);
        return true;
    }

    /* Access modifiers changed, original: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        int i = 0;
        Drawable drawable = this.mStatusBarScrim;
        if (drawable != null && drawable.isStateful()) {
            i = 0 | drawable.setState(drawableState);
        }
        drawable = this.mContentScrim;
        if (drawable != null && drawable.isStateful()) {
            i |= drawable.setState(drawableState);
        }
        if (this.mCollapsingTextHelper != null) {
            i |= this.mCollapsingTextHelper.setState(drawableState);
        }
        if (i != 0) {
            invalidate();
        }
    }

    /* Access modifiers changed, original: protected */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    public android.widget.FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* Access modifiers changed, original: protected */
    public android.widget.FrameLayout.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public int getCollapsedTitleGravity() {
        return this.mCollapsingTextHelper.getCollapsedTextGravity();
    }

    @NonNull
    public Typeface getCollapsedTitleTypeface() {
        return this.mCollapsingTextHelper.getCollapsedTypeface();
    }

    @Nullable
    public Drawable getContentScrim() {
        return this.mContentScrim;
    }

    public int getExpandedTitleGravity() {
        return this.mCollapsingTextHelper.getExpandedTextGravity();
    }

    public int getExpandedTitleMarginBottom() {
        return this.mExpandedMarginBottom;
    }

    public int getExpandedTitleMarginEnd() {
        return this.mExpandedMarginEnd;
    }

    public int getExpandedTitleMarginStart() {
        return this.mExpandedMarginStart;
    }

    public int getExpandedTitleMarginTop() {
        return this.mExpandedMarginTop;
    }

    @NonNull
    public Typeface getExpandedTitleTypeface() {
        return this.mCollapsingTextHelper.getExpandedTypeface();
    }

    /* Access modifiers changed, original: final */
    public final int getMaxOffsetForPinChild(View view) {
        return ((getHeight() - getViewOffsetHelper(view).getLayoutTop()) - view.getHeight()) - ((LayoutParams) view.getLayoutParams()).bottomMargin;
    }

    public long getScrimAnimationDuration() {
        return this.mScrimAnimationDuration;
    }

    public int getScrimVisibleHeightTrigger() {
        if (this.mScrimVisibleHeightTrigger >= 0) {
            return this.mScrimVisibleHeightTrigger;
        }
        int systemWindowInsetTop = this.mLastInsets != null ? this.mLastInsets.getSystemWindowInsetTop() : 0;
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        return minimumHeight > 0 ? Math.min(systemWindowInsetTop + (minimumHeight * 2), getHeight()) : getHeight() / 3;
    }

    @Nullable
    public Drawable getStatusBarScrim() {
        return this.mStatusBarScrim;
    }

    @Nullable
    public CharSequence getTitle() {
        return this.mCollapsingTitleEnabled ? this.mCollapsingTextHelper.getText() : null;
    }

    public boolean isTitleEnabled() {
        return this.mCollapsingTitleEnabled;
    }

    /* Access modifiers changed, original: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            ViewCompat.setFitsSystemWindows(this, ViewCompat.getFitsSystemWindows((View) parent));
            if (this.mOnOffsetChangedListener == null) {
                this.mOnOffsetChangedListener = new OffsetUpdateListener(this, null);
            }
            ((AppBarLayout) parent).addOnOffsetChangedListener(this.mOnOffsetChangedListener);
            ViewCompat.requestApplyInsets(this);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onDetachedFromWindow() {
        ViewParent parent = getParent();
        if (this.mOnOffsetChangedListener != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).removeOnOffsetChangedListener(this.mOnOffsetChangedListener);
        }
        super.onDetachedFromWindow();
    }

    /* Access modifiers changed, original: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Object obj = 1;
        super.onLayout(z, i, i2, i3, i4);
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (!(this.mLastInsets == null || ViewCompat.getFitsSystemWindows(childAt))) {
                int systemWindowInsetTop = this.mLastInsets.getSystemWindowInsetTop();
                if (childAt.getTop() < systemWindowInsetTop) {
                    ViewCompat.offsetTopAndBottom(childAt, systemWindowInsetTop);
                }
            }
            getViewOffsetHelper(childAt).onViewLayout();
        }
        if (this.mCollapsingTitleEnabled && this.mDummyView != null) {
            boolean z2 = ViewCompat.isAttachedToWindow(this.mDummyView) && this.mDummyView.getVisibility() == 0;
            this.mDrawCollapsingTitle = z2;
            if (this.mDrawCollapsingTitle) {
                if (ViewCompat.getLayoutDirection(this) != 1) {
                    obj = null;
                }
                int maxOffsetForPinChild = getMaxOffsetForPinChild(this.mToolbarDirectChild != null ? this.mToolbarDirectChild : this.mToolbar);
                ViewGroupUtils.getDescendantRect(this, this.mDummyView, this.mTmpRect);
                this.mCollapsingTextHelper.setCollapsedBounds(this.mTmpRect.left + (obj != null ? this.mToolbar.getTitleMarginEnd() : this.mToolbar.getTitleMarginStart()), this.mToolbar.getTitleMarginTop() + (this.mTmpRect.top + maxOffsetForPinChild), (obj != null ? this.mToolbar.getTitleMarginStart() : this.mToolbar.getTitleMarginEnd()) + this.mTmpRect.right, (maxOffsetForPinChild + this.mTmpRect.bottom) - this.mToolbar.getTitleMarginBottom());
                this.mCollapsingTextHelper.setExpandedBounds(obj != null ? this.mExpandedMarginEnd : this.mExpandedMarginStart, this.mExpandedMarginTop, (i3 - i) - (obj != null ? this.mExpandedMarginStart : this.mExpandedMarginEnd), (i4 - i2) - this.mExpandedMarginBottom);
                this.mCollapsingTextHelper.recalculate();
            }
        }
        if (this.mToolbar != null) {
            if (this.mCollapsingTitleEnabled && TextUtils.isEmpty(this.mCollapsingTextHelper.getText())) {
                this.mCollapsingTextHelper.setText(this.mToolbar.getTitle());
            }
            if (this.mToolbarDirectChild == null || this.mToolbarDirectChild == this) {
                setMinimumHeight(getHeightWithMargins(this.mToolbar));
                this.mToolbarDrawIndex = indexOfChild(this.mToolbar);
            } else {
                setMinimumHeight(getHeightWithMargins(this.mToolbarDirectChild));
                this.mToolbarDrawIndex = indexOfChild(this.mToolbarDirectChild);
            }
        } else {
            this.mToolbarDrawIndex = -1;
        }
        updateScrimVisibility();
    }

    /* Access modifiers changed, original: protected */
    public void onMeasure(int i, int i2) {
        ensureToolbar();
        super.onMeasure(i, i2);
    }

    /* Access modifiers changed, original: protected */
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.mContentScrim != null) {
            this.mContentScrim.setBounds(0, 0, i, i2);
        }
    }

    public void setCollapsedTitleGravity(int i) {
        this.mCollapsingTextHelper.setCollapsedTextGravity(i);
    }

    public void setCollapsedTitleTextAppearance(@StyleRes int i) {
        this.mCollapsingTextHelper.setCollapsedTextAppearance(i);
    }

    public void setCollapsedTitleTextColor(@ColorInt int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.mCollapsingTextHelper.setCollapsedTextColor(colorStateList);
    }

    public void setCollapsedTitleTypeface(@Nullable Typeface typeface) {
        this.mCollapsingTextHelper.setCollapsedTypeface(typeface);
    }

    public void setContentScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = null;
        if (this.mContentScrim != drawable) {
            if (this.mContentScrim != null) {
                this.mContentScrim.setCallback(null);
            }
            if (drawable != null) {
                drawable2 = drawable.mutate();
            }
            this.mContentScrim = drawable2;
            if (this.mContentScrim != null) {
                this.mContentScrim.setBounds(0, 0, getWidth(), getHeight());
                this.mContentScrim.setCallback(this);
                this.mContentScrim.setAlpha(this.mScrimAlpha);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setContentScrimColor(@ColorInt int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(@DrawableRes int i) {
        setContentScrim(ContextCompat.getDrawable(getContext(), i));
    }

    public void setExpandedTitleColor(@ColorInt int i) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleGravity(int i) {
        this.mCollapsingTextHelper.setExpandedTextGravity(i);
    }

    public void setExpandedTitleMargin(int i, int i2, int i3, int i4) {
        this.mExpandedMarginStart = i;
        this.mExpandedMarginTop = i2;
        this.mExpandedMarginEnd = i3;
        this.mExpandedMarginBottom = i4;
        requestLayout();
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.mExpandedMarginBottom = i;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.mExpandedMarginEnd = i;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i) {
        this.mExpandedMarginStart = i;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i) {
        this.mExpandedMarginTop = i;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(@StyleRes int i) {
        this.mCollapsingTextHelper.setExpandedTextAppearance(i);
    }

    public void setExpandedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.mCollapsingTextHelper.setExpandedTextColor(colorStateList);
    }

    public void setExpandedTitleTypeface(@Nullable Typeface typeface) {
        this.mCollapsingTextHelper.setExpandedTypeface(typeface);
    }

    public void setScrimAnimationDuration(@IntRange(from = 0) long j) {
        this.mScrimAnimationDuration = j;
    }

    public void setScrimVisibleHeightTrigger(@IntRange(from = 0) int i) {
        if (this.mScrimVisibleHeightTrigger != i) {
            this.mScrimVisibleHeightTrigger = i;
            updateScrimVisibility();
        }
    }

    public void setScrimsShown(boolean z) {
        boolean z2 = ViewCompat.isLaidOut(this) && !isInEditMode();
        setScrimsShown(z, z2);
    }

    public void setScrimsShown(boolean z, boolean z2) {
        int i = 255;
        if (this.mScrimsAreShown != z) {
            if (z2) {
                if (!z) {
                    i = 0;
                }
                animateScrim(i);
            } else {
                if (!z) {
                    i = 0;
                }
                setScrimAlpha(i);
            }
            this.mScrimsAreShown = z;
        }
    }

    public void setStatusBarScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = null;
        if (this.mStatusBarScrim != drawable) {
            if (this.mStatusBarScrim != null) {
                this.mStatusBarScrim.setCallback(null);
            }
            if (drawable != null) {
                drawable2 = drawable.mutate();
            }
            this.mStatusBarScrim = drawable2;
            if (this.mStatusBarScrim != null) {
                if (this.mStatusBarScrim.isStateful()) {
                    this.mStatusBarScrim.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.mStatusBarScrim, ViewCompat.getLayoutDirection(this));
                this.mStatusBarScrim.setVisible(getVisibility() == 0, false);
                this.mStatusBarScrim.setCallback(this);
                this.mStatusBarScrim.setAlpha(this.mScrimAlpha);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarScrimColor(@ColorInt int i) {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(@DrawableRes int i) {
        setStatusBarScrim(ContextCompat.getDrawable(getContext(), i));
    }

    public void setTitle(@Nullable CharSequence charSequence) {
        this.mCollapsingTextHelper.setText(charSequence);
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.mCollapsingTitleEnabled) {
            this.mCollapsingTitleEnabled = z;
            updateDummyView();
            requestLayout();
        }
    }

    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        if (!(this.mStatusBarScrim == null || this.mStatusBarScrim.isVisible() == z)) {
            this.mStatusBarScrim.setVisible(z, false);
        }
        if (this.mContentScrim != null && this.mContentScrim.isVisible() != z) {
            this.mContentScrim.setVisible(z, false);
        }
    }

    /* Access modifiers changed, original: final */
    public final void updateScrimVisibility() {
        if (this.mContentScrim != null || this.mStatusBarScrim != null) {
            setScrimsShown(getHeight() + this.mCurrentOffset < getScrimVisibleHeightTrigger());
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mContentScrim || drawable == this.mStatusBarScrim;
    }
}
