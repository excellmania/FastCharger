package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region.Op;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.FloatRange;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.design.R;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewGroup.OnHierarchyChangeListener;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CoordinatorLayout extends ViewGroup implements NestedScrollingParent {
    static final Class<?>[] CONSTRUCTOR_PARAMS = new Class[]{Context.class, AttributeSet.class};
    private static final int EVENT_NESTED_SCROLL = 1;
    private static final int EVENT_PRE_DRAW = 0;
    private static final int EVENT_VIEW_REMOVED = 2;
    static final String TAG = "CoordinatorLayout";
    static final Comparator<View> TOP_SORTED_CHILDREN_COMPARATOR;
    private static final int TYPE_ON_INTERCEPT = 0;
    private static final int TYPE_ON_TOUCH = 1;
    static final String WIDGET_PACKAGE_NAME;
    static final ThreadLocal<Map<String, Constructor<Behavior>>> sConstructors = new ThreadLocal();
    private OnApplyWindowInsetsListener mApplyWindowInsetsListener;
    private View mBehaviorTouchView;
    private final DirectedAcyclicGraph<View> mChildDag;
    private final List<View> mDependencySortedChildren;
    private boolean mDisallowInterceptReset;
    private boolean mDrawStatusBarBackground;
    private boolean mIsAttachedToWindow;
    private int[] mKeylines;
    private WindowInsetsCompat mLastInsets;
    private boolean mNeedsPreDrawListener;
    private View mNestedScrollingDirectChild;
    private final NestedScrollingParentHelper mNestedScrollingParentHelper;
    private View mNestedScrollingTarget;
    private OnHierarchyChangeListener mOnHierarchyChangeListener;
    private OnPreDrawListener mOnPreDrawListener;
    private Paint mScrimPaint;
    private Drawable mStatusBarBackground;
    private final List<View> mTempDependenciesList;
    private final int[] mTempIntPair;
    private final List<View> mTempList1;
    private final Rect mTempRect1;
    private final Rect mTempRect2;
    private final Rect mTempRect3;
    private final Rect mTempRect4;

    public static abstract class Behavior<V extends View> {
        public Behavior(Context context, AttributeSet attributeSet) {
        }

        public static Object getTag(View view) {
            return ((LayoutParams) view.getLayoutParams()).mBehaviorTag;
        }

        public static void setTag(View view, Object obj) {
            ((LayoutParams) view.getLayoutParams()).mBehaviorTag = obj;
        }

        public boolean blocksInteractionBelow(CoordinatorLayout coordinatorLayout, V v) {
            return getScrimOpacity(coordinatorLayout, v) > 0.0f;
        }

        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Rect rect) {
            return false;
        }

        @ColorInt
        public int getScrimColor(CoordinatorLayout coordinatorLayout, V v) {
            return ViewCompat.MEASURED_STATE_MASK;
        }

        @FloatRange(from = 0.0d, to = 1.0d)
        public float getScrimOpacity(CoordinatorLayout coordinatorLayout, V v) {
            return 0.0f;
        }

        @Deprecated
        public boolean isDirty(CoordinatorLayout coordinatorLayout, V v) {
            return false;
        }

        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(CoordinatorLayout coordinatorLayout, V v, WindowInsetsCompat windowInsetsCompat) {
            return windowInsetsCompat;
        }

        public void onAttachedToLayoutParams(@NonNull LayoutParams layoutParams) {
        }

        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        public void onDetachedFromLayoutParams() {
        }

        public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
            return false;
        }

        public boolean onNestedFling(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2, boolean z) {
            return false;
        }

        public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
            return false;
        }

        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
        }

        public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        }

        public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        }

        public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v) {
            return BaseSavedState.EMPTY_STATE;
        }

        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
            return false;
        }

        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    public @interface DefaultBehavior {
        Class<? extends Behavior> value();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface DispatchChangeEvent {
    }

    private class HierarchyChangeListener implements OnHierarchyChangeListener {
        private HierarchyChangeListener() {
        }

        /* synthetic */ HierarchyChangeListener(CoordinatorLayout coordinatorLayout, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void onChildViewAdded(View view, View view2) {
            if (CoordinatorLayout.this.mOnHierarchyChangeListener != null) {
                CoordinatorLayout.this.mOnHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.onChildViewsChanged(2);
            if (CoordinatorLayout.this.mOnHierarchyChangeListener != null) {
                CoordinatorLayout.this.mOnHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public static class LayoutParams extends MarginLayoutParams {
        public int anchorGravity = 0;
        public int dodgeInsetEdges = 0;
        public int gravity = 0;
        public int insetEdge = 0;
        public int keyline = -1;
        View mAnchorDirectChild;
        int mAnchorId = -1;
        View mAnchorView;
        Behavior mBehavior;
        boolean mBehaviorResolved = false;
        Object mBehaviorTag;
        private boolean mDidAcceptNestedScroll;
        private boolean mDidBlockInteraction;
        private boolean mDidChangeAfterNestedScroll;
        private int mInsetOffsetX;
        private int mInsetOffsetY;
        final Rect mLastChildRect = new Rect();

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout_Layout);
            this.gravity = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.mAnchorId = obtainStyledAttributes.getResourceId(R.styleable.CoordinatorLayout_Layout_layout_anchor, -1);
            this.anchorGravity = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.keyline = obtainStyledAttributes.getInteger(R.styleable.CoordinatorLayout_Layout_layout_keyline, -1);
            this.insetEdge = obtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.dodgeInsetEdges = obtainStyledAttributes.getInt(R.styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            this.mBehaviorResolved = obtainStyledAttributes.hasValue(R.styleable.CoordinatorLayout_Layout_layout_behavior);
            if (this.mBehaviorResolved) {
                this.mBehavior = CoordinatorLayout.parseBehavior(context, attributeSet, obtainStyledAttributes.getString(R.styleable.CoordinatorLayout_Layout_layout_behavior));
            }
            obtainStyledAttributes.recycle();
            if (this.mBehavior != null) {
                this.mBehavior.onAttachedToLayoutParams(this);
            }
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        private void resolveAnchorView(View view, CoordinatorLayout coordinatorLayout) {
            this.mAnchorView = coordinatorLayout.findViewById(this.mAnchorId);
            if (this.mAnchorView != null) {
                if (this.mAnchorView != coordinatorLayout) {
                    View view2 = this.mAnchorView;
                    View parent = this.mAnchorView.getParent();
                    while (parent != coordinatorLayout && parent != null) {
                        if (parent != view) {
                            if (parent instanceof View) {
                                view2 = parent;
                            }
                            parent = parent.getParent();
                        } else if (coordinatorLayout.isInEditMode()) {
                            this.mAnchorDirectChild = null;
                            this.mAnchorView = null;
                            return;
                        } else {
                            throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                        }
                    }
                    this.mAnchorDirectChild = view2;
                } else if (coordinatorLayout.isInEditMode()) {
                    this.mAnchorDirectChild = null;
                    this.mAnchorView = null;
                } else {
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
            } else if (coordinatorLayout.isInEditMode()) {
                this.mAnchorDirectChild = null;
                this.mAnchorView = null;
            } else {
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.mAnchorId) + " to anchor view " + view);
            }
        }

        private boolean shouldDodge(View view, int i) {
            int absoluteGravity = GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).insetEdge, i);
            return absoluteGravity != 0 && (GravityCompat.getAbsoluteGravity(this.dodgeInsetEdges, i) & absoluteGravity) == absoluteGravity;
        }

        private boolean verifyAnchorView(View view, CoordinatorLayout coordinatorLayout) {
            if (this.mAnchorView.getId() != this.mAnchorId) {
                return false;
            }
            View view2 = this.mAnchorView;
            View parent = this.mAnchorView.getParent();
            while (parent != coordinatorLayout) {
                if (parent == null || parent == view) {
                    this.mAnchorDirectChild = null;
                    this.mAnchorView = null;
                    return false;
                }
                if (parent instanceof View) {
                    view2 = parent;
                }
                parent = parent.getParent();
            }
            this.mAnchorDirectChild = view2;
            return true;
        }

        /* Access modifiers changed, original: 0000 */
        public void acceptNestedScroll(boolean z) {
            this.mDidAcceptNestedScroll = z;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean checkAnchorChanged() {
            return this.mAnchorView == null && this.mAnchorId != -1;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean dependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 == this.mAnchorDirectChild || shouldDodge(view2, ViewCompat.getLayoutDirection(coordinatorLayout)) || (this.mBehavior != null && this.mBehavior.layoutDependsOn(coordinatorLayout, view, view2));
        }

        /* Access modifiers changed, original: 0000 */
        public boolean didBlockInteraction() {
            if (this.mBehavior == null) {
                this.mDidBlockInteraction = false;
            }
            return this.mDidBlockInteraction;
        }

        /* Access modifiers changed, original: 0000 */
        public View findAnchorView(CoordinatorLayout coordinatorLayout, View view) {
            if (this.mAnchorId == -1) {
                this.mAnchorDirectChild = null;
                this.mAnchorView = null;
                return null;
            }
            if (this.mAnchorView == null || !verifyAnchorView(view, coordinatorLayout)) {
                resolveAnchorView(view, coordinatorLayout);
            }
            return this.mAnchorView;
        }

        @IdRes
        public int getAnchorId() {
            return this.mAnchorId;
        }

        @Nullable
        public Behavior getBehavior() {
            return this.mBehavior;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean getChangedAfterNestedScroll() {
            return this.mDidChangeAfterNestedScroll;
        }

        /* Access modifiers changed, original: 0000 */
        public Rect getLastChildRect() {
            return this.mLastChildRect;
        }

        /* Access modifiers changed, original: 0000 */
        public void invalidateAnchor() {
            this.mAnchorDirectChild = null;
            this.mAnchorView = null;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean isBlockingInteractionBelow(CoordinatorLayout coordinatorLayout, View view) {
            if (this.mDidBlockInteraction) {
                return true;
            }
            int blocksInteractionBelow = (this.mBehavior != null ? this.mBehavior.blocksInteractionBelow(coordinatorLayout, view) : 0) | this.mDidBlockInteraction;
            this.mDidBlockInteraction = blocksInteractionBelow;
            return blocksInteractionBelow;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean isNestedScrollAccepted() {
            return this.mDidAcceptNestedScroll;
        }

        /* Access modifiers changed, original: 0000 */
        public void resetChangedAfterNestedScroll() {
            this.mDidChangeAfterNestedScroll = false;
        }

        /* Access modifiers changed, original: 0000 */
        public void resetNestedScroll() {
            this.mDidAcceptNestedScroll = false;
        }

        /* Access modifiers changed, original: 0000 */
        public void resetTouchBehaviorTracking() {
            this.mDidBlockInteraction = false;
        }

        public void setAnchorId(@IdRes int i) {
            invalidateAnchor();
            this.mAnchorId = i;
        }

        public void setBehavior(@Nullable Behavior behavior) {
            if (this.mBehavior != behavior) {
                if (this.mBehavior != null) {
                    this.mBehavior.onDetachedFromLayoutParams();
                }
                this.mBehavior = behavior;
                this.mBehaviorTag = null;
                this.mBehaviorResolved = true;
                if (behavior != null) {
                    behavior.onAttachedToLayoutParams(this);
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void setChangedAfterNestedScroll(boolean z) {
            this.mDidChangeAfterNestedScroll = z;
        }

        /* Access modifiers changed, original: 0000 */
        public void setLastChildRect(Rect rect) {
            this.mLastChildRect.set(rect);
        }
    }

    class OnPreDrawListener implements android.view.ViewTreeObserver.OnPreDrawListener {
        OnPreDrawListener() {
        }

        public boolean onPreDraw() {
            CoordinatorLayout.this.onChildViewsChanged(0);
            return true;
        }
    }

    protected static class SavedState extends AbsSavedState {
        public static final Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks<SavedState>() {
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        });
        SparseArray<Parcelable> behaviorStates;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.behaviorStates = new SparseArray(readInt);
            for (int i = 0; i < readInt; i++) {
                this.behaviorStates.append(iArr[i], readParcelableArray[i]);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 0;
            super.writeToParcel(parcel, i);
            int size = this.behaviorStates != null ? this.behaviorStates.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            while (i2 < size) {
                iArr[i2] = this.behaviorStates.keyAt(i2);
                parcelableArr[i2] = (Parcelable) this.behaviorStates.valueAt(i2);
                i2++;
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }

    static class ViewElevationComparator implements Comparator<View> {
        ViewElevationComparator() {
        }

        public int compare(View view, View view2) {
            float z = ViewCompat.getZ(view);
            float z2 = ViewCompat.getZ(view2);
            return z > z2 ? -1 : z < z2 ? 1 : 0;
        }
    }

    static {
        Package packageR = CoordinatorLayout.class.getPackage();
        WIDGET_PACKAGE_NAME = packageR != null ? packageR.getName() : null;
        if (VERSION.SDK_INT >= 21) {
            TOP_SORTED_CHILDREN_COMPARATOR = new ViewElevationComparator();
        } else {
            TOP_SORTED_CHILDREN_COMPARATOR = null;
        }
    }

    public CoordinatorLayout(Context context) {
        this(context, null);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i) {
        int i2 = 0;
        super(context, attributeSet, i);
        this.mDependencySortedChildren = new ArrayList();
        this.mChildDag = new DirectedAcyclicGraph();
        this.mTempList1 = new ArrayList();
        this.mTempDependenciesList = new ArrayList();
        this.mTempRect1 = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRect3 = new Rect();
        this.mTempRect4 = new Rect();
        this.mTempIntPair = new int[2];
        this.mNestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        ThemeUtils.checkAppCompatTheme(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CoordinatorLayout, i, R.style.Widget_Design_CoordinatorLayout);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.mKeylines = resources.getIntArray(resourceId);
            float f = resources.getDisplayMetrics().density;
            int length = this.mKeylines.length;
            while (i2 < length) {
                int[] iArr = this.mKeylines;
                iArr[i2] = (int) (((float) iArr[i2]) * f);
                i2++;
            }
        }
        this.mStatusBarBackground = obtainStyledAttributes.getDrawable(R.styleable.CoordinatorLayout_statusBarBackground);
        obtainStyledAttributes.recycle();
        setupForInsets();
        super.setOnHierarchyChangeListener(new HierarchyChangeListener(this, null));
    }

    private void constrainChildRect(LayoutParams layoutParams, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        width = Math.max(getPaddingLeft() + layoutParams.leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - layoutParams.rightMargin));
        height = Math.max(getPaddingTop() + layoutParams.topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - layoutParams.bottomMargin));
        rect.set(width, height, width + i, height + i2);
    }

    private WindowInsetsCompat dispatchApplyWindowInsetsToBehaviors(WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat.isConsumed()) {
            return windowInsetsCompat;
        }
        WindowInsetsCompat onApplyWindowInsets;
        int childCount = getChildCount();
        int i = 0;
        WindowInsetsCompat windowInsetsCompat2 = windowInsetsCompat;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (ViewCompat.getFitsSystemWindows(childAt)) {
                Behavior behavior = ((LayoutParams) childAt.getLayoutParams()).getBehavior();
                if (behavior != null) {
                    onApplyWindowInsets = behavior.onApplyWindowInsets(this, childAt, windowInsetsCompat2);
                    if (onApplyWindowInsets.isConsumed()) {
                        break;
                    }
                    i++;
                    windowInsetsCompat2 = onApplyWindowInsets;
                }
            }
            onApplyWindowInsets = windowInsetsCompat2;
            i++;
            windowInsetsCompat2 = onApplyWindowInsets;
        }
        onApplyWindowInsets = windowInsetsCompat2;
        return onApplyWindowInsets;
    }

    private void getDesiredAnchoredChildRectWithoutConstraints(View view, int i, Rect rect, Rect rect2, LayoutParams layoutParams, int i2, int i3) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(resolveAnchoredChildGravity(layoutParams.gravity), i);
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(resolveGravity(layoutParams.anchorGravity), i);
        int i4 = absoluteGravity & 7;
        int i5 = absoluteGravity & 112;
        int i6 = absoluteGravity2 & 112;
        switch (absoluteGravity2 & 7) {
            case 1:
                absoluteGravity2 = (rect.width() / 2) + rect.left;
                break;
            case 5:
                absoluteGravity2 = rect.right;
                break;
            default:
                absoluteGravity2 = rect.left;
                break;
        }
        switch (i6) {
            case 16:
                absoluteGravity = rect.top + (rect.height() / 2);
                break;
            case 80:
                absoluteGravity = rect.bottom;
                break;
            default:
                absoluteGravity = rect.top;
                break;
        }
        switch (i4) {
            case 1:
                absoluteGravity2 -= i2 / 2;
                break;
            case 5:
                break;
            default:
                absoluteGravity2 -= i2;
                break;
        }
        switch (i5) {
            case 16:
                absoluteGravity -= i3 / 2;
                break;
            case 80:
                break;
            default:
                absoluteGravity -= i3;
                break;
        }
        rect2.set(absoluteGravity2, absoluteGravity, absoluteGravity2 + i2, absoluteGravity + i3);
    }

    private int getKeyline(int i) {
        if (this.mKeylines == null) {
            Log.e(TAG, "No keylines defined for " + this + " - attempted index lookup " + i);
            return 0;
        } else if (i >= 0 && i < this.mKeylines.length) {
            return this.mKeylines[i];
        } else {
            Log.e(TAG, "Keyline index " + i + " out of range for " + this);
            return 0;
        }
    }

    private void getTopSortedChildren(List<View> list) {
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        int i = childCount - 1;
        while (i >= 0) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i) : i));
            i--;
        }
        if (TOP_SORTED_CHILDREN_COMPARATOR != null) {
            Collections.sort(list, TOP_SORTED_CHILDREN_COMPARATOR);
        }
    }

    private void layoutChild(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = this.mTempRect1;
        rect.set(getPaddingLeft() + layoutParams.leftMargin, getPaddingTop() + layoutParams.topMargin, (getWidth() - getPaddingRight()) - layoutParams.rightMargin, (getHeight() - getPaddingBottom()) - layoutParams.bottomMargin);
        if (!(this.mLastInsets == null || !ViewCompat.getFitsSystemWindows(this) || ViewCompat.getFitsSystemWindows(view))) {
            rect.left += this.mLastInsets.getSystemWindowInsetLeft();
            rect.top += this.mLastInsets.getSystemWindowInsetTop();
            rect.right -= this.mLastInsets.getSystemWindowInsetRight();
            rect.bottom -= this.mLastInsets.getSystemWindowInsetBottom();
        }
        Rect rect2 = this.mTempRect2;
        GravityCompat.apply(resolveGravity(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
        view.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
        ViewCompat.offsetLeftAndRight(view, layoutParams.mInsetOffsetX);
        ViewCompat.offsetTopAndBottom(view, layoutParams.mInsetOffsetY);
    }

    private void layoutChildWithAnchor(View view, View view2, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = this.mTempRect1;
        Rect rect2 = this.mTempRect2;
        getDescendantRect(view2, rect);
        getDesiredAnchoredChildRect(view, i, rect, rect2);
        view.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
    }

    private void layoutChildWithKeyline(View view, int i, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(resolveKeylineGravity(layoutParams.gravity), i2);
        int i3 = absoluteGravity & 7;
        int i4 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i2 == 1) {
            i = width - i;
        }
        int keyline = getKeyline(i) - measuredWidth;
        absoluteGravity = 0;
        switch (i3) {
            case 1:
                keyline += measuredWidth / 2;
                break;
            case 5:
                keyline += measuredWidth;
                break;
        }
        switch (i4) {
            case 16:
                absoluteGravity = 0 + (measuredHeight / 2);
                break;
            case 80:
                absoluteGravity = 0 + measuredHeight;
                break;
        }
        keyline = Math.max(getPaddingLeft() + layoutParams.leftMargin, Math.min(keyline, ((width - getPaddingRight()) - measuredWidth) - layoutParams.rightMargin));
        int max = Math.max(getPaddingTop() + layoutParams.topMargin, Math.min(absoluteGravity, ((height - getPaddingBottom()) - measuredHeight) - layoutParams.bottomMargin));
        view.layout(keyline, max, keyline + measuredWidth, max + measuredHeight);
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00ad  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0091  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00ad  */
    /* JADX WARNING: Removed duplicated region for block: B:34:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0051  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x006e  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0076  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0091  */
    /* JADX WARNING: Removed duplicated region for block: B:34:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00ad  */
    private void offsetChildByInset(android.view.View r10, android.graphics.Rect r11, int r12) {
        /*
        r9 = this;
        r1 = 1;
        r3 = 0;
        r0 = r10.getLayoutParams();
        r0 = (android.support.design.widget.CoordinatorLayout.LayoutParams) r0;
        r2 = r0.dodgeInsetEdges;
        r4 = android.support.v4.view.GravityCompat.getAbsoluteGravity(r2, r12);
        r2 = r0.getBehavior();
        r5 = r9.mTempRect3;
        if (r2 == 0) goto L_0x00b1;
    L_0x0016:
        r2 = r2.getInsetDodgeRect(r9, r10, r5);
        if (r2 == 0) goto L_0x00b1;
    L_0x001c:
        r2 = r10.getLeft();
        r6 = r10.getTop();
        r7 = r10.getRight();
        r8 = r10.getBottom();
        r5.intersect(r2, r6, r7, r8);
    L_0x002f:
        r2 = r4 & 48;
        r6 = 48;
        if (r2 != r6) goto L_0x00ca;
    L_0x0035:
        r2 = r5.top;
        r6 = r0.topMargin;
        r2 = r2 - r6;
        r6 = r0.mInsetOffsetY;
        r2 = r2 - r6;
        r6 = r11.top;
        if (r2 >= r6) goto L_0x00ca;
    L_0x0043:
        r6 = r11.top;
        r2 = r6 - r2;
        r9.setInsetOffsetY(r10, r2);
        r2 = r1;
    L_0x004b:
        r6 = r4 & 80;
        r7 = 80;
        if (r6 != r7) goto L_0x006c;
    L_0x0051:
        r6 = r9.getHeight();
        r7 = r5.bottom;
        r6 = r6 - r7;
        r7 = r0.bottomMargin;
        r6 = r6 - r7;
        r7 = r0.mInsetOffsetY;
        r6 = r6 + r7;
        r7 = r11.bottom;
        if (r6 >= r7) goto L_0x006c;
    L_0x0064:
        r2 = r11.bottom;
        r2 = r6 - r2;
        r9.setInsetOffsetY(r10, r2);
        r2 = r1;
    L_0x006c:
        if (r2 != 0) goto L_0x0071;
    L_0x006e:
        r9.setInsetOffsetY(r10, r3);
    L_0x0071:
        r2 = r4 & 3;
        r6 = 3;
        if (r2 != r6) goto L_0x00c8;
    L_0x0076:
        r2 = r5.left;
        r6 = r0.leftMargin;
        r2 = r2 - r6;
        r6 = r0.mInsetOffsetX;
        r2 = r2 - r6;
        r6 = r11.left;
        if (r2 >= r6) goto L_0x00c8;
    L_0x0084:
        r6 = r11.left;
        r2 = r6 - r2;
        r9.setInsetOffsetX(r10, r2);
        r2 = r1;
    L_0x008c:
        r4 = r4 & 5;
        r6 = 5;
        if (r4 != r6) goto L_0x00c6;
    L_0x0091:
        r4 = r9.getWidth();
        r5 = r5.right;
        r4 = r4 - r5;
        r5 = r0.rightMargin;
        r4 = r4 - r5;
        r0 = r0.mInsetOffsetX;
        r0 = r0 + r4;
        r4 = r11.right;
        if (r0 >= r4) goto L_0x00c6;
    L_0x00a4:
        r2 = r11.right;
        r0 = r0 - r2;
        r9.setInsetOffsetX(r10, r0);
        r0 = r1;
    L_0x00ab:
        if (r0 != 0) goto L_0x00b0;
    L_0x00ad:
        r9.setInsetOffsetX(r10, r3);
    L_0x00b0:
        return;
    L_0x00b1:
        r2 = r10.getLeft();
        r6 = r10.getTop();
        r7 = r10.getRight();
        r8 = r10.getBottom();
        r5.set(r2, r6, r7, r8);
        goto L_0x002f;
    L_0x00c6:
        r0 = r2;
        goto L_0x00ab;
    L_0x00c8:
        r2 = r3;
        goto L_0x008c;
    L_0x00ca:
        r2 = r3;
        goto L_0x004b;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.CoordinatorLayout.offsetChildByInset(android.view.View, android.graphics.Rect, int):void");
    }

    static Behavior parseBehavior(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Object str2;
        if (str2.startsWith(".")) {
            str2 = context.getPackageName() + str2;
        } else if (str2.indexOf(46) < 0 && !TextUtils.isEmpty(WIDGET_PACKAGE_NAME)) {
            str2 = WIDGET_PACKAGE_NAME + '.' + str2;
        }
        try {
            Map map;
            Map map2 = (Map) sConstructors.get();
            if (map2 == null) {
                HashMap hashMap = new HashMap();
                sConstructors.set(hashMap);
                map = hashMap;
            } else {
                map = map2;
            }
            Constructor constructor = (Constructor) map.get(str2);
            if (constructor == null) {
                constructor = Class.forName(str2, true, context.getClassLoader()).getConstructor(CONSTRUCTOR_PARAMS);
                constructor.setAccessible(true);
                map.put(str2, constructor);
            }
            return (Behavior) constructor.newInstance(new Object[]{context, attributeSet});
        } catch (Exception e) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str2, e);
        }
    }

    private boolean performIntercept(MotionEvent motionEvent, int i) {
        boolean z;
        boolean z2 = false;
        Object obj = null;
        MotionEvent motionEvent2 = null;
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        List list = this.mTempList1;
        getTopSortedChildren(list);
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj2;
            MotionEvent motionEvent3;
            View view = (View) list.get(i2);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Behavior behavior = layoutParams.getBehavior();
            if ((!z2 && obj == null) || actionMasked == 0) {
                if (!(z2 || behavior == null)) {
                    switch (i) {
                        case 0:
                            z2 = behavior.onInterceptTouchEvent(this, view, motionEvent);
                            break;
                        case 1:
                            z2 = behavior.onTouchEvent(this, view, motionEvent);
                            break;
                    }
                    if (z2) {
                        this.mBehaviorTouchView = view;
                    }
                }
                z = z2;
                boolean didBlockInteraction = layoutParams.didBlockInteraction();
                boolean isBlockingInteractionBelow = layoutParams.isBlockingInteractionBelow(this, view);
                Object obj3 = (!isBlockingInteractionBelow || didBlockInteraction) ? null : 1;
                if (isBlockingInteractionBelow && obj3 == null) {
                    list.clear();
                    return z;
                }
                MotionEvent motionEvent4 = motionEvent2;
                obj2 = obj3;
                motionEvent3 = motionEvent4;
            } else if (behavior != null) {
                if (motionEvent2 == null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    motionEvent3 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                } else {
                    motionEvent3 = motionEvent2;
                }
                switch (i) {
                    case 0:
                        behavior.onInterceptTouchEvent(this, view, motionEvent3);
                        break;
                    case 1:
                        behavior.onTouchEvent(this, view, motionEvent3);
                        break;
                }
                obj2 = obj;
                z = z2;
            } else {
                motionEvent3 = motionEvent2;
                z = z2;
                obj2 = obj;
            }
            i2++;
            obj = obj2;
            z2 = z;
            motionEvent2 = motionEvent3;
        }
        z = z2;
        list.clear();
        return z;
    }

    private void prepareChildren(boolean z) {
        if (z || this.mChildDag.size() != getChildCount() || this.mChildDag.size() != this.mDependencySortedChildren.size()) {
            this.mDependencySortedChildren.clear();
            this.mChildDag.clear();
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                getResolvedLayoutParams(childAt).findAnchorView(this, childAt);
                this.mChildDag.addNode(childAt);
                for (int i2 = 0; i2 < childCount; i2++) {
                    if (i2 != i) {
                        View childAt2 = getChildAt(i2);
                        if (getResolvedLayoutParams(childAt2).dependsOn(this, childAt2, childAt)) {
                            if (!this.mChildDag.contains(childAt2)) {
                                this.mChildDag.addNode(childAt2);
                            }
                            this.mChildDag.addEdge(childAt, childAt2);
                        }
                    }
                }
            }
            this.mDependencySortedChildren.addAll(this.mChildDag.getSortedList());
            Collections.reverse(this.mDependencySortedChildren);
        }
    }

    private void resetTouchBehaviors() {
        if (this.mBehaviorTouchView != null) {
            Behavior behavior = ((LayoutParams) this.mBehaviorTouchView.getLayoutParams()).getBehavior();
            if (behavior != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                behavior.onTouchEvent(this, this.mBehaviorTouchView, obtain);
                obtain.recycle();
            }
            this.mBehaviorTouchView = null;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ((LayoutParams) getChildAt(i).getLayoutParams()).resetTouchBehaviorTracking();
        }
        this.mDisallowInterceptReset = false;
    }

    private static int resolveAnchoredChildGravity(int i) {
        return i == 0 ? 17 : i;
    }

    private static int resolveGravity(int i) {
        return i == 0 ? 8388659 : i;
    }

    private static int resolveKeylineGravity(int i) {
        return i == 0 ? 8388661 : i;
    }

    private void setInsetOffsetX(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.mInsetOffsetX != i) {
            ViewCompat.offsetLeftAndRight(view, i - layoutParams.mInsetOffsetX);
            layoutParams.mInsetOffsetX = i;
        }
    }

    private void setInsetOffsetY(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.mInsetOffsetY != i) {
            ViewCompat.offsetTopAndBottom(view, i - layoutParams.mInsetOffsetY);
            layoutParams.mInsetOffsetY = i;
        }
    }

    private void setupForInsets() {
        if (VERSION.SDK_INT >= 21) {
            if (ViewCompat.getFitsSystemWindows(this)) {
                if (this.mApplyWindowInsetsListener == null) {
                    this.mApplyWindowInsetsListener = new OnApplyWindowInsetsListener() {
                        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                            return CoordinatorLayout.this.setWindowInsets(windowInsetsCompat);
                        }
                    };
                }
                ViewCompat.setOnApplyWindowInsetsListener(this, this.mApplyWindowInsetsListener);
                setSystemUiVisibility(1280);
                return;
            }
            ViewCompat.setOnApplyWindowInsetsListener(this, null);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void addPreDrawListener() {
        if (this.mIsAttachedToWindow) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new OnPreDrawListener();
            }
            getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = true;
    }

    /* Access modifiers changed, original: protected */
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public void dispatchDependentViewsChanged(View view) {
        boolean z = false;
        prepareChildren(false);
        List incomingEdges = this.mChildDag.getIncomingEdges(view);
        if (incomingEdges != null && !incomingEdges.isEmpty()) {
            while (true) {
                boolean z2 = z;
                if (z2 < incomingEdges.size()) {
                    View view2 = (View) incomingEdges.get(z2);
                    Behavior behavior = ((LayoutParams) view2.getLayoutParams()).getBehavior();
                    if (behavior != null) {
                        behavior.onDependentViewChanged(this, view2, view);
                    }
                    z = z2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public boolean doViewsOverlap(View view, View view2) {
        if (view.getVisibility() != 0 || view2.getVisibility() != 0) {
            return false;
        }
        Rect rect = this.mTempRect1;
        getChildRect(view, view.getParent() != this, rect);
        Rect rect2 = this.mTempRect2;
        getChildRect(view2, view2.getParent() != this, rect2);
        return rect.left <= rect2.right && rect.top <= rect2.bottom && rect.right >= rect2.left && rect.bottom >= rect2.top;
    }

    /* Access modifiers changed, original: protected */
    public boolean drawChild(Canvas canvas, View view, long j) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.mBehavior != null) {
            float scrimOpacity = layoutParams.mBehavior.getScrimOpacity(this, view);
            if (scrimOpacity > 0.0f) {
                if (this.mScrimPaint == null) {
                    this.mScrimPaint = new Paint();
                }
                this.mScrimPaint.setColor(layoutParams.mBehavior.getScrimColor(this, view));
                this.mScrimPaint.setAlpha(MathUtils.constrain(Math.round(scrimOpacity * 255.0f), 0, 255));
                int save = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect((float) view.getLeft(), (float) view.getTop(), (float) view.getRight(), (float) view.getBottom(), Op.DIFFERENCE);
                }
                canvas.drawRect((float) getPaddingLeft(), (float) getPaddingTop(), (float) (getWidth() - getPaddingRight()), (float) (getHeight() - getPaddingBottom()), this.mScrimPaint);
                canvas.restoreToCount(save);
            }
        }
        return super.drawChild(canvas, view, j);
    }

    /* Access modifiers changed, original: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        int i = 0;
        Drawable drawable = this.mStatusBarBackground;
        if (drawable != null && drawable.isStateful()) {
            i = 0 | drawable.setState(drawableState);
        }
        if (i != 0) {
            invalidate();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void ensurePreDrawListener() {
        boolean z = false;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (hasDependencies(getChildAt(i))) {
                z = true;
                break;
            }
        }
        if (z == this.mNeedsPreDrawListener) {
            return;
        }
        if (z) {
            addPreDrawListener();
        } else {
            removePreDrawListener();
        }
    }

    /* Access modifiers changed, original: protected */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* Access modifiers changed, original: protected */
    public LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof MarginLayoutParams ? new LayoutParams((MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* Access modifiers changed, original: 0000 */
    public void getChildRect(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            getDescendantRect(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    @NonNull
    public List<View> getDependencies(@NonNull View view) {
        prepareChildren(false);
        List outgoingEdges = this.mChildDag.getOutgoingEdges(view);
        this.mTempDependenciesList.clear();
        if (outgoingEdges != null) {
            this.mTempDependenciesList.addAll(outgoingEdges);
        }
        return this.mTempDependenciesList;
    }

    /* Access modifiers changed, original: final */
    @VisibleForTesting
    public final List<View> getDependencySortedChildren() {
        prepareChildren(true);
        return Collections.unmodifiableList(this.mDependencySortedChildren);
    }

    @NonNull
    public List<View> getDependents(@NonNull View view) {
        prepareChildren(false);
        List incomingEdges = this.mChildDag.getIncomingEdges(view);
        this.mTempDependenciesList.clear();
        if (incomingEdges != null) {
            this.mTempDependenciesList.addAll(incomingEdges);
        }
        return this.mTempDependenciesList;
    }

    /* Access modifiers changed, original: 0000 */
    public void getDescendantRect(View view, Rect rect) {
        ViewGroupUtils.getDescendantRect(this, view, rect);
    }

    /* Access modifiers changed, original: 0000 */
    public void getDesiredAnchoredChildRect(View view, int i, Rect rect, Rect rect2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        getDesiredAnchoredChildRectWithoutConstraints(view, i, rect, rect2, layoutParams, measuredWidth, measuredHeight);
        constrainChildRect(layoutParams, rect2, measuredWidth, measuredHeight);
    }

    /* Access modifiers changed, original: 0000 */
    public void getLastChildRect(View view, Rect rect) {
        rect.set(((LayoutParams) view.getLayoutParams()).getLastChildRect());
    }

    /* Access modifiers changed, original: final */
    public final WindowInsetsCompat getLastWindowInsets() {
        return this.mLastInsets;
    }

    public int getNestedScrollAxes() {
        return this.mNestedScrollingParentHelper.getNestedScrollAxes();
    }

    /* Access modifiers changed, original: 0000 */
    public LayoutParams getResolvedLayoutParams(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.mBehaviorResolved) {
            DefaultBehavior defaultBehavior = null;
            for (Class cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                defaultBehavior = (DefaultBehavior) cls.getAnnotation(DefaultBehavior.class);
                if (defaultBehavior != null) {
                    break;
                }
            }
            DefaultBehavior defaultBehavior2 = defaultBehavior;
            if (defaultBehavior2 != null) {
                try {
                    layoutParams.setBehavior((Behavior) defaultBehavior2.value().newInstance());
                } catch (Exception e) {
                    Log.e(TAG, "Default behavior class " + defaultBehavior2.value().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                }
            }
            layoutParams.mBehaviorResolved = true;
        }
        return layoutParams;
    }

    @Nullable
    public Drawable getStatusBarBackground() {
        return this.mStatusBarBackground;
    }

    /* Access modifiers changed, original: protected */
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    /* Access modifiers changed, original: protected */
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    /* Access modifiers changed, original: 0000 */
    public boolean hasDependencies(View view) {
        prepareChildren(false);
        return this.mChildDag.hasOutgoingEdges(view);
    }

    public boolean isPointInChildBounds(View view, int i, int i2) {
        Rect rect = this.mTempRect1;
        getDescendantRect(view, rect);
        return rect.contains(i, i2);
    }

    /* Access modifiers changed, original: 0000 */
    public void offsetChildToAnchor(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.mAnchorView != null) {
            Rect rect = this.mTempRect1;
            Rect rect2 = this.mTempRect2;
            Rect rect3 = this.mTempRect3;
            getDescendantRect(layoutParams.mAnchorView, rect);
            getChildRect(view, false, rect2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            getDesiredAnchoredChildRectWithoutConstraints(view, i, rect, rect3, layoutParams, measuredWidth, measuredHeight);
            boolean z = (rect3.left == rect2.left && rect3.top == rect2.top) ? false : true;
            constrainChildRect(layoutParams, rect3, measuredWidth, measuredHeight);
            int i2 = rect3.left - rect2.left;
            int i3 = rect3.top - rect2.top;
            if (i2 != 0) {
                ViewCompat.offsetLeftAndRight(view, i2);
            }
            if (i3 != 0) {
                ViewCompat.offsetTopAndBottom(view, i3);
            }
            if (z) {
                Behavior behavior = layoutParams.getBehavior();
                if (behavior != null) {
                    behavior.onDependentViewChanged(this, view, layoutParams.mAnchorView);
                }
            }
        }
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        resetTouchBehaviors();
        if (this.mNeedsPreDrawListener) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new OnPreDrawListener();
            }
            getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        }
        if (this.mLastInsets == null && ViewCompat.getFitsSystemWindows(this)) {
            ViewCompat.requestApplyInsets(this);
        }
        this.mIsAttachedToWindow = true;
    }

    /* Access modifiers changed, original: final */
    public final void onChildViewsChanged(int i) {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int size = this.mDependencySortedChildren.size();
        Rect rect = this.mTempRect4;
        rect.setEmpty();
        for (int i2 = 0; i2 < size; i2++) {
            int i3;
            View view = (View) this.mDependencySortedChildren.get(i2);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            for (i3 = 0; i3 < i2; i3++) {
                if (layoutParams.mAnchorDirectChild == ((View) this.mDependencySortedChildren.get(i3))) {
                    offsetChildToAnchor(view, layoutDirection);
                }
            }
            Rect rect2 = this.mTempRect1;
            getChildRect(view, true, rect2);
            if (!(layoutParams.insetEdge == 0 || rect2.isEmpty())) {
                i3 = GravityCompat.getAbsoluteGravity(layoutParams.insetEdge, layoutDirection);
                switch (i3 & 112) {
                    case 48:
                        rect.top = Math.max(rect.top, rect2.bottom);
                        break;
                    case 80:
                        rect.bottom = Math.max(rect.bottom, getHeight() - rect2.top);
                        break;
                }
                switch (i3 & 7) {
                    case 3:
                        rect.left = Math.max(rect.left, rect2.right);
                        break;
                    case 5:
                        rect.right = Math.max(rect.right, getWidth() - rect2.left);
                        break;
                }
            }
            if (layoutParams.dodgeInsetEdges != 0) {
                offsetChildByInset(view, rect, layoutDirection);
            }
            if (i == 0) {
                Rect rect3 = this.mTempRect2;
                getLastChildRect(view, rect3);
                if (rect3.equals(rect2)) {
                } else {
                    recordLastChildRect(view, rect2);
                }
            }
            for (i3 = i2 + 1; i3 < size; i3++) {
                View view2 = (View) this.mDependencySortedChildren.get(i3);
                LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
                Behavior behavior = layoutParams2.getBehavior();
                if (behavior != null && behavior.layoutDependsOn(this, view2, view)) {
                    if (i == 0 && layoutParams2.getChangedAfterNestedScroll()) {
                        layoutParams2.resetChangedAfterNestedScroll();
                    } else {
                        boolean z;
                        switch (i) {
                            case 2:
                                behavior.onDependentViewRemoved(this, view2, view);
                                z = true;
                                break;
                            default:
                                z = behavior.onDependentViewChanged(this, view2, view);
                                break;
                        }
                        if (i == 1) {
                            layoutParams2.setChangedAfterNestedScroll(z);
                        }
                    }
                }
            }
        }
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        resetTouchBehaviors();
        if (this.mNeedsPreDrawListener && this.mOnPreDrawListener != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        if (this.mNestedScrollingTarget != null) {
            onStopNestedScroll(this.mNestedScrollingTarget);
        }
        this.mIsAttachedToWindow = false;
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mDrawStatusBarBackground && this.mStatusBarBackground != null) {
            int systemWindowInsetTop = this.mLastInsets != null ? this.mLastInsets.getSystemWindowInsetTop() : 0;
            if (systemWindowInsetTop > 0) {
                this.mStatusBarBackground.setBounds(0, 0, getWidth(), systemWindowInsetTop);
                this.mStatusBarBackground.draw(canvas);
            }
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = null;
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (actionMasked == 0) {
            resetTouchBehaviors();
        }
        boolean performIntercept = performIntercept(motionEvent, 0);
        if (motionEvent2 != null) {
            motionEvent2.recycle();
        }
        if (actionMasked == 1 || actionMasked == 3) {
            resetTouchBehaviors();
        }
        return performIntercept;
    }

    /* Access modifiers changed, original: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int size = this.mDependencySortedChildren.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = (View) this.mDependencySortedChildren.get(i5);
            Behavior behavior = ((LayoutParams) view.getLayoutParams()).getBehavior();
            if (behavior == null || !behavior.onLayoutChild(this, view, layoutDirection)) {
                onLayoutChild(view, layoutDirection);
            }
        }
    }

    public void onLayoutChild(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.checkAnchorChanged()) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        } else if (layoutParams.mAnchorView != null) {
            layoutChildWithAnchor(view, layoutParams.mAnchorView, i);
        } else if (layoutParams.keyline >= 0) {
            layoutChildWithKeyline(view, layoutParams.keyline, i);
        } else {
            layoutChild(view, i);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onMeasure(int i, int i2) {
        prepareChildren(true);
        ensurePreDrawListener();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        Object obj = layoutDirection == 1 ? 1 : null;
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size2 = MeasureSpec.getSize(i2);
        int i3 = paddingLeft + paddingRight;
        int i4 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        paddingBottom = getSuggestedMinimumHeight();
        Object obj2 = (this.mLastInsets == null || !ViewCompat.getFitsSystemWindows(this)) ? null : 1;
        int size3 = this.mDependencySortedChildren.size();
        int i5 = 0;
        int i6 = 0;
        int i7 = paddingBottom;
        int i8 = suggestedMinimumWidth;
        while (i5 < size3) {
            int i9;
            View view = (View) this.mDependencySortedChildren.get(i5);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int i10 = 0;
            if (layoutParams.keyline >= 0 && mode != 0) {
                int keyline = getKeyline(layoutParams.keyline);
                paddingTop = GravityCompat.getAbsoluteGravity(resolveKeylineGravity(layoutParams.gravity), layoutDirection) & 7;
                if ((paddingTop == 3 && obj == null) || (paddingTop == 5 && obj != null)) {
                    i10 = Math.max(0, (size - paddingRight) - keyline);
                } else if ((paddingTop == 5 && obj == null) || (paddingTop == 3 && obj != null)) {
                    i10 = Math.max(0, keyline - paddingLeft);
                }
            }
            if (obj2 == null || ViewCompat.getFitsSystemWindows(view)) {
                i9 = i2;
                suggestedMinimumWidth = i;
            } else {
                paddingTop = this.mLastInsets.getSystemWindowInsetTop() + this.mLastInsets.getSystemWindowInsetBottom();
                suggestedMinimumWidth = MeasureSpec.makeMeasureSpec(size - (this.mLastInsets.getSystemWindowInsetLeft() + this.mLastInsets.getSystemWindowInsetRight()), mode);
                i9 = MeasureSpec.makeMeasureSpec(size2 - paddingTop, mode2);
            }
            Behavior behavior = layoutParams.getBehavior();
            if (behavior == null || !behavior.onMeasureChild(this, view, suggestedMinimumWidth, i10, i9, 0)) {
                onMeasureChild(view, suggestedMinimumWidth, i10, i9, 0);
            }
            i10 = Math.max(i8, ((view.getMeasuredWidth() + i3) + layoutParams.leftMargin) + layoutParams.rightMargin);
            suggestedMinimumWidth = Math.max(i7, ((view.getMeasuredHeight() + i4) + layoutParams.topMargin) + layoutParams.bottomMargin);
            i5++;
            i6 = ViewCompat.combineMeasuredStates(i6, ViewCompat.getMeasuredState(view));
            i7 = suggestedMinimumWidth;
            i8 = i10;
        }
        setMeasuredDimension(ViewCompat.resolveSizeAndState(i8, i, ViewCompat.MEASURED_STATE_MASK & i6), ViewCompat.resolveSizeAndState(i7, i2, i6 << 16));
    }

    public void onMeasureChild(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        int childCount = getChildCount();
        int i = 0;
        int i2 = 0;
        while (i < childCount) {
            int onNestedFling;
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.isNestedScrollAccepted()) {
                Behavior behavior = layoutParams.getBehavior();
                onNestedFling = behavior != null ? behavior.onNestedFling(this, childAt, view, f, f2, z) | i2 : i2;
            } else {
                onNestedFling = i2;
            }
            i++;
            i2 = onNestedFling;
        }
        if (i2 != 0) {
            onChildViewsChanged(1);
        }
        return i2;
    }

    public boolean onNestedPreFling(View view, float f, float f2) {
        int childCount = getChildCount();
        int i = 0;
        int i2 = 0;
        while (i < childCount) {
            int onNestedPreFling;
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.isNestedScrollAccepted()) {
                Behavior behavior = layoutParams.getBehavior();
                onNestedPreFling = behavior != null ? behavior.onNestedPreFling(this, childAt, view, f, f2) | i2 : i2;
            } else {
                onNestedPreFling = i2;
            }
            i++;
            i2 = onNestedPreFling;
        }
        return i2;
    }

    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        int i3 = 0;
        int i4 = 0;
        Object obj = null;
        int childCount = getChildCount();
        int i5 = 0;
        while (i5 < childCount) {
            int max;
            int max2;
            Object obj2;
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.isNestedScrollAccepted()) {
                Behavior behavior = layoutParams.getBehavior();
                if (behavior != null) {
                    int[] iArr2 = this.mTempIntPair;
                    this.mTempIntPair[1] = 0;
                    iArr2[0] = 0;
                    behavior.onNestedPreScroll(this, childAt, view, i, i2, this.mTempIntPair);
                    max = i > 0 ? Math.max(i3, this.mTempIntPair[0]) : Math.min(i3, this.mTempIntPair[0]);
                    max2 = i2 > 0 ? Math.max(i4, this.mTempIntPair[1]) : Math.min(i4, this.mTempIntPair[1]);
                    int obj22 = 1;
                } else {
                    obj22 = obj;
                    max = i3;
                    max2 = i4;
                }
            } else {
                obj22 = obj;
                max = i3;
                max2 = i4;
            }
            i5++;
            i4 = max2;
            i3 = max;
            obj = obj22;
        }
        iArr[0] = i3;
        iArr[1] = i4;
        if (obj != null) {
            onChildViewsChanged(1);
        }
    }

    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        Object obj = null;
        int i5 = 0;
        while (i5 < childCount) {
            Object obj2;
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.isNestedScrollAccepted()) {
                Behavior behavior = layoutParams.getBehavior();
                if (behavior != null) {
                    behavior.onNestedScroll(this, childAt, view, i, i2, i3, i4);
                    obj2 = 1;
                } else {
                    obj2 = obj;
                }
            } else {
                obj2 = obj;
            }
            i5++;
            obj = obj2;
        }
        if (obj != null) {
            onChildViewsChanged(1);
        }
    }

    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.mNestedScrollingParentHelper.onNestedScrollAccepted(view, view2, i);
        this.mNestedScrollingDirectChild = view;
        this.mNestedScrollingTarget = view2;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.isNestedScrollAccepted()) {
                Behavior behavior = layoutParams.getBehavior();
                if (behavior != null) {
                    behavior.onNestedScrollAccepted(this, childAt, view, view2, i);
                }
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            SparseArray sparseArray = savedState.behaviorStates;
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                int id = childAt.getId();
                Behavior behavior = getResolvedLayoutParams(childAt).getBehavior();
                if (!(id == -1 || behavior == null)) {
                    Parcelable parcelable2 = (Parcelable) sparseArray.get(id);
                    if (parcelable2 != null) {
                        behavior.onRestoreInstanceState(this, childAt, parcelable2);
                    }
                }
            }
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    /* Access modifiers changed, original: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior behavior = ((LayoutParams) childAt.getLayoutParams()).getBehavior();
            if (!(id == -1 || behavior == null)) {
                Parcelable onSaveInstanceState = behavior.onSaveInstanceState(this, childAt);
                if (onSaveInstanceState != null) {
                    sparseArray.append(id, onSaveInstanceState);
                }
            }
        }
        savedState.behaviorStates = sparseArray;
        return savedState;
    }

    public boolean onStartNestedScroll(View view, View view2, int i) {
        int childCount = getChildCount();
        int i2 = 0;
        int i3 = 0;
        while (i2 < childCount) {
            int i4;
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            Behavior behavior = layoutParams.getBehavior();
            if (behavior != null) {
                boolean onStartNestedScroll = behavior.onStartNestedScroll(this, childAt, view, view2, i);
                i4 = i3 | onStartNestedScroll;
                layoutParams.acceptNestedScroll(onStartNestedScroll);
            } else {
                layoutParams.acceptNestedScroll(false);
                i4 = i3;
            }
            i2++;
            i3 = i4;
        }
        return i3;
    }

    public void onStopNestedScroll(View view) {
        this.mNestedScrollingParentHelper.onStopNestedScroll(view);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.isNestedScrollAccepted()) {
                Behavior behavior = layoutParams.getBehavior();
                if (behavior != null) {
                    behavior.onStopNestedScroll(this, childAt, view);
                }
                layoutParams.resetNestedScroll();
                layoutParams.resetChangedAfterNestedScroll();
            }
        }
        this.mNestedScrollingDirectChild = null;
        this.mNestedScrollingTarget = null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0043  */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0038  */
    public boolean onTouchEvent(android.view.MotionEvent r12) {
        /*
        r11 = this;
        r4 = 3;
        r10 = 1;
        r5 = 0;
        r7 = 0;
        r2 = 0;
        r9 = android.support.v4.view.MotionEventCompat.getActionMasked(r12);
        r0 = r11.mBehaviorTouchView;
        if (r0 != 0) goto L_0x005d;
    L_0x000d:
        r0 = r11.performIntercept(r12, r10);
        if (r0 == 0) goto L_0x005a;
    L_0x0013:
        r1 = r0;
    L_0x0014:
        r0 = r11.mBehaviorTouchView;
        r0 = r0.getLayoutParams();
        r0 = (android.support.design.widget.CoordinatorLayout.LayoutParams) r0;
        r0 = r0.getBehavior();
        if (r0 == 0) goto L_0x0058;
    L_0x0022:
        r3 = r11.mBehaviorTouchView;
        r0 = r0.onTouchEvent(r11, r3, r12);
        r8 = r0;
    L_0x0029:
        r0 = r11.mBehaviorTouchView;
        if (r0 != 0) goto L_0x0043;
    L_0x002d:
        r0 = super.onTouchEvent(r12);
        r8 = r8 | r0;
    L_0x0032:
        if (r8 != 0) goto L_0x0036;
    L_0x0034:
        if (r9 != 0) goto L_0x0036;
    L_0x0036:
        if (r2 == 0) goto L_0x003b;
    L_0x0038:
        r2.recycle();
    L_0x003b:
        if (r9 == r10) goto L_0x003f;
    L_0x003d:
        if (r9 != r4) goto L_0x0042;
    L_0x003f:
        r11.resetTouchBehaviors();
    L_0x0042:
        return r8;
    L_0x0043:
        if (r1 == 0) goto L_0x0032;
    L_0x0045:
        if (r2 != 0) goto L_0x0056;
    L_0x0047:
        r0 = android.os.SystemClock.uptimeMillis();
        r2 = r0;
        r6 = r5;
        r0 = android.view.MotionEvent.obtain(r0, r2, r4, r5, r6, r7);
    L_0x0051:
        super.onTouchEvent(r0);
        r2 = r0;
        goto L_0x0032;
    L_0x0056:
        r0 = r2;
        goto L_0x0051;
    L_0x0058:
        r8 = r7;
        goto L_0x0029;
    L_0x005a:
        r1 = r0;
        r8 = r7;
        goto L_0x0029;
    L_0x005d:
        r1 = r7;
        goto L_0x0014;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* Access modifiers changed, original: 0000 */
    public void recordLastChildRect(View view, Rect rect) {
        ((LayoutParams) view.getLayoutParams()).setLastChildRect(rect);
    }

    /* Access modifiers changed, original: 0000 */
    public void removePreDrawListener() {
        if (this.mIsAttachedToWindow && this.mOnPreDrawListener != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = false;
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        Behavior behavior = ((LayoutParams) view.getLayoutParams()).getBehavior();
        return (behavior == null || !behavior.onRequestChildRectangleOnScreen(this, view, rect, z)) ? super.requestChildRectangleOnScreen(view, rect, z) : true;
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z && !this.mDisallowInterceptReset) {
            resetTouchBehaviors();
            this.mDisallowInterceptReset = true;
        }
    }

    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        setupForInsets();
    }

    public void setOnHierarchyChangeListener(OnHierarchyChangeListener onHierarchyChangeListener) {
        this.mOnHierarchyChangeListener = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        Drawable drawable2 = null;
        if (this.mStatusBarBackground != drawable) {
            if (this.mStatusBarBackground != null) {
                this.mStatusBarBackground.setCallback(null);
            }
            if (drawable != null) {
                drawable2 = drawable.mutate();
            }
            this.mStatusBarBackground = drawable2;
            if (this.mStatusBarBackground != null) {
                if (this.mStatusBarBackground.isStateful()) {
                    this.mStatusBarBackground.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.mStatusBarBackground, ViewCompat.getLayoutDirection(this));
                this.mStatusBarBackground.setVisible(getVisibility() == 0, false);
                this.mStatusBarBackground.setCallback(this);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarBackgroundColor(@ColorInt int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(@DrawableRes int i) {
        setStatusBarBackground(i != 0 ? ContextCompat.getDrawable(getContext(), i) : null);
    }

    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        if (this.mStatusBarBackground != null && this.mStatusBarBackground.isVisible() != z) {
            this.mStatusBarBackground.setVisible(z, false);
        }
    }

    /* Access modifiers changed, original: final */
    public final WindowInsetsCompat setWindowInsets(WindowInsetsCompat windowInsetsCompat) {
        boolean z = true;
        if (ViewUtils.objectEquals(this.mLastInsets, windowInsetsCompat)) {
            return windowInsetsCompat;
        }
        this.mLastInsets = windowInsetsCompat;
        boolean z2 = windowInsetsCompat != null && windowInsetsCompat.getSystemWindowInsetTop() > 0;
        this.mDrawStatusBarBackground = z2;
        if (this.mDrawStatusBarBackground || getBackground() != null) {
            z = false;
        }
        setWillNotDraw(z);
        windowInsetsCompat = dispatchApplyWindowInsetsToBehaviors(windowInsetsCompat);
        requestLayout();
        return windowInsetsCompat;
    }

    /* Access modifiers changed, original: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mStatusBarBackground;
    }
}
