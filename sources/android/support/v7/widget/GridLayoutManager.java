package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.Recycler;
import android.support.v7.widget.RecyclerView.State;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.Arrays;

public class GridLayoutManager extends LinearLayoutManager {
    private static final boolean DEBUG = false;
    public static final int DEFAULT_SPAN_COUNT = -1;
    private static final String TAG = "GridLayoutManager";
    int[] mCachedBorders;
    final Rect mDecorInsets = new Rect();
    boolean mPendingSpanCountChange = false;
    final SparseIntArray mPreLayoutSpanIndexCache = new SparseIntArray();
    final SparseIntArray mPreLayoutSpanSizeCache = new SparseIntArray();
    View[] mSet;
    int mSpanCount = -1;
    SpanSizeLookup mSpanSizeLookup = new DefaultSpanSizeLookup();

    public static abstract class SpanSizeLookup {
        private boolean mCacheSpanIndices = false;
        final SparseIntArray mSpanIndexCache = new SparseIntArray();

        /* Access modifiers changed, original: 0000 */
        public int findReferenceIndexFromCache(int i) {
            int i2 = 0;
            int size = this.mSpanIndexCache.size() - 1;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (this.mSpanIndexCache.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            size = i2 - 1;
            return (size < 0 || size >= this.mSpanIndexCache.size()) ? -1 : this.mSpanIndexCache.keyAt(size);
        }

        /* Access modifiers changed, original: 0000 */
        public int getCachedSpanIndex(int i, int i2) {
            if (!this.mCacheSpanIndices) {
                return getSpanIndex(i, i2);
            }
            int i3 = this.mSpanIndexCache.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            i3 = getSpanIndex(i, i2);
            this.mSpanIndexCache.put(i, i3);
            return i3;
        }

        public int getSpanGroupIndex(int i, int i2) {
            int spanSize = getSpanSize(i);
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (i3 < i) {
                int spanSize2 = getSpanSize(i3);
                i5 += spanSize2;
                if (i5 == i2) {
                    i4++;
                    spanSize2 = 0;
                } else if (i5 > i2) {
                    i4++;
                } else {
                    spanSize2 = i5;
                }
                i3++;
                i5 = spanSize2;
            }
            return i5 + spanSize > i2 ? i4 + 1 : i4;
        }

        /* JADX WARNING: Removed duplicated region for block: B:11:0x002a  */
        /* JADX WARNING: Removed duplicated region for block: B:26:? A:{SYNTHETIC, RETURN} */
        /* JADX WARNING: Removed duplicated region for block: B:19:0x003f  */
        public int getSpanIndex(int r6, int r7) {
            /*
            r5 = this;
            r1 = 0;
            r4 = r5.getSpanSize(r6);
            if (r4 != r7) goto L_0x0008;
        L_0x0007:
            return r1;
        L_0x0008:
            r0 = r5.mCacheSpanIndices;
            if (r0 == 0) goto L_0x0041;
        L_0x000c:
            r0 = r5.mSpanIndexCache;
            r0 = r0.size();
            if (r0 <= 0) goto L_0x0041;
        L_0x0014:
            r0 = r5.findReferenceIndexFromCache(r6);
            if (r0 < 0) goto L_0x0041;
        L_0x001a:
            r2 = r5.mSpanIndexCache;
            r2 = r2.get(r0);
            r3 = r5.getSpanSize(r0);
            r2 = r2 + r3;
            r0 = r0 + 1;
        L_0x0027:
            r3 = r0;
        L_0x0028:
            if (r3 >= r6) goto L_0x003b;
        L_0x002a:
            r0 = r5.getSpanSize(r3);
            r2 = r2 + r0;
            if (r2 != r7) goto L_0x0037;
        L_0x0031:
            r0 = r1;
        L_0x0032:
            r2 = r3 + 1;
            r3 = r2;
            r2 = r0;
            goto L_0x0028;
        L_0x0037:
            if (r2 > r7) goto L_0x0032;
        L_0x0039:
            r0 = r2;
            goto L_0x0032;
        L_0x003b:
            r0 = r2 + r4;
            if (r0 > r7) goto L_0x0007;
        L_0x003f:
            r1 = r2;
            goto L_0x0007;
        L_0x0041:
            r0 = r1;
            r2 = r1;
            goto L_0x0027;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.GridLayoutManager$SpanSizeLookup.getSpanIndex(int, int):int");
        }

        public abstract int getSpanSize(int i);

        public void invalidateSpanIndexCache() {
            this.mSpanIndexCache.clear();
        }

        public boolean isSpanIndexCacheEnabled() {
            return this.mCacheSpanIndices;
        }

        public void setSpanIndexCacheEnabled(boolean z) {
            this.mCacheSpanIndices = z;
        }
    }

    public static final class DefaultSpanSizeLookup extends SpanSizeLookup {
        public int getSpanIndex(int i, int i2) {
            return i % i2;
        }

        public int getSpanSize(int i) {
            return 1;
        }
    }

    public static class LayoutParams extends android.support.v7.widget.RecyclerView.LayoutParams {
        public static final int INVALID_SPAN_ID = -1;
        private int mSpanIndex = -1;
        private int mSpanSize = 0;

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(android.support.v7.widget.RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public int getSpanIndex() {
            return this.mSpanIndex;
        }

        public int getSpanSize() {
            return this.mSpanSize;
        }
    }

    public GridLayoutManager(Context context, int i) {
        super(context);
        setSpanCount(i);
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        setSpanCount(i);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        setSpanCount(LayoutManager.getProperties(context, attributeSet, i, i2).spanCount);
    }

    private void assignSpans(Recycler recycler, State state, int i, int i2, boolean z) {
        int i3;
        int i4;
        if (z) {
            i3 = 1;
            i4 = 0;
        } else {
            i3 = i - 1;
            i = -1;
            i4 = i3;
            i3 = -1;
        }
        int i5 = 0;
        for (int i6 = i4; i6 != i; i6 += i3) {
            View view = this.mSet[i6];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.mSpanSize = getSpanSize(recycler, state, getPosition(view));
            layoutParams.mSpanIndex = i5;
            i5 += layoutParams.mSpanSize;
        }
    }

    private void cachePreLayoutSpanMapping() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            int viewLayoutPosition = layoutParams.getViewLayoutPosition();
            this.mPreLayoutSpanSizeCache.put(viewLayoutPosition, layoutParams.getSpanSize());
            this.mPreLayoutSpanIndexCache.put(viewLayoutPosition, layoutParams.getSpanIndex());
        }
    }

    private void calculateItemBorders(int i) {
        this.mCachedBorders = calculateItemBorders(this.mCachedBorders, this.mSpanCount, i);
    }

    static int[] calculateItemBorders(int[] iArr, int i, int i2) {
        int i3 = 0;
        if (!(iArr != null && iArr.length == i + 1 && iArr[iArr.length - 1] == i2)) {
            iArr = new int[(i + 1)];
        }
        iArr[0] = 0;
        int i4 = i2 / i;
        int i5 = i2 % i;
        int i6 = 0;
        for (int i7 = 1; i7 <= i; i7++) {
            int i8;
            i3 += i5;
            if (i3 <= 0 || i - i3 >= i5) {
                i8 = i4;
            } else {
                i8 = i4 + 1;
                i3 -= i;
            }
            i6 += i8;
            iArr[i7] = i6;
        }
        return iArr;
    }

    private void clearPreLayoutSpanMappingCache() {
        this.mPreLayoutSpanSizeCache.clear();
        this.mPreLayoutSpanIndexCache.clear();
    }

    private void ensureAnchorIsInCorrectSpan(Recycler recycler, State state, AnchorInfo anchorInfo, int i) {
        Object obj = 1;
        if (i != 1) {
            obj = null;
        }
        int spanIndex = getSpanIndex(recycler, state, anchorInfo.mPosition);
        if (obj != null) {
            while (spanIndex > 0 && anchorInfo.mPosition > 0) {
                anchorInfo.mPosition--;
                spanIndex = getSpanIndex(recycler, state, anchorInfo.mPosition);
            }
            return;
        }
        int itemCount = state.getItemCount() - 1;
        int i2 = anchorInfo.mPosition;
        int i3 = spanIndex;
        while (i2 < itemCount) {
            spanIndex = getSpanIndex(recycler, state, i2 + 1);
            if (spanIndex <= i3) {
                break;
            }
            i2++;
            i3 = spanIndex;
        }
        anchorInfo.mPosition = i2;
    }

    private void ensureViewSet() {
        if (this.mSet == null || this.mSet.length != this.mSpanCount) {
            this.mSet = new View[this.mSpanCount];
        }
    }

    private int getSpanGroupIndex(Recycler recycler, State state, int i) {
        if (!state.isPreLayout()) {
            return this.mSpanSizeLookup.getSpanGroupIndex(i, this.mSpanCount);
        }
        int convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(i);
        if (convertPreLayoutPositionToPostLayout != -1) {
            return this.mSpanSizeLookup.getSpanGroupIndex(convertPreLayoutPositionToPostLayout, this.mSpanCount);
        }
        Log.w(TAG, "Cannot find span size for pre layout position. " + i);
        return 0;
    }

    private int getSpanIndex(Recycler recycler, State state, int i) {
        if (!state.isPreLayout()) {
            return this.mSpanSizeLookup.getCachedSpanIndex(i, this.mSpanCount);
        }
        int i2 = this.mPreLayoutSpanIndexCache.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        i2 = recycler.convertPreLayoutPositionToPostLayout(i);
        if (i2 != -1) {
            return this.mSpanSizeLookup.getCachedSpanIndex(i2, this.mSpanCount);
        }
        Log.w(TAG, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 0;
    }

    private int getSpanSize(Recycler recycler, State state, int i) {
        if (!state.isPreLayout()) {
            return this.mSpanSizeLookup.getSpanSize(i);
        }
        int i2 = this.mPreLayoutSpanSizeCache.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        i2 = recycler.convertPreLayoutPositionToPostLayout(i);
        if (i2 != -1) {
            return this.mSpanSizeLookup.getSpanSize(i2);
        }
        Log.w(TAG, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 1;
    }

    private void guessMeasurement(float f, int i) {
        calculateItemBorders(Math.max(Math.round(((float) this.mSpanCount) * f), i));
    }

    private void measureChild(View view, int i, boolean z) {
        int childMeasureSpec;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.mDecorInsets;
        int i2 = ((rect.top + rect.bottom) + layoutParams.topMargin) + layoutParams.bottomMargin;
        int i3 = layoutParams.rightMargin + ((rect.right + rect.left) + layoutParams.leftMargin);
        int spaceForSpanRange = getSpaceForSpanRange(layoutParams.mSpanIndex, layoutParams.mSpanSize);
        if (this.mOrientation == 1) {
            spaceForSpanRange = LayoutManager.getChildMeasureSpec(spaceForSpanRange, i, i3, layoutParams.width, false);
            childMeasureSpec = LayoutManager.getChildMeasureSpec(this.mOrientationHelper.getTotalSpace(), getHeightMode(), i2, layoutParams.height, true);
        } else {
            int childMeasureSpec2 = LayoutManager.getChildMeasureSpec(spaceForSpanRange, i, i2, layoutParams.height, false);
            spaceForSpanRange = LayoutManager.getChildMeasureSpec(this.mOrientationHelper.getTotalSpace(), getWidthMode(), i3, layoutParams.width, true);
            childMeasureSpec = childMeasureSpec2;
        }
        measureChildWithDecorationsAndMargin(view, spaceForSpanRange, childMeasureSpec, z);
    }

    private void measureChildWithDecorationsAndMargin(View view, int i, int i2, boolean z) {
        android.support.v7.widget.RecyclerView.LayoutParams layoutParams = (android.support.v7.widget.RecyclerView.LayoutParams) view.getLayoutParams();
        if (z ? shouldReMeasureChild(view, i, i2, layoutParams) : shouldMeasureChild(view, i, i2, layoutParams)) {
            view.measure(i, i2);
        }
    }

    private void updateMeasurements() {
        calculateItemBorders(getOrientation() == 1 ? (getWidth() - getPaddingRight()) - getPaddingLeft() : (getHeight() - getPaddingBottom()) - getPaddingTop());
    }

    public boolean checkLayoutParams(android.support.v7.widget.RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* Access modifiers changed, original: 0000 */
    public View findReferenceChild(Recycler recycler, State state, int i, int i2, int i3) {
        View view = null;
        ensureLayoutState();
        int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
        int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
        int i4 = i2 > i ? 1 : -1;
        View view2 = null;
        while (i != i2) {
            View view3;
            View childAt = getChildAt(i);
            int position = getPosition(childAt);
            if (position >= 0 && position < i3) {
                if (getSpanIndex(recycler, state, position) != 0) {
                    view3 = view;
                    childAt = view2;
                } else if (((android.support.v7.widget.RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view3 = view;
                    }
                } else if (this.mOrientationHelper.getDecoratedStart(childAt) < endAfterPadding && this.mOrientationHelper.getDecoratedEnd(childAt) >= startAfterPadding) {
                    return childAt;
                } else {
                    if (view == null) {
                        view3 = childAt;
                        childAt = view2;
                    }
                }
                i += i4;
                view = view3;
                view2 = childAt;
            }
            view3 = view;
            childAt = view2;
            i += i4;
            view = view3;
            view2 = childAt;
        }
        if (view == null) {
            view = view2;
        }
        return view;
    }

    public android.support.v7.widget.RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    public android.support.v7.widget.RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    public android.support.v7.widget.RecyclerView.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof MarginLayoutParams ? new LayoutParams((MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public int getColumnCountForAccessibility(Recycler recycler, State state) {
        return this.mOrientation == 1 ? this.mSpanCount : state.getItemCount() < 1 ? 0 : getSpanGroupIndex(recycler, state, state.getItemCount() - 1) + 1;
    }

    public int getRowCountForAccessibility(Recycler recycler, State state) {
        return this.mOrientation == 0 ? this.mSpanCount : state.getItemCount() < 1 ? 0 : getSpanGroupIndex(recycler, state, state.getItemCount() - 1) + 1;
    }

    /* Access modifiers changed, original: 0000 */
    public int getSpaceForSpanRange(int i, int i2) {
        return (this.mOrientation == 1 && isLayoutRTL()) ? this.mCachedBorders[this.mSpanCount - i] - this.mCachedBorders[(this.mSpanCount - i) - i2] : this.mCachedBorders[i + i2] - this.mCachedBorders[i];
    }

    public int getSpanCount() {
        return this.mSpanCount;
    }

    public SpanSizeLookup getSpanSizeLookup() {
        return this.mSpanSizeLookup;
    }

    /* Access modifiers changed, original: 0000 */
    public void layoutChunk(Recycler recycler, State state, LayoutState layoutState, LayoutChunkResult layoutChunkResult) {
        int i;
        int spanSize;
        int modeInOther = this.mOrientationHelper.getModeInOther();
        Object obj = modeInOther != 1073741824 ? 1 : null;
        int i2 = getChildCount() > 0 ? this.mCachedBorders[this.mSpanCount] : 0;
        if (obj != null) {
            updateMeasurements();
        }
        boolean z = layoutState.mItemDirection == 1;
        int i3 = 0;
        int i4 = 0;
        int i5 = this.mSpanCount;
        if (!z) {
            i5 = getSpanIndex(recycler, state, layoutState.mCurrentPosition) + getSpanSize(recycler, state, layoutState.mCurrentPosition);
        }
        while (i3 < this.mSpanCount && layoutState.hasMore(state) && i5 > 0) {
            i = layoutState.mCurrentPosition;
            spanSize = getSpanSize(recycler, state, i);
            if (spanSize <= this.mSpanCount) {
                i5 -= spanSize;
                if (i5 >= 0) {
                    View next = layoutState.next(recycler);
                    if (next == null) {
                        break;
                    }
                    i4 += spanSize;
                    this.mSet[i3] = next;
                    i3++;
                } else {
                    break;
                }
            }
            throw new IllegalArgumentException("Item at position " + i + " requires " + spanSize + " spans but GridLayoutManager has only " + this.mSpanCount + " spans.");
        }
        if (i3 == 0) {
            layoutChunkResult.mFinished = true;
            return;
        }
        View view;
        LayoutParams layoutParams;
        int i6;
        int spaceForSpanRange;
        assignSpans(recycler, state, i3, i4, z);
        i4 = 0;
        float f = 0.0f;
        i = 0;
        while (i4 < i3) {
            View view2 = this.mSet[i4];
            if (layoutState.mScrapList == null) {
                if (z) {
                    addView(view2);
                } else {
                    addView(view2, 0);
                }
            } else if (z) {
                addDisappearingView(view2);
            } else {
                addDisappearingView(view2, 0);
            }
            calculateItemDecorationsForChild(view2, this.mDecorInsets);
            measureChild(view2, modeInOther, false);
            i5 = this.mOrientationHelper.getDecoratedMeasurement(view2);
            if (i5 > i) {
                i = i5;
            }
            float decoratedMeasurementInOther = (((float) this.mOrientationHelper.getDecoratedMeasurementInOther(view2)) * 1.0f) / ((float) ((LayoutParams) view2.getLayoutParams()).mSpanSize);
            if (decoratedMeasurementInOther <= f) {
                decoratedMeasurementInOther = f;
            }
            i4++;
            f = decoratedMeasurementInOther;
        }
        if (obj != null) {
            guessMeasurement(f, i2);
            i = 0;
            spanSize = 0;
            while (spanSize < i3) {
                View view3 = this.mSet[spanSize];
                measureChild(view3, 1073741824, true);
                i5 = this.mOrientationHelper.getDecoratedMeasurement(view3);
                if (i5 <= i) {
                    i5 = i;
                }
                spanSize++;
                i = i5;
            }
        }
        for (i4 = 0; i4 < i3; i4++) {
            view = this.mSet[i4];
            if (this.mOrientationHelper.getDecoratedMeasurement(view) != i) {
                layoutParams = (LayoutParams) view.getLayoutParams();
                Rect rect = layoutParams.mDecorInsets;
                i6 = ((rect.top + rect.bottom) + layoutParams.topMargin) + layoutParams.bottomMargin;
                spanSize = ((rect.right + rect.left) + layoutParams.leftMargin) + layoutParams.rightMargin;
                spaceForSpanRange = getSpaceForSpanRange(layoutParams.mSpanIndex, layoutParams.mSpanSize);
                if (this.mOrientation == 1) {
                    spanSize = LayoutManager.getChildMeasureSpec(spaceForSpanRange, 1073741824, spanSize, layoutParams.width, false);
                    i5 = MeasureSpec.makeMeasureSpec(i - i6, 1073741824);
                } else {
                    spanSize = MeasureSpec.makeMeasureSpec(i - spanSize, 1073741824);
                    i5 = LayoutManager.getChildMeasureSpec(spaceForSpanRange, 1073741824, i6, layoutParams.height, false);
                }
                measureChildWithDecorationsAndMargin(view, spanSize, i5, true);
            }
        }
        layoutChunkResult.mConsumed = i;
        i5 = 0;
        if (this.mOrientation == 1) {
            if (layoutState.mLayoutDirection == -1) {
                i5 = layoutState.mOffset;
                i = i5 - i;
                spanSize = 0;
                i4 = 0;
            } else {
                spanSize = layoutState.mOffset;
                i5 = spanSize + i;
                i = spanSize;
                spanSize = 0;
                i4 = 0;
            }
        } else if (layoutState.mLayoutDirection == -1) {
            i4 = layoutState.mOffset;
            spanSize = i4;
            i4 -= i;
            i = 0;
        } else {
            i4 = layoutState.mOffset;
            spanSize = i + i4;
            i = 0;
        }
        i2 = i5;
        spaceForSpanRange = i;
        int i7 = spanSize;
        i6 = i4;
        for (i = 0; i < i3; i++) {
            view = this.mSet[i];
            layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.mOrientation != 1) {
                spaceForSpanRange = getPaddingTop() + this.mCachedBorders[layoutParams.mSpanIndex];
                i2 = spaceForSpanRange + this.mOrientationHelper.getDecoratedMeasurementInOther(view);
            } else if (isLayoutRTL()) {
                i7 = getPaddingLeft() + this.mCachedBorders[this.mSpanCount - layoutParams.mSpanIndex];
                i6 = i7 - this.mOrientationHelper.getDecoratedMeasurementInOther(view);
            } else {
                i6 = getPaddingLeft() + this.mCachedBorders[layoutParams.mSpanIndex];
                i7 = i6 + this.mOrientationHelper.getDecoratedMeasurementInOther(view);
            }
            layoutDecoratedWithMargins(view, i6, spaceForSpanRange, i7, i2);
            if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
                layoutChunkResult.mIgnoreConsumed = true;
            }
            layoutChunkResult.mFocusable |= view.isFocusable();
        }
        Arrays.fill(this.mSet, null);
    }

    /* Access modifiers changed, original: 0000 */
    public void onAnchorReady(Recycler recycler, State state, AnchorInfo anchorInfo, int i) {
        super.onAnchorReady(recycler, state, anchorInfo, i);
        updateMeasurements();
        if (state.getItemCount() > 0 && !state.isPreLayout()) {
            ensureAnchorIsInCorrectSpan(recycler, state, anchorInfo, i);
        }
        ensureViewSet();
    }

    public View onFocusSearchFailed(View view, int i, Recycler recycler, State state) {
        View findContainingItemView = findContainingItemView(view);
        if (findContainingItemView == null) {
            return null;
        }
        LayoutParams layoutParams = (LayoutParams) findContainingItemView.getLayoutParams();
        int access$100 = layoutParams.mSpanIndex;
        int access$1002 = layoutParams.mSpanIndex + layoutParams.mSpanSize;
        if (super.onFocusSearchFailed(view, i, recycler, state) == null) {
            return null;
        }
        int childCount;
        int i2;
        int i3;
        if (((convertFocusDirectionToLayoutDirection(i) == 1) != this.mShouldReverseLayout ? 1 : null) != null) {
            childCount = getChildCount() - 1;
            i2 = -1;
            i3 = -1;
        } else {
            childCount = 0;
            i2 = 1;
            i3 = getChildCount();
        }
        Object obj = (this.mOrientation == 1 && isLayoutRTL()) ? 1 : null;
        View view2 = null;
        int i4 = -1;
        int i5 = 0;
        int i6 = childCount;
        while (i6 != i3) {
            View childAt = getChildAt(i6);
            if (childAt == findContainingItemView) {
                break;
            }
            View view3;
            if (childAt.isFocusable()) {
                layoutParams = (LayoutParams) childAt.getLayoutParams();
                int access$1003 = layoutParams.mSpanIndex;
                int access$1004 = layoutParams.mSpanIndex + layoutParams.mSpanSize;
                if (access$1003 == access$100 && access$1004 == access$1002) {
                    return childAt;
                }
                Object obj2 = null;
                if (view2 == null) {
                    obj2 = 1;
                } else {
                    int min = Math.min(access$1004, access$1002) - Math.max(access$1003, access$100);
                    if (min > i5) {
                        obj2 = 1;
                    } else if (min == i5) {
                        if (obj == (access$1003 > i4 ? 1 : null)) {
                            obj2 = 1;
                        }
                    }
                }
                if (obj2 != null) {
                    i5 = layoutParams.mSpanIndex;
                    childCount = Math.min(access$1004, access$1002) - Math.max(access$1003, access$100);
                    view3 = childAt;
                } else {
                    childCount = i5;
                    i5 = i4;
                    view3 = view2;
                }
            } else {
                childCount = i5;
                i5 = i4;
                view3 = view2;
            }
            i6 += i2;
            view2 = view3;
            i4 = i5;
            i5 = childCount;
        }
        return view2;
    }

    public void onInitializeAccessibilityNodeInfoForItem(Recycler recycler, State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        android.view.ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            int spanGroupIndex = getSpanGroupIndex(recycler, state, layoutParams2.getViewLayoutPosition());
            if (this.mOrientation == 0) {
                int spanIndex = layoutParams2.getSpanIndex();
                int spanSize = layoutParams2.getSpanSize();
                boolean z = this.mSpanCount > 1 && layoutParams2.getSpanSize() == this.mSpanCount;
                accessibilityNodeInfoCompat.setCollectionItemInfo(CollectionItemInfoCompat.obtain(spanIndex, spanSize, spanGroupIndex, 1, z, false));
                return;
            }
            int spanIndex2 = layoutParams2.getSpanIndex();
            int spanSize2 = layoutParams2.getSpanSize();
            boolean z2 = this.mSpanCount > 1 && layoutParams2.getSpanSize() == this.mSpanCount;
            accessibilityNodeInfoCompat.setCollectionItemInfo(CollectionItemInfoCompat.obtain(spanGroupIndex, 1, spanIndex2, spanSize2, z2, false));
            return;
        }
        super.onInitializeAccessibilityNodeInfoForItem(view, accessibilityNodeInfoCompat);
    }

    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    public void onItemsChanged(RecyclerView recyclerView) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    public void onLayoutChildren(Recycler recycler, State state) {
        if (state.isPreLayout()) {
            cachePreLayoutSpanMapping();
        }
        super.onLayoutChildren(recycler, state);
        clearPreLayoutSpanMappingCache();
    }

    public void onLayoutCompleted(State state) {
        super.onLayoutCompleted(state);
        this.mPendingSpanCountChange = false;
    }

    public int scrollHorizontallyBy(int i, Recycler recycler, State state) {
        updateMeasurements();
        ensureViewSet();
        return super.scrollHorizontallyBy(i, recycler, state);
    }

    public int scrollVerticallyBy(int i, Recycler recycler, State state) {
        updateMeasurements();
        ensureViewSet();
        return super.scrollVerticallyBy(i, recycler, state);
    }

    public void setMeasuredDimension(Rect rect, int i, int i2) {
        if (this.mCachedBorders == null) {
            super.setMeasuredDimension(rect, i, i2);
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation == 1) {
            paddingTop = LayoutManager.chooseSize(i2, paddingTop + rect.height(), getMinimumHeight());
            paddingRight = LayoutManager.chooseSize(i, paddingRight + this.mCachedBorders[this.mCachedBorders.length - 1], getMinimumWidth());
        } else {
            paddingRight = LayoutManager.chooseSize(i, paddingRight + rect.width(), getMinimumWidth());
            paddingTop = LayoutManager.chooseSize(i2, paddingTop + this.mCachedBorders[this.mCachedBorders.length - 1], getMinimumHeight());
        }
        setMeasuredDimension(paddingRight, paddingTop);
    }

    public void setSpanCount(int i) {
        if (i != this.mSpanCount) {
            this.mPendingSpanCountChange = true;
            if (i < 1) {
                throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
            }
            this.mSpanCount = i;
            this.mSpanSizeLookup.invalidateSpanIndexCache();
            requestLayout();
        }
    }

    public void setSpanSizeLookup(SpanSizeLookup spanSizeLookup) {
        this.mSpanSizeLookup = spanSizeLookup;
    }

    public void setStackFromEnd(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(false);
    }

    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && !this.mPendingSpanCountChange;
    }
}
