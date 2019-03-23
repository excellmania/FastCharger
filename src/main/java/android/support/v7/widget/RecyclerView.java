package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.media.TransportMediator;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.os.TraceCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.NestedScrollingChildHelper;
import android.support.v4.view.ScrollingView;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.support.v4.widget.ScrollerCompat;
import android.support.v7.recyclerview.R;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class RecyclerView extends ViewGroup implements NestedScrollingChild, ScrollingView {
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC = (VERSION.SDK_INT >= 23);
    private static final int[] CLIP_TO_PADDING_ATTR = new int[]{16842987};
    private static final boolean DEBUG = false;
    static final boolean DISPATCH_TEMP_DETACH = false;
    private static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
    public static final int HORIZONTAL = 0;
    private static final int INVALID_POINTER = -1;
    public static final int INVALID_TYPE = -1;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE};
    private static final int MAX_SCROLL_DURATION = 2000;
    private static final int[] NESTED_SCROLLING_ATTRS = new int[]{16843830};
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    private static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
    private static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    private static final String TRACE_SCROLL_TAG = "RV Scroll";
    public static final int VERTICAL = 1;
    private static final Interpolator sQuinticInterpolator = new Interpolator() {
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * (((f2 * f2) * f2) * f2)) + 1.0f;
        }
    };
    private RecyclerViewAccessibilityDelegate mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    private OnItemTouchListener mActiveOnItemTouchListener;
    private Adapter mAdapter;
    AdapterHelper mAdapterHelper;
    private boolean mAdapterUpdateDuringMeasure;
    private EdgeEffectCompat mBottomGlow;
    private ChildDrawingOrderCallback mChildDrawingOrderCallback;
    ChildHelper mChildHelper;
    private boolean mClipToPadding;
    private boolean mDataSetHasChangedAfterLayout;
    private int mDispatchScrollCounter;
    private int mEatRequestLayout;
    private int mEatenAccessibilityChangeFlags;
    @VisibleForTesting
    boolean mFirstLayoutComplete;
    private boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private boolean mIsAttached;
    ItemAnimator mItemAnimator;
    private ItemAnimatorListener mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    private final ArrayList<ItemDecoration> mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastTouchX;
    private int mLastTouchY;
    @VisibleForTesting
    LayoutManager mLayout;
    private boolean mLayoutFrozen;
    private int mLayoutOrScrollCounter;
    private boolean mLayoutRequestEaten;
    private EdgeEffectCompat mLeftGlow;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final RecyclerViewDataObserver mObserver;
    private List<OnChildAttachStateChangeListener> mOnChildAttachStateListeners;
    private OnFlingListener mOnFlingListener;
    private final ArrayList<OnItemTouchListener> mOnItemTouchListeners;
    private SavedState mPendingSavedState;
    private final boolean mPostUpdatesOnAnimation;
    private boolean mPostedAnimatorRunner;
    private boolean mPreserveFocusAfterLayout;
    final Recycler mRecycler;
    private RecyclerListener mRecyclerListener;
    private EdgeEffectCompat mRightGlow;
    private final int[] mScrollConsumed;
    private float mScrollFactor;
    private OnScrollListener mScrollListener;
    private List<OnScrollListener> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private NestedScrollingChildHelper mScrollingChildHelper;
    final State mState;
    private final Rect mTempRect;
    private final Rect mTempRect2;
    private final RectF mTempRectF;
    private EdgeEffectCompat mTopGlow;
    private int mTouchSlop;
    private final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    private final ViewFlinger mViewFlinger;
    private final ProcessCallback mViewInfoProcessCallback;
    final ViewInfoStore mViewInfoStore;

    public static abstract class ViewHolder {
        static final int FLAG_ADAPTER_FULLUPDATE = 1024;
        static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
        static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
        static final int FLAG_BOUND = 1;
        static final int FLAG_IGNORE = 128;
        static final int FLAG_INVALID = 4;
        static final int FLAG_MOVED = 2048;
        static final int FLAG_NOT_RECYCLABLE = 16;
        static final int FLAG_REMOVED = 8;
        static final int FLAG_RETURNED_FROM_SCRAP = 32;
        static final int FLAG_TMP_DETACHED = 256;
        static final int FLAG_UPDATE = 2;
        private static final List<Object> FULLUPDATE_PAYLOADS = Collections.EMPTY_LIST;
        public final View itemView;
        private int mFlags;
        private boolean mInChangeScrap = false;
        private int mIsRecyclableCount = 0;
        long mItemId = -1;
        int mItemViewType = -1;
        int mOldPosition = -1;
        RecyclerView mOwnerRecyclerView;
        List<Object> mPayloads = null;
        int mPosition = -1;
        int mPreLayoutPosition = -1;
        private Recycler mScrapContainer = null;
        ViewHolder mShadowedHolder = null;
        ViewHolder mShadowingHolder = null;
        List<Object> mUnmodifiedPayloads = null;
        private int mWasImportantForAccessibilityBeforeHidden = 0;

        public ViewHolder(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.itemView = view;
        }

        private void createPayloadsIfNeeded() {
            if (this.mPayloads == null) {
                this.mPayloads = new ArrayList();
                this.mUnmodifiedPayloads = Collections.unmodifiableList(this.mPayloads);
            }
        }

        private boolean doesTransientStatePreventRecycling() {
            return (this.mFlags & 16) == 0 && ViewCompat.hasTransientState(this.itemView);
        }

        private void onEnteredHiddenState() {
            this.mWasImportantForAccessibilityBeforeHidden = ViewCompat.getImportantForAccessibility(this.itemView);
            ViewCompat.setImportantForAccessibility(this.itemView, 4);
        }

        private void onLeftHiddenState() {
            ViewCompat.setImportantForAccessibility(this.itemView, this.mWasImportantForAccessibilityBeforeHidden);
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        private boolean shouldBeKeptAsChild() {
            return (this.mFlags & 16) != 0;
        }

        /* Access modifiers changed, original: 0000 */
        public void addChangePayload(Object obj) {
            if (obj == null) {
                addFlags(1024);
            } else if ((this.mFlags & 1024) == 0) {
                createPayloadsIfNeeded();
                this.mPayloads.add(obj);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void addFlags(int i) {
            this.mFlags |= i;
        }

        /* Access modifiers changed, original: 0000 */
        public void clearOldPosition() {
            this.mOldPosition = -1;
            this.mPreLayoutPosition = -1;
        }

        /* Access modifiers changed, original: 0000 */
        public void clearPayload() {
            if (this.mPayloads != null) {
                this.mPayloads.clear();
            }
            this.mFlags &= -1025;
        }

        /* Access modifiers changed, original: 0000 */
        public void clearReturnedFromScrapFlag() {
            this.mFlags &= -33;
        }

        /* Access modifiers changed, original: 0000 */
        public void clearTmpDetachFlag() {
            this.mFlags &= -257;
        }

        /* Access modifiers changed, original: 0000 */
        public void flagRemovedAndOffsetPosition(int i, int i2, boolean z) {
            addFlags(8);
            offsetPosition(i2, z);
            this.mPosition = i;
        }

        public final int getAdapterPosition() {
            return this.mOwnerRecyclerView == null ? -1 : this.mOwnerRecyclerView.getAdapterPositionFor(this);
        }

        public final long getItemId() {
            return this.mItemId;
        }

        public final int getItemViewType() {
            return this.mItemViewType;
        }

        public final int getLayoutPosition() {
            return this.mPreLayoutPosition == -1 ? this.mPosition : this.mPreLayoutPosition;
        }

        public final int getOldPosition() {
            return this.mOldPosition;
        }

        @Deprecated
        public final int getPosition() {
            return this.mPreLayoutPosition == -1 ? this.mPosition : this.mPreLayoutPosition;
        }

        /* Access modifiers changed, original: 0000 */
        public List<Object> getUnmodifiedPayloads() {
            return (this.mFlags & 1024) == 0 ? (this.mPayloads == null || this.mPayloads.size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads : FULLUPDATE_PAYLOADS;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean hasAnyOfTheFlags(int i) {
            return (this.mFlags & i) != 0;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean isAdapterPositionUnknown() {
            return (this.mFlags & 512) != 0 || isInvalid();
        }

        /* Access modifiers changed, original: 0000 */
        public boolean isBound() {
            return (this.mFlags & 1) != 0;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean isInvalid() {
            return (this.mFlags & 4) != 0;
        }

        public final boolean isRecyclable() {
            return (this.mFlags & 16) == 0 && !ViewCompat.hasTransientState(this.itemView);
        }

        /* Access modifiers changed, original: 0000 */
        public boolean isRemoved() {
            return (this.mFlags & 8) != 0;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean isScrap() {
            return this.mScrapContainer != null;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean isTmpDetached() {
            return (this.mFlags & 256) != 0;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean isUpdated() {
            return (this.mFlags & 2) != 0;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean needsUpdate() {
            return (this.mFlags & 2) != 0;
        }

        /* Access modifiers changed, original: 0000 */
        public void offsetPosition(int i, boolean z) {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
            if (this.mPreLayoutPosition == -1) {
                this.mPreLayoutPosition = this.mPosition;
            }
            if (z) {
                this.mPreLayoutPosition += i;
            }
            this.mPosition += i;
            if (this.itemView.getLayoutParams() != null) {
                ((LayoutParams) this.itemView.getLayoutParams()).mInsetsDirty = true;
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void resetInternal() {
            this.mFlags = 0;
            this.mPosition = -1;
            this.mOldPosition = -1;
            this.mItemId = -1;
            this.mPreLayoutPosition = -1;
            this.mIsRecyclableCount = 0;
            this.mShadowedHolder = null;
            this.mShadowingHolder = null;
            clearPayload();
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        /* Access modifiers changed, original: 0000 */
        public void saveOldPosition() {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void setFlags(int i, int i2) {
            this.mFlags = (this.mFlags & (i2 ^ -1)) | (i & i2);
        }

        public final void setIsRecyclable(boolean z) {
            this.mIsRecyclableCount = z ? this.mIsRecyclableCount - 1 : this.mIsRecyclableCount + 1;
            if (this.mIsRecyclableCount < 0) {
                this.mIsRecyclableCount = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            } else if (!z && this.mIsRecyclableCount == 1) {
                this.mFlags |= 16;
            } else if (z && this.mIsRecyclableCount == 0) {
                this.mFlags &= -17;
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void setScrapContainer(Recycler recycler, boolean z) {
            this.mScrapContainer = recycler;
            this.mInChangeScrap = z;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean shouldIgnore() {
            return (this.mFlags & 128) != 0;
        }

        /* Access modifiers changed, original: 0000 */
        public void stopIgnoring() {
            this.mFlags &= -129;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.mPosition + " id=" + this.mItemId + ", oldPos=" + this.mOldPosition + ", pLpos:" + this.mPreLayoutPosition);
            if (isScrap()) {
                stringBuilder.append(" scrap ").append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
            }
            if (isInvalid()) {
                stringBuilder.append(" invalid");
            }
            if (!isBound()) {
                stringBuilder.append(" unbound");
            }
            if (needsUpdate()) {
                stringBuilder.append(" update");
            }
            if (isRemoved()) {
                stringBuilder.append(" removed");
            }
            if (shouldIgnore()) {
                stringBuilder.append(" ignored");
            }
            if (isTmpDetached()) {
                stringBuilder.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                stringBuilder.append(" not recyclable(" + this.mIsRecyclableCount + ")");
            }
            if (isAdapterPositionUnknown()) {
                stringBuilder.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                stringBuilder.append(" no parent");
            }
            stringBuilder.append("}");
            return stringBuilder.toString();
        }

        /* Access modifiers changed, original: 0000 */
        public void unScrap() {
            this.mScrapContainer.unscrapView(this);
        }

        /* Access modifiers changed, original: 0000 */
        public boolean wasReturnedFromScrap() {
            return (this.mFlags & 32) != 0;
        }
    }

    public static abstract class Adapter<VH extends ViewHolder> {
        private boolean mHasStableIds = false;
        private final AdapterDataObservable mObservable = new AdapterDataObservable();

        public final void bindViewHolder(VH vh, int i) {
            vh.mPosition = i;
            if (hasStableIds()) {
                vh.mItemId = getItemId(i);
            }
            vh.setFlags(1, 519);
            TraceCompat.beginSection(RecyclerView.TRACE_BIND_VIEW_TAG);
            onBindViewHolder(vh, i, vh.getUnmodifiedPayloads());
            vh.clearPayload();
            android.view.ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
            if (layoutParams instanceof LayoutParams) {
                ((LayoutParams) layoutParams).mInsetsDirty = true;
            }
            TraceCompat.endSection();
        }

        public final VH createViewHolder(ViewGroup viewGroup, int i) {
            TraceCompat.beginSection(RecyclerView.TRACE_CREATE_VIEW_TAG);
            ViewHolder onCreateViewHolder = onCreateViewHolder(viewGroup, i);
            onCreateViewHolder.mItemViewType = i;
            TraceCompat.endSection();
            return onCreateViewHolder;
        }

        public abstract int getItemCount();

        public long getItemId(int i) {
            return -1;
        }

        public int getItemViewType(int i) {
            return 0;
        }

        public final boolean hasObservers() {
            return this.mObservable.hasObservers();
        }

        public final boolean hasStableIds() {
            return this.mHasStableIds;
        }

        public final void notifyDataSetChanged() {
            this.mObservable.notifyChanged();
        }

        public final void notifyItemChanged(int i) {
            this.mObservable.notifyItemRangeChanged(i, 1);
        }

        public final void notifyItemChanged(int i, Object obj) {
            this.mObservable.notifyItemRangeChanged(i, 1, obj);
        }

        public final void notifyItemInserted(int i) {
            this.mObservable.notifyItemRangeInserted(i, 1);
        }

        public final void notifyItemMoved(int i, int i2) {
            this.mObservable.notifyItemMoved(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2) {
            this.mObservable.notifyItemRangeChanged(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2, Object obj) {
            this.mObservable.notifyItemRangeChanged(i, i2, obj);
        }

        public final void notifyItemRangeInserted(int i, int i2) {
            this.mObservable.notifyItemRangeInserted(i, i2);
        }

        public final void notifyItemRangeRemoved(int i, int i2) {
            this.mObservable.notifyItemRangeRemoved(i, i2);
        }

        public final void notifyItemRemoved(int i) {
            this.mObservable.notifyItemRangeRemoved(i, 1);
        }

        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        }

        public abstract void onBindViewHolder(VH vh, int i);

        public void onBindViewHolder(VH vh, int i, List<Object> list) {
            onBindViewHolder(vh, i);
        }

        public abstract VH onCreateViewHolder(ViewGroup viewGroup, int i);

        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        }

        public boolean onFailedToRecycleView(VH vh) {
            return false;
        }

        public void onViewAttachedToWindow(VH vh) {
        }

        public void onViewDetachedFromWindow(VH vh) {
        }

        public void onViewRecycled(VH vh) {
        }

        public void registerAdapterDataObserver(AdapterDataObserver adapterDataObserver) {
            this.mObservable.registerObserver(adapterDataObserver);
        }

        public void setHasStableIds(boolean z) {
            if (hasObservers()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.mHasStableIds = z;
        }

        public void unregisterAdapterDataObserver(AdapterDataObserver adapterDataObserver) {
            this.mObservable.unregisterObserver(adapterDataObserver);
        }
    }

    public static abstract class ItemAnimator {
        public static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        public static final int FLAG_CHANGED = 2;
        public static final int FLAG_INVALIDATED = 4;
        public static final int FLAG_MOVED = 2048;
        public static final int FLAG_REMOVED = 8;
        private long mAddDuration = 120;
        private long mChangeDuration = 250;
        private ArrayList<ItemAnimatorFinishedListener> mFinishedListeners = new ArrayList();
        private ItemAnimatorListener mListener = null;
        private long mMoveDuration = 250;
        private long mRemoveDuration = 120;

        @Retention(RetentionPolicy.SOURCE)
        public @interface AdapterChanges {
        }

        public interface ItemAnimatorFinishedListener {
            void onAnimationsFinished();
        }

        interface ItemAnimatorListener {
            void onAnimationFinished(ViewHolder viewHolder);
        }

        public static class ItemHolderInfo {
            public int bottom;
            public int changeFlags;
            public int left;
            public int right;
            public int top;

            public ItemHolderInfo setFrom(ViewHolder viewHolder) {
                return setFrom(viewHolder, 0);
            }

            public ItemHolderInfo setFrom(ViewHolder viewHolder, int i) {
                View view = viewHolder.itemView;
                this.left = view.getLeft();
                this.top = view.getTop();
                this.right = view.getRight();
                this.bottom = view.getBottom();
                return this;
            }
        }

        static int buildAdapterChangeFlagsForAnimations(ViewHolder viewHolder) {
            int access$6500 = viewHolder.mFlags & 14;
            if (viewHolder.isInvalid()) {
                return 4;
            }
            if ((access$6500 & 4) != 0) {
                return access$6500;
            }
            int oldPosition = viewHolder.getOldPosition();
            int adapterPosition = viewHolder.getAdapterPosition();
            return (oldPosition == -1 || adapterPosition == -1 || oldPosition == adapterPosition) ? access$6500 : access$6500 | 2048;
        }

        public abstract boolean animateAppearance(@NonNull ViewHolder viewHolder, @Nullable ItemHolderInfo itemHolderInfo, @NonNull ItemHolderInfo itemHolderInfo2);

        public abstract boolean animateChange(@NonNull ViewHolder viewHolder, @NonNull ViewHolder viewHolder2, @NonNull ItemHolderInfo itemHolderInfo, @NonNull ItemHolderInfo itemHolderInfo2);

        public abstract boolean animateDisappearance(@NonNull ViewHolder viewHolder, @NonNull ItemHolderInfo itemHolderInfo, @Nullable ItemHolderInfo itemHolderInfo2);

        public abstract boolean animatePersistence(@NonNull ViewHolder viewHolder, @NonNull ItemHolderInfo itemHolderInfo, @NonNull ItemHolderInfo itemHolderInfo2);

        public boolean canReuseUpdatedViewHolder(@NonNull ViewHolder viewHolder) {
            return true;
        }

        public boolean canReuseUpdatedViewHolder(@NonNull ViewHolder viewHolder, @NonNull List<Object> list) {
            return canReuseUpdatedViewHolder(viewHolder);
        }

        public final void dispatchAnimationFinished(ViewHolder viewHolder) {
            onAnimationFinished(viewHolder);
            if (this.mListener != null) {
                this.mListener.onAnimationFinished(viewHolder);
            }
        }

        public final void dispatchAnimationStarted(ViewHolder viewHolder) {
            onAnimationStarted(viewHolder);
        }

        public final void dispatchAnimationsFinished() {
            int size = this.mFinishedListeners.size();
            for (int i = 0; i < size; i++) {
                ((ItemAnimatorFinishedListener) this.mFinishedListeners.get(i)).onAnimationsFinished();
            }
            this.mFinishedListeners.clear();
        }

        public abstract void endAnimation(ViewHolder viewHolder);

        public abstract void endAnimations();

        public long getAddDuration() {
            return this.mAddDuration;
        }

        public long getChangeDuration() {
            return this.mChangeDuration;
        }

        public long getMoveDuration() {
            return this.mMoveDuration;
        }

        public long getRemoveDuration() {
            return this.mRemoveDuration;
        }

        public abstract boolean isRunning();

        public final boolean isRunning(ItemAnimatorFinishedListener itemAnimatorFinishedListener) {
            boolean isRunning = isRunning();
            if (itemAnimatorFinishedListener != null) {
                if (isRunning) {
                    this.mFinishedListeners.add(itemAnimatorFinishedListener);
                } else {
                    itemAnimatorFinishedListener.onAnimationsFinished();
                }
            }
            return isRunning;
        }

        public ItemHolderInfo obtainHolderInfo() {
            return new ItemHolderInfo();
        }

        public void onAnimationFinished(ViewHolder viewHolder) {
        }

        public void onAnimationStarted(ViewHolder viewHolder) {
        }

        @NonNull
        public ItemHolderInfo recordPostLayoutInformation(@NonNull State state, @NonNull ViewHolder viewHolder) {
            return obtainHolderInfo().setFrom(viewHolder);
        }

        @NonNull
        public ItemHolderInfo recordPreLayoutInformation(@NonNull State state, @NonNull ViewHolder viewHolder, int i, @NonNull List<Object> list) {
            return obtainHolderInfo().setFrom(viewHolder);
        }

        public abstract void runPendingAnimations();

        public void setAddDuration(long j) {
            this.mAddDuration = j;
        }

        public void setChangeDuration(long j) {
            this.mChangeDuration = j;
        }

        /* Access modifiers changed, original: 0000 */
        public void setListener(ItemAnimatorListener itemAnimatorListener) {
            this.mListener = itemAnimatorListener;
        }

        public void setMoveDuration(long j) {
            this.mMoveDuration = j;
        }

        public void setRemoveDuration(long j) {
            this.mRemoveDuration = j;
        }
    }

    public static class LayoutParams extends MarginLayoutParams {
        final Rect mDecorInsets = new Rect();
        boolean mInsetsDirty = true;
        boolean mPendingInvalidate = false;
        ViewHolder mViewHolder;

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
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

        public int getViewAdapterPosition() {
            return this.mViewHolder.getAdapterPosition();
        }

        public int getViewLayoutPosition() {
            return this.mViewHolder.getLayoutPosition();
        }

        @Deprecated
        public int getViewPosition() {
            return this.mViewHolder.getPosition();
        }

        public boolean isItemChanged() {
            return this.mViewHolder.isUpdated();
        }

        public boolean isItemRemoved() {
            return this.mViewHolder.isRemoved();
        }

        public boolean isViewInvalid() {
            return this.mViewHolder.isInvalid();
        }

        public boolean viewNeedsUpdate() {
            return this.mViewHolder.needsUpdate();
        }
    }

    public static abstract class LayoutManager {
        private boolean mAutoMeasure = false;
        ChildHelper mChildHelper;
        private int mHeight;
        private int mHeightMode;
        boolean mIsAttachedToWindow = false;
        private boolean mMeasurementCacheEnabled = true;
        RecyclerView mRecyclerView;
        private boolean mRequestedSimpleAnimations = false;
        @Nullable
        SmoothScroller mSmoothScroller;
        private int mWidth;
        private int mWidthMode;

        public static class Properties {
            public int orientation;
            public boolean reverseLayout;
            public int spanCount;
            public boolean stackFromEnd;
        }

        private void addViewInt(View view, int i, boolean z) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (z || childViewHolderInt.isRemoved()) {
                this.mRecyclerView.mViewInfoStore.addToDisappearedInLayout(childViewHolderInt);
            } else {
                this.mRecyclerView.mViewInfoStore.removeFromDisappearedInLayout(childViewHolderInt);
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
                if (childViewHolderInt.isScrap()) {
                    childViewHolderInt.unScrap();
                } else {
                    childViewHolderInt.clearReturnedFromScrapFlag();
                }
                this.mChildHelper.attachViewToParent(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.mRecyclerView) {
                int indexOfChild = this.mChildHelper.indexOfChild(view);
                if (i == -1) {
                    i = this.mChildHelper.getChildCount();
                }
                if (indexOfChild == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.mRecyclerView.indexOfChild(view));
                } else if (indexOfChild != i) {
                    this.mRecyclerView.mLayout.moveView(indexOfChild, i);
                }
            } else {
                this.mChildHelper.addView(view, i, false);
                layoutParams.mInsetsDirty = true;
                if (this.mSmoothScroller != null && this.mSmoothScroller.isRunning()) {
                    this.mSmoothScroller.onChildAttachedToWindow(view);
                }
            }
            if (layoutParams.mPendingInvalidate) {
                childViewHolderInt.itemView.invalidate();
                layoutParams.mPendingInvalidate = false;
            }
        }

        public static int chooseSize(int i, int i2, int i3) {
            int mode = MeasureSpec.getMode(i);
            int size = MeasureSpec.getSize(i);
            switch (mode) {
                case Integer.MIN_VALUE:
                    return Math.min(size, Math.max(i2, i3));
                case 1073741824:
                    return size;
                default:
                    return Math.max(i2, i3);
            }
        }

        private void detachViewInternal(int i, View view) {
            this.mChildHelper.detachViewFromParent(i);
        }

        public static int getChildMeasureSpec(int i, int i2, int i3, int i4, boolean z) {
            int i5 = 0;
            int max = Math.max(0, i - i3);
            if (i4 >= 0) {
                i5 = 1073741824;
                max = i4;
            } else {
                if (z) {
                    if (i4 == -1) {
                        switch (i2) {
                            case Integer.MIN_VALUE:
                            case 1073741824:
                                i5 = max;
                                break;
                            case 0:
                                i2 = 0;
                                break;
                            default:
                                i2 = 0;
                                break;
                        }
                        max = i5;
                        i5 = i2;
                    } else if (i4 == -2) {
                        max = 0;
                    }
                } else if (i4 == -1) {
                    i5 = i2;
                } else if (i4 == -2) {
                    if (i2 == Integer.MIN_VALUE || i2 == 1073741824) {
                        i5 = Integer.MIN_VALUE;
                    }
                }
                max = 0;
            }
            return MeasureSpec.makeMeasureSpec(max, i5);
        }

        @Deprecated
        public static int getChildMeasureSpec(int i, int i2, int i3, boolean z) {
            int i4 = 1073741824;
            int max = Math.max(0, i - i2);
            if (z) {
                if (i3 < 0) {
                    i4 = 0;
                    i3 = 0;
                }
            } else if (i3 < 0) {
                if (i3 == -1) {
                    i3 = max;
                } else if (i3 == -2) {
                    i4 = Integer.MIN_VALUE;
                    i3 = max;
                } else {
                    i4 = 0;
                    i3 = 0;
                }
            }
            return MeasureSpec.makeMeasureSpec(i3, i4);
        }

        public static Properties getProperties(Context context, AttributeSet attributeSet, int i, int i2) {
            Properties properties = new Properties();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RecyclerView, i, i2);
            properties.orientation = obtainStyledAttributes.getInt(R.styleable.RecyclerView_android_orientation, 1);
            properties.spanCount = obtainStyledAttributes.getInt(R.styleable.RecyclerView_spanCount, 1);
            properties.reverseLayout = obtainStyledAttributes.getBoolean(R.styleable.RecyclerView_reverseLayout, false);
            properties.stackFromEnd = obtainStyledAttributes.getBoolean(R.styleable.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return properties;
        }

        private static boolean isMeasurementUpToDate(int i, int i2, int i3) {
            int mode = MeasureSpec.getMode(i2);
            int size = MeasureSpec.getSize(i2);
            if (i3 > 0 && i != i3) {
                return false;
            }
            switch (mode) {
                case Integer.MIN_VALUE:
                    return size >= i;
                case 0:
                    return true;
                case 1073741824:
                    return size == i;
                default:
                    return false;
            }
        }

        private void onSmoothScrollerStopped(SmoothScroller smoothScroller) {
            if (this.mSmoothScroller == smoothScroller) {
                this.mSmoothScroller = null;
            }
        }

        private void scrapOrRecycleView(Recycler recycler, int i, View view) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.shouldIgnore()) {
                if (!childViewHolderInt.isInvalid() || childViewHolderInt.isRemoved() || this.mRecyclerView.mAdapter.hasStableIds()) {
                    detachViewAt(i);
                    recycler.scrapView(view);
                    this.mRecyclerView.mViewInfoStore.onViewDetached(childViewHolderInt);
                    return;
                }
                removeViewAt(i);
                recycler.recycleViewHolderInternal(childViewHolderInt);
            }
        }

        public void addDisappearingView(View view) {
            addDisappearingView(view, -1);
        }

        public void addDisappearingView(View view, int i) {
            addViewInt(view, i, true);
        }

        public void addView(View view) {
            addView(view, -1);
        }

        public void addView(View view, int i) {
            addViewInt(view, i, false);
        }

        public void assertInLayoutOrScroll(String str) {
            if (this.mRecyclerView != null) {
                this.mRecyclerView.assertInLayoutOrScroll(str);
            }
        }

        public void assertNotInLayoutOrScroll(String str) {
            if (this.mRecyclerView != null) {
                this.mRecyclerView.assertNotInLayoutOrScroll(str);
            }
        }

        public void attachView(View view) {
            attachView(view, -1);
        }

        public void attachView(View view, int i) {
            attachView(view, i, (LayoutParams) view.getLayoutParams());
        }

        public void attachView(View view, int i, LayoutParams layoutParams) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isRemoved()) {
                this.mRecyclerView.mViewInfoStore.addToDisappearedInLayout(childViewHolderInt);
            } else {
                this.mRecyclerView.mViewInfoStore.removeFromDisappearedInLayout(childViewHolderInt);
            }
            this.mChildHelper.attachViewToParent(view, i, layoutParams, childViewHolderInt.isRemoved());
        }

        public void calculateItemDecorationsForChild(View view, Rect rect) {
            if (this.mRecyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(this.mRecyclerView.getItemDecorInsetsForChild(view));
            }
        }

        public boolean canScrollHorizontally() {
            return false;
        }

        public boolean canScrollVertically() {
            return false;
        }

        public boolean checkLayoutParams(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        public int computeHorizontalScrollExtent(State state) {
            return 0;
        }

        public int computeHorizontalScrollOffset(State state) {
            return 0;
        }

        public int computeHorizontalScrollRange(State state) {
            return 0;
        }

        public int computeVerticalScrollExtent(State state) {
            return 0;
        }

        public int computeVerticalScrollOffset(State state) {
            return 0;
        }

        public int computeVerticalScrollRange(State state) {
            return 0;
        }

        public void detachAndScrapAttachedViews(Recycler recycler) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                scrapOrRecycleView(recycler, childCount, getChildAt(childCount));
            }
        }

        public void detachAndScrapView(View view, Recycler recycler) {
            scrapOrRecycleView(recycler, this.mChildHelper.indexOfChild(view), view);
        }

        public void detachAndScrapViewAt(int i, Recycler recycler) {
            scrapOrRecycleView(recycler, i, getChildAt(i));
        }

        public void detachView(View view) {
            int indexOfChild = this.mChildHelper.indexOfChild(view);
            if (indexOfChild >= 0) {
                detachViewInternal(indexOfChild, view);
            }
        }

        public void detachViewAt(int i) {
            detachViewInternal(i, getChildAt(i));
        }

        /* Access modifiers changed, original: 0000 */
        public void dispatchAttachedToWindow(RecyclerView recyclerView) {
            this.mIsAttachedToWindow = true;
            onAttachedToWindow(recyclerView);
        }

        /* Access modifiers changed, original: 0000 */
        public void dispatchDetachedFromWindow(RecyclerView recyclerView, Recycler recycler) {
            this.mIsAttachedToWindow = false;
            onDetachedFromWindow(recyclerView, recycler);
        }

        public void endAnimation(View view) {
            if (this.mRecyclerView.mItemAnimator != null) {
                this.mRecyclerView.mItemAnimator.endAnimation(RecyclerView.getChildViewHolderInt(view));
            }
        }

        @Nullable
        public View findContainingItemView(View view) {
            if (this.mRecyclerView == null) {
                return null;
            }
            View findContainingItemView = this.mRecyclerView.findContainingItemView(view);
            return (findContainingItemView == null || this.mChildHelper.isHidden(findContainingItemView)) ? null : findContainingItemView;
        }

        public View findViewByPosition(int i) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
                if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i && !childViewHolderInt.shouldIgnore() && (this.mRecyclerView.mState.isPreLayout() || !childViewHolderInt.isRemoved())) {
                    return childAt;
                }
            }
            return null;
        }

        public abstract LayoutParams generateDefaultLayoutParams();

        public LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        public LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof MarginLayoutParams ? new LayoutParams((MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
        }

        public int getBaseline() {
            return -1;
        }

        public int getBottomDecorationHeight(View view) {
            return ((LayoutParams) view.getLayoutParams()).mDecorInsets.bottom;
        }

        public View getChildAt(int i) {
            return this.mChildHelper != null ? this.mChildHelper.getChildAt(i) : null;
        }

        public int getChildCount() {
            return this.mChildHelper != null ? this.mChildHelper.getChildCount() : 0;
        }

        public boolean getClipToPadding() {
            return this.mRecyclerView != null && this.mRecyclerView.mClipToPadding;
        }

        public int getColumnCountForAccessibility(Recycler recycler, State state) {
            return (this.mRecyclerView == null || this.mRecyclerView.mAdapter == null || !canScrollHorizontally()) ? 1 : this.mRecyclerView.mAdapter.getItemCount();
        }

        public int getDecoratedBottom(View view) {
            return view.getBottom() + getBottomDecorationHeight(view);
        }

        public void getDecoratedBoundsWithMargins(View view, Rect rect) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect2 = layoutParams.mDecorInsets;
            rect.set((view.getLeft() - rect2.left) - layoutParams.leftMargin, (view.getTop() - rect2.top) - layoutParams.topMargin, (view.getRight() + rect2.right) + layoutParams.rightMargin, layoutParams.bottomMargin + (rect2.bottom + view.getBottom()));
        }

        public int getDecoratedLeft(View view) {
            return view.getLeft() - getLeftDecorationWidth(view);
        }

        public int getDecoratedMeasuredHeight(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).mDecorInsets;
            return rect.bottom + (view.getMeasuredHeight() + rect.top);
        }

        public int getDecoratedMeasuredWidth(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).mDecorInsets;
            return rect.right + (view.getMeasuredWidth() + rect.left);
        }

        public int getDecoratedRight(View view) {
            return view.getRight() + getRightDecorationWidth(view);
        }

        public int getDecoratedTop(View view) {
            return view.getTop() - getTopDecorationHeight(view);
        }

        public View getFocusedChild() {
            if (this.mRecyclerView == null) {
                return null;
            }
            View focusedChild = this.mRecyclerView.getFocusedChild();
            return (focusedChild == null || this.mChildHelper.isHidden(focusedChild)) ? null : focusedChild;
        }

        public int getHeight() {
            return this.mHeight;
        }

        public int getHeightMode() {
            return this.mHeightMode;
        }

        public int getItemCount() {
            Adapter adapter = this.mRecyclerView != null ? this.mRecyclerView.getAdapter() : null;
            return adapter != null ? adapter.getItemCount() : 0;
        }

        public int getItemViewType(View view) {
            return RecyclerView.getChildViewHolderInt(view).getItemViewType();
        }

        public int getLayoutDirection() {
            return ViewCompat.getLayoutDirection(this.mRecyclerView);
        }

        public int getLeftDecorationWidth(View view) {
            return ((LayoutParams) view.getLayoutParams()).mDecorInsets.left;
        }

        public int getMinimumHeight() {
            return ViewCompat.getMinimumHeight(this.mRecyclerView);
        }

        public int getMinimumWidth() {
            return ViewCompat.getMinimumWidth(this.mRecyclerView);
        }

        public int getPaddingBottom() {
            return this.mRecyclerView != null ? this.mRecyclerView.getPaddingBottom() : 0;
        }

        public int getPaddingEnd() {
            return this.mRecyclerView != null ? ViewCompat.getPaddingEnd(this.mRecyclerView) : 0;
        }

        public int getPaddingLeft() {
            return this.mRecyclerView != null ? this.mRecyclerView.getPaddingLeft() : 0;
        }

        public int getPaddingRight() {
            return this.mRecyclerView != null ? this.mRecyclerView.getPaddingRight() : 0;
        }

        public int getPaddingStart() {
            return this.mRecyclerView != null ? ViewCompat.getPaddingStart(this.mRecyclerView) : 0;
        }

        public int getPaddingTop() {
            return this.mRecyclerView != null ? this.mRecyclerView.getPaddingTop() : 0;
        }

        public int getPosition(View view) {
            return ((LayoutParams) view.getLayoutParams()).getViewLayoutPosition();
        }

        public int getRightDecorationWidth(View view) {
            return ((LayoutParams) view.getLayoutParams()).mDecorInsets.right;
        }

        public int getRowCountForAccessibility(Recycler recycler, State state) {
            return (this.mRecyclerView == null || this.mRecyclerView.mAdapter == null || !canScrollVertically()) ? 1 : this.mRecyclerView.mAdapter.getItemCount();
        }

        public int getSelectionModeForAccessibility(Recycler recycler, State state) {
            return 0;
        }

        public int getTopDecorationHeight(View view) {
            return ((LayoutParams) view.getLayoutParams()).mDecorInsets.top;
        }

        public void getTransformedBoundingBox(View view, boolean z, Rect rect) {
            if (z) {
                Rect rect2 = ((LayoutParams) view.getLayoutParams()).mDecorInsets;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, rect2.bottom + view.getHeight());
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.mRecyclerView != null) {
                Matrix matrix = ViewCompat.getMatrix(view);
                if (!(matrix == null || matrix.isIdentity())) {
                    RectF access$5500 = this.mRecyclerView.mTempRectF;
                    access$5500.set(rect);
                    matrix.mapRect(access$5500);
                    rect.set((int) Math.floor((double) access$5500.left), (int) Math.floor((double) access$5500.top), (int) Math.ceil((double) access$5500.right), (int) Math.ceil((double) access$5500.bottom));
                }
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public int getWidth() {
            return this.mWidth;
        }

        public int getWidthMode() {
            return this.mWidthMode;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean hasFlexibleChildInBothOrientations() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                android.view.ViewGroup.LayoutParams layoutParams = getChildAt(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        public boolean hasFocus() {
            return this.mRecyclerView != null && this.mRecyclerView.hasFocus();
        }

        public void ignoreView(View view) {
            if (view.getParent() != this.mRecyclerView || this.mRecyclerView.indexOfChild(view) == -1) {
                throw new IllegalArgumentException("View should be fully attached to be ignored");
            }
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.addFlags(128);
            this.mRecyclerView.mViewInfoStore.removeViewHolder(childViewHolderInt);
        }

        public boolean isAttachedToWindow() {
            return this.mIsAttachedToWindow;
        }

        public boolean isAutoMeasureEnabled() {
            return this.mAutoMeasure;
        }

        public boolean isFocused() {
            return this.mRecyclerView != null && this.mRecyclerView.isFocused();
        }

        public boolean isLayoutHierarchical(Recycler recycler, State state) {
            return false;
        }

        public boolean isMeasurementCacheEnabled() {
            return this.mMeasurementCacheEnabled;
        }

        public boolean isSmoothScrolling() {
            return this.mSmoothScroller != null && this.mSmoothScroller.isRunning();
        }

        public void layoutDecorated(View view, int i, int i2, int i3, int i4) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).mDecorInsets;
            view.layout(rect.left + i, rect.top + i2, i3 - rect.right, i4 - rect.bottom);
        }

        public void layoutDecoratedWithMargins(View view, int i, int i2, int i3, int i4) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.mDecorInsets;
            view.layout((rect.left + i) + layoutParams.leftMargin, (rect.top + i2) + layoutParams.topMargin, (i3 - rect.right) - layoutParams.rightMargin, (i4 - rect.bottom) - layoutParams.bottomMargin);
        }

        public void measureChild(View view, int i, int i2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int i3 = (itemDecorInsetsForChild.left + itemDecorInsetsForChild.right) + i;
            int i4 = (itemDecorInsetsForChild.bottom + itemDecorInsetsForChild.top) + i2;
            i3 = getChildMeasureSpec(getWidth(), getWidthMode(), i3 + (getPaddingLeft() + getPaddingRight()), layoutParams.width, canScrollHorizontally());
            i4 = getChildMeasureSpec(getHeight(), getHeightMode(), i4 + (getPaddingTop() + getPaddingBottom()), layoutParams.height, canScrollVertically());
            if (shouldMeasureChild(view, i3, i4, layoutParams)) {
                view.measure(i3, i4);
            }
        }

        public void measureChildWithMargins(View view, int i, int i2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int i3 = (itemDecorInsetsForChild.left + itemDecorInsetsForChild.right) + i;
            int i4 = (itemDecorInsetsForChild.bottom + itemDecorInsetsForChild.top) + i2;
            i3 = getChildMeasureSpec(getWidth(), getWidthMode(), i3 + (((getPaddingLeft() + getPaddingRight()) + layoutParams.leftMargin) + layoutParams.rightMargin), layoutParams.width, canScrollHorizontally());
            i4 = getChildMeasureSpec(getHeight(), getHeightMode(), i4 + (((getPaddingTop() + getPaddingBottom()) + layoutParams.topMargin) + layoutParams.bottomMargin), layoutParams.height, canScrollVertically());
            if (shouldMeasureChild(view, i3, i4, layoutParams)) {
                view.measure(i3, i4);
            }
        }

        public void moveView(int i, int i2) {
            View childAt = getChildAt(i);
            if (childAt == null) {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i);
            }
            detachViewAt(i);
            attachView(childAt, i2);
        }

        public void offsetChildrenHorizontal(int i) {
            if (this.mRecyclerView != null) {
                this.mRecyclerView.offsetChildrenHorizontal(i);
            }
        }

        public void offsetChildrenVertical(int i) {
            if (this.mRecyclerView != null) {
                this.mRecyclerView.offsetChildrenVertical(i);
            }
        }

        public void onAdapterChanged(Adapter adapter, Adapter adapter2) {
        }

        public boolean onAddFocusables(RecyclerView recyclerView, ArrayList<View> arrayList, int i, int i2) {
            return false;
        }

        @CallSuper
        public void onAttachedToWindow(RecyclerView recyclerView) {
        }

        @Deprecated
        public void onDetachedFromWindow(RecyclerView recyclerView) {
        }

        @CallSuper
        public void onDetachedFromWindow(RecyclerView recyclerView, Recycler recycler) {
            onDetachedFromWindow(recyclerView);
        }

        @Nullable
        public View onFocusSearchFailed(View view, int i, Recycler recycler, State state) {
            return null;
        }

        public void onInitializeAccessibilityEvent(Recycler recycler, State state, AccessibilityEvent accessibilityEvent) {
            boolean z = true;
            AccessibilityRecordCompat asRecord = AccessibilityEventCompat.asRecord(accessibilityEvent);
            if (this.mRecyclerView != null && asRecord != null) {
                if (!(ViewCompat.canScrollVertically(this.mRecyclerView, 1) || ViewCompat.canScrollVertically(this.mRecyclerView, -1) || ViewCompat.canScrollHorizontally(this.mRecyclerView, -1) || ViewCompat.canScrollHorizontally(this.mRecyclerView, 1))) {
                    z = false;
                }
                asRecord.setScrollable(z);
                if (this.mRecyclerView.mAdapter != null) {
                    asRecord.setItemCount(this.mRecyclerView.mAdapter.getItemCount());
                }
            }
        }

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            onInitializeAccessibilityEvent(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, accessibilityEvent);
        }

        /* Access modifiers changed, original: 0000 */
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            onInitializeAccessibilityNodeInfo(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, accessibilityNodeInfoCompat);
        }

        public void onInitializeAccessibilityNodeInfo(Recycler recycler, State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (ViewCompat.canScrollVertically(this.mRecyclerView, -1) || ViewCompat.canScrollHorizontally(this.mRecyclerView, -1)) {
                accessibilityNodeInfoCompat.addAction(8192);
                accessibilityNodeInfoCompat.setScrollable(true);
            }
            if (ViewCompat.canScrollVertically(this.mRecyclerView, 1) || ViewCompat.canScrollHorizontally(this.mRecyclerView, 1)) {
                accessibilityNodeInfoCompat.addAction(4096);
                accessibilityNodeInfoCompat.setScrollable(true);
            }
            accessibilityNodeInfoCompat.setCollectionInfo(CollectionInfoCompat.obtain(getRowCountForAccessibility(recycler, state), getColumnCountForAccessibility(recycler, state), isLayoutHierarchical(recycler, state), getSelectionModeForAccessibility(recycler, state)));
        }

        public void onInitializeAccessibilityNodeInfoForItem(Recycler recycler, State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.setCollectionItemInfo(CollectionItemInfoCompat.obtain(canScrollVertically() ? getPosition(view) : 0, 1, canScrollHorizontally() ? getPosition(view) : 0, 1, false, false));
        }

        /* Access modifiers changed, original: 0000 */
        public void onInitializeAccessibilityNodeInfoForItem(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && !this.mChildHelper.isHidden(childViewHolderInt.itemView)) {
                onInitializeAccessibilityNodeInfoForItem(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, view, accessibilityNodeInfoCompat);
            }
        }

        public View onInterceptFocusSearch(View view, int i) {
            return null;
        }

        public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        }

        public void onItemsChanged(RecyclerView recyclerView) {
        }

        public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        }

        public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        }

        public void onItemsUpdated(RecyclerView recyclerView, int i, int i2) {
        }

        public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
            onItemsUpdated(recyclerView, i, i2);
        }

        public void onLayoutChildren(Recycler recycler, State state) {
            Log.e(RecyclerView.TAG, "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public void onLayoutCompleted(State state) {
        }

        public void onMeasure(Recycler recycler, State state, int i, int i2) {
            this.mRecyclerView.defaultOnMeasure(i, i2);
        }

        public boolean onRequestChildFocus(RecyclerView recyclerView, State state, View view, View view2) {
            return onRequestChildFocus(recyclerView, view, view2);
        }

        @Deprecated
        public boolean onRequestChildFocus(RecyclerView recyclerView, View view, View view2) {
            return isSmoothScrolling() || recyclerView.isComputingLayout();
        }

        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState() {
            return null;
        }

        public void onScrollStateChanged(int i) {
        }

        /* Access modifiers changed, original: 0000 */
        public boolean performAccessibilityAction(int i, Bundle bundle) {
            return performAccessibilityAction(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, i, bundle);
        }

        /* JADX WARNING: Missing block: B:19:0x007a, code skipped:
            r3 = r0;
            r0 = 0;
     */
        public boolean performAccessibilityAction(android.support.v7.widget.RecyclerView.Recycler r7, android.support.v7.widget.RecyclerView.State r8, int r9, android.os.Bundle r10) {
            /*
            r6 = this;
            r4 = -1;
            r2 = 1;
            r1 = 0;
            r0 = r6.mRecyclerView;
            if (r0 != 0) goto L_0x0008;
        L_0x0007:
            return r1;
        L_0x0008:
            switch(r9) {
                case 4096: goto L_0x004a;
                case 8192: goto L_0x0018;
                default: goto L_0x000b;
            };
        L_0x000b:
            r0 = r1;
            r3 = r1;
        L_0x000d:
            if (r3 != 0) goto L_0x0011;
        L_0x000f:
            if (r0 == 0) goto L_0x0007;
        L_0x0011:
            r1 = r6.mRecyclerView;
            r1.scrollBy(r0, r3);
            r1 = r2;
            goto L_0x0007;
        L_0x0018:
            r0 = r6.mRecyclerView;
            r0 = android.support.v4.view.ViewCompat.canScrollVertically(r0, r4);
            if (r0 == 0) goto L_0x007f;
        L_0x0020:
            r0 = r6.getHeight();
            r3 = r6.getPaddingTop();
            r0 = r0 - r3;
            r3 = r6.getPaddingBottom();
            r0 = r0 - r3;
            r0 = -r0;
        L_0x002f:
            r3 = r6.mRecyclerView;
            r3 = android.support.v4.view.ViewCompat.canScrollHorizontally(r3, r4);
            if (r3 == 0) goto L_0x007a;
        L_0x0037:
            r3 = r6.getWidth();
            r4 = r6.getPaddingLeft();
            r3 = r3 - r4;
            r4 = r6.getPaddingRight();
            r3 = r3 - r4;
            r3 = -r3;
            r5 = r3;
            r3 = r0;
            r0 = r5;
            goto L_0x000d;
        L_0x004a:
            r0 = r6.mRecyclerView;
            r0 = android.support.v4.view.ViewCompat.canScrollVertically(r0, r2);
            if (r0 == 0) goto L_0x007d;
        L_0x0052:
            r0 = r6.getHeight();
            r3 = r6.getPaddingTop();
            r0 = r0 - r3;
            r3 = r6.getPaddingBottom();
            r0 = r0 - r3;
        L_0x0060:
            r3 = r6.mRecyclerView;
            r3 = android.support.v4.view.ViewCompat.canScrollHorizontally(r3, r2);
            if (r3 == 0) goto L_0x007a;
        L_0x0068:
            r3 = r6.getWidth();
            r4 = r6.getPaddingLeft();
            r3 = r3 - r4;
            r4 = r6.getPaddingRight();
            r3 = r3 - r4;
            r5 = r3;
            r3 = r0;
            r0 = r5;
            goto L_0x000d;
        L_0x007a:
            r3 = r0;
            r0 = r1;
            goto L_0x000d;
        L_0x007d:
            r0 = r1;
            goto L_0x0060;
        L_0x007f:
            r0 = r1;
            goto L_0x002f;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.RecyclerView$LayoutManager.performAccessibilityAction(android.support.v7.widget.RecyclerView$Recycler, android.support.v7.widget.RecyclerView$State, int, android.os.Bundle):boolean");
        }

        public boolean performAccessibilityActionForItem(Recycler recycler, State state, View view, int i, Bundle bundle) {
            return false;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean performAccessibilityActionForItem(View view, int i, Bundle bundle) {
            return performAccessibilityActionForItem(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, view, i, bundle);
        }

        public void postOnAnimation(Runnable runnable) {
            if (this.mRecyclerView != null) {
                ViewCompat.postOnAnimation(this.mRecyclerView, runnable);
            }
        }

        public void removeAllViews() {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                this.mChildHelper.removeViewAt(childCount);
            }
        }

        public void removeAndRecycleAllViews(Recycler recycler) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                if (!RecyclerView.getChildViewHolderInt(getChildAt(childCount)).shouldIgnore()) {
                    removeAndRecycleViewAt(childCount, recycler);
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void removeAndRecycleScrapInt(Recycler recycler) {
            int scrapCount = recycler.getScrapCount();
            for (int i = scrapCount - 1; i >= 0; i--) {
                View scrapViewAt = recycler.getScrapViewAt(i);
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(scrapViewAt);
                if (!childViewHolderInt.shouldIgnore()) {
                    childViewHolderInt.setIsRecyclable(false);
                    if (childViewHolderInt.isTmpDetached()) {
                        this.mRecyclerView.removeDetachedView(scrapViewAt, false);
                    }
                    if (this.mRecyclerView.mItemAnimator != null) {
                        this.mRecyclerView.mItemAnimator.endAnimation(childViewHolderInt);
                    }
                    childViewHolderInt.setIsRecyclable(true);
                    recycler.quickRecycleScrapView(scrapViewAt);
                }
            }
            recycler.clearScrap();
            if (scrapCount > 0) {
                this.mRecyclerView.invalidate();
            }
        }

        public void removeAndRecycleView(View view, Recycler recycler) {
            removeView(view);
            recycler.recycleView(view);
        }

        public void removeAndRecycleViewAt(int i, Recycler recycler) {
            View childAt = getChildAt(i);
            removeViewAt(i);
            recycler.recycleView(childAt);
        }

        public boolean removeCallbacks(Runnable runnable) {
            return this.mRecyclerView != null ? this.mRecyclerView.removeCallbacks(runnable) : false;
        }

        public void removeDetachedView(View view) {
            this.mRecyclerView.removeDetachedView(view, false);
        }

        public void removeView(View view) {
            this.mChildHelper.removeView(view);
        }

        public void removeViewAt(int i) {
            if (getChildAt(i) != null) {
                this.mChildHelper.removeViewAt(i);
            }
        }

        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width2 = left + rect.width();
            int height2 = top + rect.height();
            int min = Math.min(0, left - paddingLeft);
            int min2 = Math.min(0, top - paddingTop);
            int max = Math.max(0, width2 - width);
            height = Math.max(0, height2 - height);
            if (getLayoutDirection() == 1) {
                if (max == 0) {
                    max = Math.max(min, width2 - width);
                }
                min = max;
            } else {
                min = min != 0 ? min : Math.min(left - paddingLeft, max);
            }
            max = min2 != 0 ? min2 : Math.min(top - paddingTop, height);
            if (min == 0 && max == 0) {
                return false;
            }
            if (z) {
                recyclerView.scrollBy(min, max);
            } else {
                recyclerView.smoothScrollBy(min, max);
            }
            return true;
        }

        public void requestLayout() {
            if (this.mRecyclerView != null) {
                this.mRecyclerView.requestLayout();
            }
        }

        public void requestSimpleAnimationsInNextLayout() {
            this.mRequestedSimpleAnimations = true;
        }

        public int scrollHorizontallyBy(int i, Recycler recycler, State state) {
            return 0;
        }

        public void scrollToPosition(int i) {
        }

        public int scrollVerticallyBy(int i, Recycler recycler, State state) {
            return 0;
        }

        public void setAutoMeasureEnabled(boolean z) {
            this.mAutoMeasure = z;
        }

        /* Access modifiers changed, original: 0000 */
        public void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
            setMeasureSpecs(MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        /* Access modifiers changed, original: 0000 */
        public void setMeasureSpecs(int i, int i2) {
            this.mWidth = MeasureSpec.getSize(i);
            this.mWidthMode = MeasureSpec.getMode(i);
            if (this.mWidthMode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.mWidth = 0;
            }
            this.mHeight = MeasureSpec.getSize(i2);
            this.mHeightMode = MeasureSpec.getMode(i2);
            if (this.mHeightMode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.mHeight = 0;
            }
        }

        public void setMeasuredDimension(int i, int i2) {
            this.mRecyclerView.setMeasuredDimension(i, i2);
        }

        public void setMeasuredDimension(Rect rect, int i, int i2) {
            setMeasuredDimension(chooseSize(i, (rect.width() + getPaddingLeft()) + getPaddingRight(), getMinimumWidth()), chooseSize(i2, (rect.height() + getPaddingTop()) + getPaddingBottom(), getMinimumHeight()));
        }

        /* Access modifiers changed, original: 0000 */
        public void setMeasuredDimensionFromChildren(int i, int i2) {
            int i3 = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            int i4 = Integer.MIN_VALUE;
            int childCount = getChildCount();
            if (childCount == 0) {
                this.mRecyclerView.defaultOnMeasure(i, i2);
                return;
            }
            int i5 = 0;
            int i6 = Integer.MIN_VALUE;
            int i7 = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            while (i5 < childCount) {
                View childAt = getChildAt(i5);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Rect access$5300 = this.mRecyclerView.mTempRect;
                getDecoratedBoundsWithMargins(childAt, access$5300);
                i5++;
                i4 = access$5300.bottom > i4 ? access$5300.bottom : i4;
                i3 = access$5300.top < i3 ? access$5300.top : i3;
                i6 = access$5300.right > i6 ? access$5300.right : i6;
                i7 = access$5300.left < i7 ? access$5300.left : i7;
            }
            this.mRecyclerView.mTempRect.set(i7, i3, i6, i4);
            setMeasuredDimension(this.mRecyclerView.mTempRect, i, i2);
        }

        public void setMeasurementCacheEnabled(boolean z) {
            this.mMeasurementCacheEnabled = z;
        }

        /* Access modifiers changed, original: 0000 */
        public void setRecyclerView(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.mRecyclerView = null;
                this.mChildHelper = null;
                this.mWidth = 0;
                this.mHeight = 0;
            } else {
                this.mRecyclerView = recyclerView;
                this.mChildHelper = recyclerView.mChildHelper;
                this.mWidth = recyclerView.getWidth();
                this.mHeight = recyclerView.getHeight();
            }
            this.mWidthMode = 1073741824;
            this.mHeightMode = 1073741824;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean shouldMeasureChild(View view, int i, int i2, LayoutParams layoutParams) {
            return (!view.isLayoutRequested() && this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getWidth(), i, layoutParams.width) && isMeasurementUpToDate(view.getHeight(), i2, layoutParams.height)) ? false : true;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean shouldMeasureTwice() {
            return false;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean shouldReMeasureChild(View view, int i, int i2, LayoutParams layoutParams) {
            return (this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getMeasuredWidth(), i, layoutParams.width) && isMeasurementUpToDate(view.getMeasuredHeight(), i2, layoutParams.height)) ? false : true;
        }

        public void smoothScrollToPosition(RecyclerView recyclerView, State state, int i) {
            Log.e(RecyclerView.TAG, "You must override smoothScrollToPosition to support smooth scrolling");
        }

        public void startSmoothScroll(SmoothScroller smoothScroller) {
            if (!(this.mSmoothScroller == null || smoothScroller == this.mSmoothScroller || !this.mSmoothScroller.isRunning())) {
                this.mSmoothScroller.stop();
            }
            this.mSmoothScroller = smoothScroller;
            this.mSmoothScroller.start(this.mRecyclerView, this);
        }

        public void stopIgnoringView(View view) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.stopIgnoring();
            childViewHolderInt.resetInternal();
            childViewHolderInt.addFlags(4);
        }

        /* Access modifiers changed, original: 0000 */
        public void stopSmoothScroller() {
            if (this.mSmoothScroller != null) {
                this.mSmoothScroller.stop();
            }
        }

        public boolean supportsPredictiveItemAnimations() {
            return false;
        }
    }

    public static abstract class SmoothScroller {
        private LayoutManager mLayoutManager;
        private boolean mPendingInitialRun;
        private RecyclerView mRecyclerView;
        private final Action mRecyclingAction = new Action(0, 0);
        private boolean mRunning;
        private int mTargetPosition = -1;
        private View mTargetView;

        public interface ScrollVectorProvider {
            PointF computeScrollVectorForPosition(int i);
        }

        public static class Action {
            public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
            private boolean changed;
            private int consecutiveUpdates;
            private int mDuration;
            private int mDx;
            private int mDy;
            private Interpolator mInterpolator;
            private int mJumpToPosition;

            public Action(int i, int i2) {
                this(i, i2, Integer.MIN_VALUE, null);
            }

            public Action(int i, int i2, int i3) {
                this(i, i2, i3, null);
            }

            public Action(int i, int i2, int i3, Interpolator interpolator) {
                this.mJumpToPosition = -1;
                this.changed = false;
                this.consecutiveUpdates = 0;
                this.mDx = i;
                this.mDy = i2;
                this.mDuration = i3;
                this.mInterpolator = interpolator;
            }

            private void runIfNecessary(RecyclerView recyclerView) {
                if (this.mJumpToPosition >= 0) {
                    int i = this.mJumpToPosition;
                    this.mJumpToPosition = -1;
                    recyclerView.jumpToPositionForSmoothScroller(i);
                    this.changed = false;
                } else if (this.changed) {
                    validate();
                    if (this.mInterpolator != null) {
                        recyclerView.mViewFlinger.smoothScrollBy(this.mDx, this.mDy, this.mDuration, this.mInterpolator);
                    } else if (this.mDuration == Integer.MIN_VALUE) {
                        recyclerView.mViewFlinger.smoothScrollBy(this.mDx, this.mDy);
                    } else {
                        recyclerView.mViewFlinger.smoothScrollBy(this.mDx, this.mDy, this.mDuration);
                    }
                    this.consecutiveUpdates++;
                    if (this.consecutiveUpdates > 10) {
                        Log.e(RecyclerView.TAG, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.changed = false;
                } else {
                    this.consecutiveUpdates = 0;
                }
            }

            private void validate() {
                if (this.mInterpolator != null && this.mDuration < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                } else if (this.mDuration < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            public int getDuration() {
                return this.mDuration;
            }

            public int getDx() {
                return this.mDx;
            }

            public int getDy() {
                return this.mDy;
            }

            public Interpolator getInterpolator() {
                return this.mInterpolator;
            }

            /* Access modifiers changed, original: 0000 */
            public boolean hasJumpTarget() {
                return this.mJumpToPosition >= 0;
            }

            public void jumpTo(int i) {
                this.mJumpToPosition = i;
            }

            public void setDuration(int i) {
                this.changed = true;
                this.mDuration = i;
            }

            public void setDx(int i) {
                this.changed = true;
                this.mDx = i;
            }

            public void setDy(int i) {
                this.changed = true;
                this.mDy = i;
            }

            public void setInterpolator(Interpolator interpolator) {
                this.changed = true;
                this.mInterpolator = interpolator;
            }

            public void update(int i, int i2, int i3, Interpolator interpolator) {
                this.mDx = i;
                this.mDy = i2;
                this.mDuration = i3;
                this.mInterpolator = interpolator;
                this.changed = true;
            }
        }

        private void onAnimation(int i, int i2) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (!this.mRunning || this.mTargetPosition == -1 || recyclerView == null) {
                stop();
            }
            this.mPendingInitialRun = false;
            if (this.mTargetView != null) {
                if (getChildPosition(this.mTargetView) == this.mTargetPosition) {
                    onTargetFound(this.mTargetView, recyclerView.mState, this.mRecyclingAction);
                    this.mRecyclingAction.runIfNecessary(recyclerView);
                    stop();
                } else {
                    Log.e(RecyclerView.TAG, "Passed over target position while smooth scrolling.");
                    this.mTargetView = null;
                }
            }
            if (this.mRunning) {
                onSeekTargetStep(i, i2, recyclerView.mState, this.mRecyclingAction);
                boolean hasJumpTarget = this.mRecyclingAction.hasJumpTarget();
                this.mRecyclingAction.runIfNecessary(recyclerView);
                if (!hasJumpTarget) {
                    return;
                }
                if (this.mRunning) {
                    this.mPendingInitialRun = true;
                    recyclerView.mViewFlinger.postOnAnimation();
                    return;
                }
                stop();
            }
        }

        public View findViewByPosition(int i) {
            return this.mRecyclerView.mLayout.findViewByPosition(i);
        }

        public int getChildCount() {
            return this.mRecyclerView.mLayout.getChildCount();
        }

        public int getChildPosition(View view) {
            return this.mRecyclerView.getChildLayoutPosition(view);
        }

        @Nullable
        public LayoutManager getLayoutManager() {
            return this.mLayoutManager;
        }

        public int getTargetPosition() {
            return this.mTargetPosition;
        }

        @Deprecated
        public void instantScrollToPosition(int i) {
            this.mRecyclerView.scrollToPosition(i);
        }

        public boolean isPendingInitialRun() {
            return this.mPendingInitialRun;
        }

        public boolean isRunning() {
            return this.mRunning;
        }

        /* Access modifiers changed, original: protected */
        public void normalize(PointF pointF) {
            double sqrt = Math.sqrt((double) ((pointF.x * pointF.x) + (pointF.y * pointF.y)));
            pointF.x = (float) (((double) pointF.x) / sqrt);
            pointF.y = (float) (((double) pointF.y) / sqrt);
        }

        /* Access modifiers changed, original: protected */
        public void onChildAttachedToWindow(View view) {
            if (getChildPosition(view) == getTargetPosition()) {
                this.mTargetView = view;
            }
        }

        public abstract void onSeekTargetStep(int i, int i2, State state, Action action);

        public abstract void onStart();

        public abstract void onStop();

        public abstract void onTargetFound(View view, State state, Action action);

        public void setTargetPosition(int i) {
            this.mTargetPosition = i;
        }

        /* Access modifiers changed, original: 0000 */
        public void start(RecyclerView recyclerView, LayoutManager layoutManager) {
            this.mRecyclerView = recyclerView;
            this.mLayoutManager = layoutManager;
            if (this.mTargetPosition == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            this.mRecyclerView.mState.mTargetPosition = this.mTargetPosition;
            this.mRunning = true;
            this.mPendingInitialRun = true;
            this.mTargetView = findViewByPosition(getTargetPosition());
            onStart();
            this.mRecyclerView.mViewFlinger.postOnAnimation();
        }

        /* Access modifiers changed, original: protected|final */
        public final void stop() {
            if (this.mRunning) {
                onStop();
                this.mRecyclerView.mState.mTargetPosition = -1;
                this.mTargetView = null;
                this.mTargetPosition = -1;
                this.mPendingInitialRun = false;
                this.mRunning = false;
                this.mLayoutManager.onSmoothScrollerStopped(this);
                this.mLayoutManager = null;
                this.mRecyclerView = null;
            }
        }
    }

    public static abstract class OnFlingListener {
        public abstract boolean onFling(int i, int i2);
    }

    static class AdapterDataObservable extends Observable<AdapterDataObserver> {
        AdapterDataObservable() {
        }

        public boolean hasObservers() {
            return !this.mObservers.isEmpty();
        }

        public void notifyChanged() {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) this.mObservers.get(size)).onChanged();
            }
        }

        public void notifyItemMoved(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) this.mObservers.get(size)).onItemRangeMoved(i, i2, 1);
            }
        }

        public void notifyItemRangeChanged(int i, int i2) {
            notifyItemRangeChanged(i, i2, null);
        }

        public void notifyItemRangeChanged(int i, int i2, Object obj) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) this.mObservers.get(size)).onItemRangeChanged(i, i2, obj);
            }
        }

        public void notifyItemRangeInserted(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) this.mObservers.get(size)).onItemRangeInserted(i, i2);
            }
        }

        public void notifyItemRangeRemoved(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) this.mObservers.get(size)).onItemRangeRemoved(i, i2);
            }
        }
    }

    public static abstract class AdapterDataObserver {
        public void onChanged() {
        }

        public void onItemRangeChanged(int i, int i2) {
        }

        public void onItemRangeChanged(int i, int i2, Object obj) {
            onItemRangeChanged(i, i2);
        }

        public void onItemRangeInserted(int i, int i2) {
        }

        public void onItemRangeMoved(int i, int i2, int i3) {
        }

        public void onItemRangeRemoved(int i, int i2) {
        }
    }

    public interface ChildDrawingOrderCallback {
        int onGetChildDrawingOrder(int i, int i2);
    }

    private class ItemAnimatorRestoreListener implements ItemAnimatorListener {
        private ItemAnimatorRestoreListener() {
        }

        /* synthetic */ ItemAnimatorRestoreListener(RecyclerView recyclerView, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void onAnimationFinished(ViewHolder viewHolder) {
            viewHolder.setIsRecyclable(true);
            if (viewHolder.mShadowedHolder != null && viewHolder.mShadowingHolder == null) {
                viewHolder.mShadowedHolder = null;
            }
            viewHolder.mShadowingHolder = null;
            if (!viewHolder.shouldBeKeptAsChild() && !RecyclerView.this.removeAnimatingView(viewHolder.itemView) && viewHolder.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(viewHolder.itemView, false);
            }
        }
    }

    public static abstract class ItemDecoration {
        @Deprecated
        public void getItemOffsets(Rect rect, int i, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, State state) {
            getItemOffsets(rect, ((LayoutParams) view.getLayoutParams()).getViewLayoutPosition(), recyclerView);
        }

        @Deprecated
        public void onDraw(Canvas canvas, RecyclerView recyclerView) {
        }

        public void onDraw(Canvas canvas, RecyclerView recyclerView, State state) {
            onDraw(canvas, recyclerView);
        }

        @Deprecated
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
        }

        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, State state) {
            onDrawOver(canvas, recyclerView);
        }
    }

    public interface OnChildAttachStateChangeListener {
        void onChildViewAttachedToWindow(View view);

        void onChildViewDetachedFromWindow(View view);
    }

    public interface OnItemTouchListener {
        boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent);

        void onRequestDisallowInterceptTouchEvent(boolean z);

        void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent);
    }

    public static abstract class OnScrollListener {
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        }

        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        }
    }

    public static class RecycledViewPool {
        private static final int DEFAULT_MAX_SCRAP = 5;
        private int mAttachCount = 0;
        private SparseIntArray mMaxScrap = new SparseIntArray();
        private SparseArray<ArrayList<ViewHolder>> mScrap = new SparseArray();

        private ArrayList<ViewHolder> getScrapHeapForType(int i) {
            ArrayList<ViewHolder> arrayList = (ArrayList) this.mScrap.get(i);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.mScrap.put(i, arrayList);
                if (this.mMaxScrap.indexOfKey(i) < 0) {
                    this.mMaxScrap.put(i, 5);
                }
            }
            return arrayList;
        }

        /* Access modifiers changed, original: 0000 */
        public void attach(Adapter adapter) {
            this.mAttachCount++;
        }

        public void clear() {
            this.mScrap.clear();
        }

        /* Access modifiers changed, original: 0000 */
        public void detach() {
            this.mAttachCount--;
        }

        public ViewHolder getRecycledView(int i) {
            ArrayList arrayList = (ArrayList) this.mScrap.get(i);
            if (arrayList == null || arrayList.isEmpty()) {
                return null;
            }
            int size = arrayList.size() - 1;
            ViewHolder viewHolder = (ViewHolder) arrayList.get(size);
            arrayList.remove(size);
            return viewHolder;
        }

        /* Access modifiers changed, original: 0000 */
        public void onAdapterChanged(Adapter adapter, Adapter adapter2, boolean z) {
            if (adapter != null) {
                detach();
            }
            if (!z && this.mAttachCount == 0) {
                clear();
            }
            if (adapter2 != null) {
                attach(adapter2);
            }
        }

        public void putRecycledView(ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            ArrayList scrapHeapForType = getScrapHeapForType(itemViewType);
            if (this.mMaxScrap.get(itemViewType) > scrapHeapForType.size()) {
                viewHolder.resetInternal();
                scrapHeapForType.add(viewHolder);
            }
        }

        public void setMaxRecycledViews(int i, int i2) {
            this.mMaxScrap.put(i, i2);
            ArrayList arrayList = (ArrayList) this.mScrap.get(i);
            if (arrayList != null) {
                while (arrayList.size() > i2) {
                    arrayList.remove(arrayList.size() - 1);
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        public int size() {
            int i = 0;
            for (int i2 = 0; i2 < this.mScrap.size(); i2++) {
                ArrayList arrayList = (ArrayList) this.mScrap.valueAt(i2);
                if (arrayList != null) {
                    i += arrayList.size();
                }
            }
            return i;
        }
    }

    public final class Recycler {
        private static final int DEFAULT_CACHE_SIZE = 2;
        final ArrayList<ViewHolder> mAttachedScrap = new ArrayList();
        final ArrayList<ViewHolder> mCachedViews = new ArrayList();
        private ArrayList<ViewHolder> mChangedScrap = null;
        private RecycledViewPool mRecyclerPool;
        private final List<ViewHolder> mUnmodifiableAttachedScrap = Collections.unmodifiableList(this.mAttachedScrap);
        private ViewCacheExtension mViewCacheExtension;
        private int mViewCacheMax = 2;

        private void attachAccessibilityDelegate(View view) {
            if (RecyclerView.this.isAccessibilityEnabled()) {
                if (ViewCompat.getImportantForAccessibility(view) == 0) {
                    ViewCompat.setImportantForAccessibility(view, 1);
                }
                if (!ViewCompat.hasAccessibilityDelegate(view)) {
                    ViewCompat.setAccessibilityDelegate(view, RecyclerView.this.mAccessibilityDelegate.getItemDelegate());
                }
            }
        }

        private void invalidateDisplayListInt(ViewHolder viewHolder) {
            if (viewHolder.itemView instanceof ViewGroup) {
                invalidateDisplayListInt((ViewGroup) viewHolder.itemView, false);
            }
        }

        private void invalidateDisplayListInt(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    invalidateDisplayListInt((ViewGroup) childAt, true);
                }
            }
            if (!z) {
                return;
            }
            if (viewGroup.getVisibility() == 4) {
                viewGroup.setVisibility(0);
                viewGroup.setVisibility(4);
                return;
            }
            int visibility = viewGroup.getVisibility();
            viewGroup.setVisibility(4);
            viewGroup.setVisibility(visibility);
        }

        /* Access modifiers changed, original: 0000 */
        public void addViewHolderToRecycledViewPool(ViewHolder viewHolder) {
            ViewCompat.setAccessibilityDelegate(viewHolder.itemView, null);
            dispatchViewRecycled(viewHolder);
            viewHolder.mOwnerRecyclerView = null;
            getRecycledViewPool().putRecycledView(viewHolder);
        }

        public void bindViewToPosition(View view, int i) {
            boolean z = true;
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt == null) {
                throw new IllegalArgumentException("The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter");
            }
            int findPositionOffset = RecyclerView.this.mAdapterHelper.findPositionOffset(i);
            if (findPositionOffset < 0 || findPositionOffset >= RecyclerView.this.mAdapter.getItemCount()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i + "(offset:" + findPositionOffset + ")." + "state:" + RecyclerView.this.mState.getItemCount());
            }
            LayoutParams layoutParams;
            childViewHolderInt.mOwnerRecyclerView = RecyclerView.this;
            RecyclerView.this.mAdapter.bindViewHolder(childViewHolderInt, findPositionOffset);
            attachAccessibilityDelegate(view);
            if (RecyclerView.this.mState.isPreLayout()) {
                childViewHolderInt.mPreLayoutPosition = i;
            }
            android.view.ViewGroup.LayoutParams layoutParams2 = childViewHolderInt.itemView.getLayoutParams();
            if (layoutParams2 == null) {
                layoutParams = (LayoutParams) RecyclerView.this.generateDefaultLayoutParams();
                childViewHolderInt.itemView.setLayoutParams(layoutParams);
            } else if (RecyclerView.this.checkLayoutParams(layoutParams2)) {
                layoutParams = (LayoutParams) layoutParams2;
            } else {
                layoutParams = (LayoutParams) RecyclerView.this.generateLayoutParams(layoutParams2);
                childViewHolderInt.itemView.setLayoutParams(layoutParams);
            }
            layoutParams.mInsetsDirty = true;
            layoutParams.mViewHolder = childViewHolderInt;
            if (childViewHolderInt.itemView.getParent() != null) {
                z = false;
            }
            layoutParams.mPendingInvalidate = z;
        }

        public void clear() {
            this.mAttachedScrap.clear();
            recycleAndClearCachedViews();
        }

        /* Access modifiers changed, original: 0000 */
        public void clearOldPositions() {
            int i;
            int i2 = 0;
            int size = this.mCachedViews.size();
            for (i = 0; i < size; i++) {
                ((ViewHolder) this.mCachedViews.get(i)).clearOldPosition();
            }
            size = this.mAttachedScrap.size();
            for (i = 0; i < size; i++) {
                ((ViewHolder) this.mAttachedScrap.get(i)).clearOldPosition();
            }
            if (this.mChangedScrap != null) {
                i = this.mChangedScrap.size();
                while (i2 < i) {
                    ((ViewHolder) this.mChangedScrap.get(i2)).clearOldPosition();
                    i2++;
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void clearScrap() {
            this.mAttachedScrap.clear();
            if (this.mChangedScrap != null) {
                this.mChangedScrap.clear();
            }
        }

        public int convertPreLayoutPositionToPostLayout(int i) {
            if (i >= 0 && i < RecyclerView.this.mState.getItemCount()) {
                return !RecyclerView.this.mState.isPreLayout() ? i : RecyclerView.this.mAdapterHelper.findPositionOffset(i);
            } else {
                throw new IndexOutOfBoundsException("invalid position " + i + ". State " + "item count is " + RecyclerView.this.mState.getItemCount());
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void dispatchViewRecycled(ViewHolder viewHolder) {
            if (RecyclerView.this.mRecyclerListener != null) {
                RecyclerView.this.mRecyclerListener.onViewRecycled(viewHolder);
            }
            if (RecyclerView.this.mAdapter != null) {
                RecyclerView.this.mAdapter.onViewRecycled(viewHolder);
            }
            if (RecyclerView.this.mState != null) {
                RecyclerView.this.mViewInfoStore.removeViewHolder(viewHolder);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public ViewHolder getChangedScrapViewForPosition(int i) {
            int i2 = 0;
            if (this.mChangedScrap != null) {
                int size = this.mChangedScrap.size();
                if (size != 0) {
                    ViewHolder viewHolder;
                    int i3 = 0;
                    while (i3 < size) {
                        viewHolder = (ViewHolder) this.mChangedScrap.get(i3);
                        if (viewHolder.wasReturnedFromScrap() || viewHolder.getLayoutPosition() != i) {
                            i3++;
                        } else {
                            viewHolder.addFlags(32);
                            return viewHolder;
                        }
                    }
                    if (RecyclerView.this.mAdapter.hasStableIds()) {
                        int findPositionOffset = RecyclerView.this.mAdapterHelper.findPositionOffset(i);
                        if (findPositionOffset > 0 && findPositionOffset < RecyclerView.this.mAdapter.getItemCount()) {
                            long itemId = RecyclerView.this.mAdapter.getItemId(findPositionOffset);
                            while (i2 < size) {
                                viewHolder = (ViewHolder) this.mChangedScrap.get(i2);
                                if (viewHolder.wasReturnedFromScrap() || viewHolder.getItemId() != itemId) {
                                    i2++;
                                } else {
                                    viewHolder.addFlags(32);
                                    return viewHolder;
                                }
                            }
                        }
                    }
                    return null;
                }
            }
            return null;
        }

        /* Access modifiers changed, original: 0000 */
        public RecycledViewPool getRecycledViewPool() {
            if (this.mRecyclerPool == null) {
                this.mRecyclerPool = new RecycledViewPool();
            }
            return this.mRecyclerPool;
        }

        /* Access modifiers changed, original: 0000 */
        public int getScrapCount() {
            return this.mAttachedScrap.size();
        }

        public List<ViewHolder> getScrapList() {
            return this.mUnmodifiableAttachedScrap;
        }

        /* Access modifiers changed, original: 0000 */
        public View getScrapViewAt(int i) {
            return ((ViewHolder) this.mAttachedScrap.get(i)).itemView;
        }

        /* Access modifiers changed, original: 0000 */
        public ViewHolder getScrapViewForId(long j, int i, boolean z) {
            int size;
            ViewHolder viewHolder;
            for (size = this.mAttachedScrap.size() - 1; size >= 0; size--) {
                viewHolder = (ViewHolder) this.mAttachedScrap.get(size);
                if (viewHolder.getItemId() == j && !viewHolder.wasReturnedFromScrap()) {
                    if (i == viewHolder.getItemViewType()) {
                        viewHolder.addFlags(32);
                        if (!viewHolder.isRemoved() || RecyclerView.this.mState.isPreLayout()) {
                            return viewHolder;
                        }
                        viewHolder.setFlags(2, 14);
                        return viewHolder;
                    } else if (!z) {
                        this.mAttachedScrap.remove(size);
                        RecyclerView.this.removeDetachedView(viewHolder.itemView, false);
                        quickRecycleScrapView(viewHolder.itemView);
                    }
                }
            }
            for (size = this.mCachedViews.size() - 1; size >= 0; size--) {
                viewHolder = (ViewHolder) this.mCachedViews.get(size);
                if (viewHolder.getItemId() == j) {
                    if (i == viewHolder.getItemViewType()) {
                        if (z) {
                            return viewHolder;
                        }
                        this.mCachedViews.remove(size);
                        return viewHolder;
                    } else if (!z) {
                        recycleCachedViewAt(size);
                    }
                }
            }
            return null;
        }

        /* Access modifiers changed, original: 0000 */
        /* JADX WARNING: Removed duplicated region for block: B:17:0x007b  */
        /* JADX WARNING: Removed duplicated region for block: B:28:0x00d6  */
        public android.support.v7.widget.RecyclerView.ViewHolder getScrapViewForPosition(int r7, int r8, boolean r9) {
            /*
            r6 = this;
            r1 = 0;
            r5 = -1;
            r0 = r6.mAttachedScrap;
            r3 = r0.size();
            r2 = r1;
        L_0x0009:
            if (r2 >= r3) goto L_0x0079;
        L_0x000b:
            r0 = r6.mAttachedScrap;
            r0 = r0.get(r2);
            r0 = (android.support.v7.widget.RecyclerView.ViewHolder) r0;
            r4 = r0.wasReturnedFromScrap();
            if (r4 != 0) goto L_0x00b9;
        L_0x0019:
            r4 = r0.getLayoutPosition();
            if (r4 != r7) goto L_0x00b9;
        L_0x001f:
            r4 = r0.isInvalid();
            if (r4 != 0) goto L_0x00b9;
        L_0x0025:
            r4 = android.support.v7.widget.RecyclerView.this;
            r4 = r4.mState;
            r4 = r4.mInPreLayout;
            if (r4 != 0) goto L_0x0035;
        L_0x002f:
            r4 = r0.isRemoved();
            if (r4 != 0) goto L_0x00b9;
        L_0x0035:
            if (r8 == r5) goto L_0x00b3;
        L_0x0037:
            r2 = r0.getItemViewType();
            if (r2 == r8) goto L_0x00b3;
        L_0x003d:
            r2 = "RecyclerView";
            r3 = new java.lang.StringBuilder;
            r3.<init>();
            r4 = "Scrap view for position ";
            r3 = r3.append(r4);
            r3 = r3.append(r7);
            r4 = " isn't dirty but has";
            r3 = r3.append(r4);
            r4 = " wrong view type! (found ";
            r3 = r3.append(r4);
            r0 = r0.getItemViewType();
            r0 = r3.append(r0);
            r3 = " but expected ";
            r0 = r0.append(r3);
            r0 = r0.append(r8);
            r3 = ")";
            r0 = r0.append(r3);
            r0 = r0.toString();
            android.util.Log.e(r2, r0);
        L_0x0079:
            if (r9 != 0) goto L_0x00ce;
        L_0x007b:
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.mChildHelper;
            r2 = r0.findHiddenNonRemovedView(r7, r8);
            if (r2 == 0) goto L_0x00ce;
        L_0x0085:
            r0 = android.support.v7.widget.RecyclerView.getChildViewHolderInt(r2);
            r1 = android.support.v7.widget.RecyclerView.this;
            r1 = r1.mChildHelper;
            r1.unhide(r2);
            r1 = android.support.v7.widget.RecyclerView.this;
            r1 = r1.mChildHelper;
            r1 = r1.indexOfChild(r2);
            if (r1 != r5) goto L_0x00be;
        L_0x009a:
            r1 = new java.lang.IllegalStateException;
            r2 = new java.lang.StringBuilder;
            r2.<init>();
            r3 = "layout index should not be -1 after unhiding a view:";
            r2 = r2.append(r3);
            r0 = r2.append(r0);
            r0 = r0.toString();
            r1.<init>(r0);
            throw r1;
        L_0x00b3:
            r1 = 32;
            r0.addFlags(r1);
        L_0x00b8:
            return r0;
        L_0x00b9:
            r0 = r2 + 1;
            r2 = r0;
            goto L_0x0009;
        L_0x00be:
            r3 = android.support.v7.widget.RecyclerView.this;
            r3 = r3.mChildHelper;
            r3.detachViewFromParent(r1);
            r6.scrapView(r2);
            r1 = 8224; // 0x2020 float:1.1524E-41 double:4.063E-320;
            r0.addFlags(r1);
            goto L_0x00b8;
        L_0x00ce:
            r0 = r6.mCachedViews;
            r2 = r0.size();
        L_0x00d4:
            if (r1 >= r2) goto L_0x00f6;
        L_0x00d6:
            r0 = r6.mCachedViews;
            r0 = r0.get(r1);
            r0 = (android.support.v7.widget.RecyclerView.ViewHolder) r0;
            r3 = r0.isInvalid();
            if (r3 != 0) goto L_0x00f2;
        L_0x00e4:
            r3 = r0.getLayoutPosition();
            if (r3 != r7) goto L_0x00f2;
        L_0x00ea:
            if (r9 != 0) goto L_0x00b8;
        L_0x00ec:
            r2 = r6.mCachedViews;
            r2.remove(r1);
            goto L_0x00b8;
        L_0x00f2:
            r0 = r1 + 1;
            r1 = r0;
            goto L_0x00d4;
        L_0x00f6:
            r0 = 0;
            goto L_0x00b8;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.RecyclerView$Recycler.getScrapViewForPosition(int, int, boolean):android.support.v7.widget.RecyclerView$ViewHolder");
        }

        public View getViewForPosition(int i) {
            return getViewForPosition(i, false);
        }

        /* Access modifiers changed, original: 0000 */
        /* JADX WARNING: Removed duplicated region for block: B:68:0x0182  */
        /* JADX WARNING: Removed duplicated region for block: B:90:0x0206  */
        /* JADX WARNING: Removed duplicated region for block: B:92:0x020a  */
        /* JADX WARNING: Removed duplicated region for block: B:76:0x01b8  */
        /* JADX WARNING: Removed duplicated region for block: B:24:0x0086  */
        /* JADX WARNING: Removed duplicated region for block: B:68:0x0182  */
        /* JADX WARNING: Removed duplicated region for block: B:71:0x01a7  */
        /* JADX WARNING: Removed duplicated region for block: B:84:0x01d6  */
        /* JADX WARNING: Removed duplicated region for block: B:90:0x0206  */
        /* JADX WARNING: Removed duplicated region for block: B:76:0x01b8  */
        /* JADX WARNING: Removed duplicated region for block: B:92:0x020a  */
        public android.view.View getViewForPosition(int r11, boolean r12) {
            /*
            r10 = this;
            r3 = 0;
            r8 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
            r1 = 1;
            r2 = 0;
            if (r11 < 0) goto L_0x0011;
        L_0x0007:
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.mState;
            r0 = r0.getItemCount();
            if (r11 < r0) goto L_0x0046;
        L_0x0011:
            r0 = new java.lang.IndexOutOfBoundsException;
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r2 = "Invalid item position ";
            r1 = r1.append(r2);
            r1 = r1.append(r11);
            r2 = "(";
            r1 = r1.append(r2);
            r1 = r1.append(r11);
            r2 = "). Item count:";
            r1 = r1.append(r2);
            r2 = android.support.v7.widget.RecyclerView.this;
            r2 = r2.mState;
            r2 = r2.getItemCount();
            r1 = r1.append(r2);
            r1 = r1.toString();
            r0.<init>(r1);
            throw r0;
        L_0x0046:
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.mState;
            r0 = r0.isPreLayout();
            if (r0 == 0) goto L_0x022e;
        L_0x0050:
            r4 = r10.getChangedScrapViewForPosition(r11);
            if (r4 == 0) goto L_0x00d7;
        L_0x0056:
            r0 = r1;
        L_0x0057:
            r9 = r4;
            r4 = r0;
            r0 = r9;
        L_0x005a:
            if (r0 != 0) goto L_0x022b;
        L_0x005c:
            r0 = -1;
            r0 = r10.getScrapViewForPosition(r11, r0, r12);
            if (r0 == 0) goto L_0x022b;
        L_0x0063:
            r5 = r10.validateViewHolderForOffsetPosition(r0);
            if (r5 != 0) goto L_0x00e4;
        L_0x0069:
            if (r12 != 0) goto L_0x0082;
        L_0x006b:
            r5 = 4;
            r0.addFlags(r5);
            r5 = r0.isScrap();
            if (r5 == 0) goto L_0x00da;
        L_0x0075:
            r5 = android.support.v7.widget.RecyclerView.this;
            r6 = r0.itemView;
            r5.removeDetachedView(r6, r2);
            r0.unScrap();
        L_0x007f:
            r10.recycleViewHolderInternal(r0);
        L_0x0082:
            r0 = r3;
            r3 = r4;
        L_0x0084:
            if (r0 != 0) goto L_0x0227;
        L_0x0086:
            r4 = android.support.v7.widget.RecyclerView.this;
            r4 = r4.mAdapterHelper;
            r4 = r4.findPositionOffset(r11);
            if (r4 < 0) goto L_0x009c;
        L_0x0090:
            r5 = android.support.v7.widget.RecyclerView.this;
            r5 = r5.mAdapter;
            r5 = r5.getItemCount();
            if (r4 < r5) goto L_0x00e6;
        L_0x009c:
            r0 = new java.lang.IndexOutOfBoundsException;
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r2 = "Inconsistency detected. Invalid item position ";
            r1 = r1.append(r2);
            r1 = r1.append(r11);
            r2 = "(offset:";
            r1 = r1.append(r2);
            r1 = r1.append(r4);
            r2 = ").";
            r1 = r1.append(r2);
            r2 = "state:";
            r1 = r1.append(r2);
            r2 = android.support.v7.widget.RecyclerView.this;
            r2 = r2.mState;
            r2 = r2.getItemCount();
            r1 = r1.append(r2);
            r1 = r1.toString();
            r0.<init>(r1);
            throw r0;
        L_0x00d7:
            r0 = r2;
            goto L_0x0057;
        L_0x00da:
            r5 = r0.wasReturnedFromScrap();
            if (r5 == 0) goto L_0x007f;
        L_0x00e0:
            r0.clearReturnedFromScrapFlag();
            goto L_0x007f;
        L_0x00e4:
            r3 = r1;
            goto L_0x0084;
        L_0x00e6:
            r5 = android.support.v7.widget.RecyclerView.this;
            r5 = r5.mAdapter;
            r5 = r5.getItemViewType(r4);
            r6 = android.support.v7.widget.RecyclerView.this;
            r6 = r6.mAdapter;
            r6 = r6.hasStableIds();
            if (r6 == 0) goto L_0x010f;
        L_0x00fc:
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.mAdapter;
            r6 = r0.getItemId(r4);
            r0 = r10.getScrapViewForId(r6, r5, r12);
            if (r0 == 0) goto L_0x010f;
        L_0x010c:
            r0.mPosition = r4;
            r3 = r1;
        L_0x010f:
            if (r0 != 0) goto L_0x013b;
        L_0x0111:
            r4 = r10.mViewCacheExtension;
            if (r4 == 0) goto L_0x013b;
        L_0x0115:
            r4 = r10.mViewCacheExtension;
            r4 = r4.getViewForPositionAndType(r10, r11, r5);
            if (r4 == 0) goto L_0x013b;
        L_0x011d:
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.getChildViewHolder(r4);
            if (r0 != 0) goto L_0x012d;
        L_0x0125:
            r0 = new java.lang.IllegalArgumentException;
            r1 = "getViewForPositionAndType returned a view which does not have a ViewHolder";
            r0.<init>(r1);
            throw r0;
        L_0x012d:
            r4 = r0.shouldIgnore();
            if (r4 == 0) goto L_0x013b;
        L_0x0133:
            r0 = new java.lang.IllegalArgumentException;
            r1 = "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.";
            r0.<init>(r1);
            throw r0;
        L_0x013b:
            if (r0 != 0) goto L_0x0153;
        L_0x013d:
            r0 = r10.getRecycledViewPool();
            r0 = r0.getRecycledView(r5);
            if (r0 == 0) goto L_0x0153;
        L_0x0147:
            r0.resetInternal();
            r4 = android.support.v7.widget.RecyclerView.FORCE_INVALIDATE_DISPLAY_LIST;
            if (r4 == 0) goto L_0x0153;
        L_0x0150:
            r10.invalidateDisplayListInt(r0);
        L_0x0153:
            if (r0 != 0) goto L_0x0227;
        L_0x0155:
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.mAdapter;
            r4 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.createViewHolder(r4, r5);
            r4 = r0;
            r5 = r3;
        L_0x0163:
            if (r5 == 0) goto L_0x019d;
        L_0x0165:
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.mState;
            r0 = r0.isPreLayout();
            if (r0 != 0) goto L_0x019d;
        L_0x016f:
            r0 = r4.hasAnyOfTheFlags(r8);
            if (r0 == 0) goto L_0x019d;
        L_0x0175:
            r4.setFlags(r2, r8);
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.mState;
            r0 = r0.mRunSimpleAnimations;
            if (r0 == 0) goto L_0x019d;
        L_0x0182:
            r0 = android.support.v7.widget.RecyclerView.ItemAnimator.buildAdapterChangeFlagsForAnimations(r4);
            r0 = r0 | 4096;
            r3 = android.support.v7.widget.RecyclerView.this;
            r3 = r3.mItemAnimator;
            r6 = android.support.v7.widget.RecyclerView.this;
            r6 = r6.mState;
            r7 = r4.getUnmodifiedPayloads();
            r0 = r3.recordPreLayoutInformation(r6, r4, r0, r7);
            r3 = android.support.v7.widget.RecyclerView.this;
            r3.recordAnimationInfoIfBouncedHiddenView(r4, r0);
        L_0x019d:
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.mState;
            r0 = r0.isPreLayout();
            if (r0 == 0) goto L_0x01d0;
        L_0x01a7:
            r0 = r4.isBound();
            if (r0 == 0) goto L_0x01d0;
        L_0x01ad:
            r4.mPreLayoutPosition = r11;
            r3 = r2;
        L_0x01b0:
            r0 = r4.itemView;
            r0 = r0.getLayoutParams();
            if (r0 != 0) goto L_0x020a;
        L_0x01b8:
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.generateDefaultLayoutParams();
            r0 = (android.support.v7.widget.RecyclerView.LayoutParams) r0;
            r6 = r4.itemView;
            r6.setLayoutParams(r0);
        L_0x01c5:
            r0.mViewHolder = r4;
            if (r5 == 0) goto L_0x0223;
        L_0x01c9:
            if (r3 == 0) goto L_0x0223;
        L_0x01cb:
            r0.mPendingInvalidate = r1;
            r0 = r4.itemView;
            return r0;
        L_0x01d0:
            r0 = r4.isBound();
            if (r0 == 0) goto L_0x01e2;
        L_0x01d6:
            r0 = r4.needsUpdate();
            if (r0 != 0) goto L_0x01e2;
        L_0x01dc:
            r0 = r4.isInvalid();
            if (r0 == 0) goto L_0x0225;
        L_0x01e2:
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.mAdapterHelper;
            r0 = r0.findPositionOffset(r11);
            r3 = android.support.v7.widget.RecyclerView.this;
            r4.mOwnerRecyclerView = r3;
            r3 = android.support.v7.widget.RecyclerView.this;
            r3 = r3.mAdapter;
            r3.bindViewHolder(r4, r0);
            r0 = r4.itemView;
            r10.attachAccessibilityDelegate(r0);
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.mState;
            r0 = r0.isPreLayout();
            if (r0 == 0) goto L_0x0208;
        L_0x0206:
            r4.mPreLayoutPosition = r11;
        L_0x0208:
            r3 = r1;
            goto L_0x01b0;
        L_0x020a:
            r6 = android.support.v7.widget.RecyclerView.this;
            r6 = r6.checkLayoutParams(r0);
            if (r6 != 0) goto L_0x0220;
        L_0x0212:
            r6 = android.support.v7.widget.RecyclerView.this;
            r0 = r6.generateLayoutParams(r0);
            r0 = (android.support.v7.widget.RecyclerView.LayoutParams) r0;
            r6 = r4.itemView;
            r6.setLayoutParams(r0);
            goto L_0x01c5;
        L_0x0220:
            r0 = (android.support.v7.widget.RecyclerView.LayoutParams) r0;
            goto L_0x01c5;
        L_0x0223:
            r1 = r2;
            goto L_0x01cb;
        L_0x0225:
            r3 = r2;
            goto L_0x01b0;
        L_0x0227:
            r4 = r0;
            r5 = r3;
            goto L_0x0163;
        L_0x022b:
            r3 = r4;
            goto L_0x0084;
        L_0x022e:
            r0 = r3;
            r4 = r2;
            goto L_0x005a;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.RecyclerView$Recycler.getViewForPosition(int, boolean):android.view.View");
        }

        /* Access modifiers changed, original: 0000 */
        public void markItemDecorInsetsDirty() {
            int size = this.mCachedViews.size();
            for (int i = 0; i < size; i++) {
                LayoutParams layoutParams = (LayoutParams) ((ViewHolder) this.mCachedViews.get(i)).itemView.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.mInsetsDirty = true;
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void markKnownViewsInvalid() {
            if (RecyclerView.this.mAdapter == null || !RecyclerView.this.mAdapter.hasStableIds()) {
                recycleAndClearCachedViews();
                return;
            }
            int size = this.mCachedViews.size();
            for (int i = 0; i < size; i++) {
                ViewHolder viewHolder = (ViewHolder) this.mCachedViews.get(i);
                if (viewHolder != null) {
                    viewHolder.addFlags(6);
                    viewHolder.addChangePayload(null);
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void offsetPositionRecordsForInsert(int i, int i2) {
            int size = this.mCachedViews.size();
            for (int i3 = 0; i3 < size; i3++) {
                ViewHolder viewHolder = (ViewHolder) this.mCachedViews.get(i3);
                if (viewHolder != null && viewHolder.mPosition >= i) {
                    viewHolder.offsetPosition(i2, true);
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void offsetPositionRecordsForMove(int i, int i2) {
            int i3;
            int i4;
            int i5;
            if (i < i2) {
                i3 = -1;
                i4 = i2;
                i5 = i;
            } else {
                i3 = 1;
                i4 = i;
                i5 = i2;
            }
            int size = this.mCachedViews.size();
            for (int i6 = 0; i6 < size; i6++) {
                ViewHolder viewHolder = (ViewHolder) this.mCachedViews.get(i6);
                if (viewHolder != null && viewHolder.mPosition >= i5 && viewHolder.mPosition <= i4) {
                    if (viewHolder.mPosition == i) {
                        viewHolder.offsetPosition(i2 - i, false);
                    } else {
                        viewHolder.offsetPosition(i3, false);
                    }
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void offsetPositionRecordsForRemove(int i, int i2, boolean z) {
            int i3 = i + i2;
            for (int size = this.mCachedViews.size() - 1; size >= 0; size--) {
                ViewHolder viewHolder = (ViewHolder) this.mCachedViews.get(size);
                if (viewHolder != null) {
                    if (viewHolder.mPosition >= i3) {
                        viewHolder.offsetPosition(-i2, z);
                    } else if (viewHolder.mPosition >= i) {
                        viewHolder.addFlags(8);
                        recycleCachedViewAt(size);
                    }
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void onAdapterChanged(Adapter adapter, Adapter adapter2, boolean z) {
            clear();
            getRecycledViewPool().onAdapterChanged(adapter, adapter2, z);
        }

        /* Access modifiers changed, original: 0000 */
        public void quickRecycleScrapView(View view) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.mScrapContainer = null;
            childViewHolderInt.mInChangeScrap = false;
            childViewHolderInt.clearReturnedFromScrapFlag();
            recycleViewHolderInternal(childViewHolderInt);
        }

        /* Access modifiers changed, original: 0000 */
        public void recycleAndClearCachedViews() {
            for (int size = this.mCachedViews.size() - 1; size >= 0; size--) {
                recycleCachedViewAt(size);
            }
            this.mCachedViews.clear();
        }

        /* Access modifiers changed, original: 0000 */
        public void recycleCachedViewAt(int i) {
            addViewHolderToRecycledViewPool((ViewHolder) this.mCachedViews.get(i));
            this.mCachedViews.remove(i);
        }

        public void recycleView(View view) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else if (childViewHolderInt.wasReturnedFromScrap()) {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            recycleViewHolderInternal(childViewHolderInt);
        }

        /* Access modifiers changed, original: 0000 */
        /* JADX WARNING: Removed duplicated region for block: B:43:0x00ce  */
        /* JADX WARNING: Removed duplicated region for block: B:36:0x00b6  */
        public void recycleViewHolderInternal(android.support.v7.widget.RecyclerView.ViewHolder r6) {
            /*
            r5 = this;
            r0 = 1;
            r1 = 0;
            r2 = r6.isScrap();
            if (r2 != 0) goto L_0x0010;
        L_0x0008:
            r2 = r6.itemView;
            r2 = r2.getParent();
            if (r2 == 0) goto L_0x0041;
        L_0x0010:
            r2 = new java.lang.IllegalArgumentException;
            r3 = new java.lang.StringBuilder;
            r3.<init>();
            r4 = "Scrapped or attached views may not be recycled. isScrap:";
            r3 = r3.append(r4);
            r4 = r6.isScrap();
            r3 = r3.append(r4);
            r4 = " isAttached:";
            r3 = r3.append(r4);
            r4 = r6.itemView;
            r4 = r4.getParent();
            if (r4 == 0) goto L_0x003f;
        L_0x0033:
            r0 = r3.append(r0);
            r0 = r0.toString();
            r2.<init>(r0);
            throw r2;
        L_0x003f:
            r0 = r1;
            goto L_0x0033;
        L_0x0041:
            r2 = r6.isTmpDetached();
            if (r2 == 0) goto L_0x0060;
        L_0x0047:
            r0 = new java.lang.IllegalArgumentException;
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r2 = "Tmp detached view should be removed from RecyclerView before it can be recycled: ";
            r1 = r1.append(r2);
            r1 = r1.append(r6);
            r1 = r1.toString();
            r0.<init>(r1);
            throw r0;
        L_0x0060:
            r2 = r6.shouldIgnore();
            if (r2 == 0) goto L_0x006e;
        L_0x0066:
            r0 = new java.lang.IllegalArgumentException;
            r1 = "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.";
            r0.<init>(r1);
            throw r0;
        L_0x006e:
            r3 = r6.doesTransientStatePreventRecycling();
            r2 = android.support.v7.widget.RecyclerView.this;
            r2 = r2.mAdapter;
            if (r2 == 0) goto L_0x00cc;
        L_0x007a:
            if (r3 == 0) goto L_0x00cc;
        L_0x007c:
            r2 = android.support.v7.widget.RecyclerView.this;
            r2 = r2.mAdapter;
            r2 = r2.onFailedToRecycleView(r6);
            if (r2 == 0) goto L_0x00cc;
        L_0x0088:
            r2 = r0;
        L_0x0089:
            if (r2 != 0) goto L_0x0091;
        L_0x008b:
            r2 = r6.isRecyclable();
            if (r2 == 0) goto L_0x00d2;
        L_0x0091:
            r2 = 14;
            r2 = r6.hasAnyOfTheFlags(r2);
            if (r2 != 0) goto L_0x00d0;
        L_0x0099:
            r2 = r5.mCachedViews;
            r2 = r2.size();
            r4 = r5.mViewCacheMax;
            if (r2 < r4) goto L_0x00aa;
        L_0x00a3:
            if (r2 <= 0) goto L_0x00aa;
        L_0x00a5:
            r5.recycleCachedViewAt(r1);
            r2 = r2 + -1;
        L_0x00aa:
            r4 = r5.mViewCacheMax;
            if (r2 >= r4) goto L_0x00d0;
        L_0x00ae:
            r2 = r5.mCachedViews;
            r2.add(r6);
            r2 = r0;
        L_0x00b4:
            if (r2 != 0) goto L_0x00ce;
        L_0x00b6:
            r5.addViewHolderToRecycledViewPool(r6);
            r1 = r0;
            r0 = r2;
        L_0x00bb:
            r2 = android.support.v7.widget.RecyclerView.this;
            r2 = r2.mViewInfoStore;
            r2.removeViewHolder(r6);
            if (r0 != 0) goto L_0x00cb;
        L_0x00c4:
            if (r1 != 0) goto L_0x00cb;
        L_0x00c6:
            if (r3 == 0) goto L_0x00cb;
        L_0x00c8:
            r0 = 0;
            r6.mOwnerRecyclerView = r0;
        L_0x00cb:
            return;
        L_0x00cc:
            r2 = r1;
            goto L_0x0089;
        L_0x00ce:
            r0 = r2;
            goto L_0x00bb;
        L_0x00d0:
            r2 = r1;
            goto L_0x00b4;
        L_0x00d2:
            r0 = r1;
            goto L_0x00bb;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.RecyclerView$Recycler.recycleViewHolderInternal(android.support.v7.widget.RecyclerView$ViewHolder):void");
        }

        /* Access modifiers changed, original: 0000 */
        public void recycleViewInternal(View view) {
            recycleViewHolderInternal(RecyclerView.getChildViewHolderInt(view));
        }

        /* Access modifiers changed, original: 0000 */
        public void scrapView(View view) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.hasAnyOfTheFlags(12) && childViewHolderInt.isUpdated() && !RecyclerView.this.canReuseUpdatedViewHolder(childViewHolderInt)) {
                if (this.mChangedScrap == null) {
                    this.mChangedScrap = new ArrayList();
                }
                childViewHolderInt.setScrapContainer(this, true);
                this.mChangedScrap.add(childViewHolderInt);
            } else if (!childViewHolderInt.isInvalid() || childViewHolderInt.isRemoved() || RecyclerView.this.mAdapter.hasStableIds()) {
                childViewHolderInt.setScrapContainer(this, false);
                this.mAttachedScrap.add(childViewHolderInt);
            } else {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void setAdapterPositionsAsUnknown() {
            int size = this.mCachedViews.size();
            for (int i = 0; i < size; i++) {
                ViewHolder viewHolder = (ViewHolder) this.mCachedViews.get(i);
                if (viewHolder != null) {
                    viewHolder.addFlags(512);
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void setRecycledViewPool(RecycledViewPool recycledViewPool) {
            if (this.mRecyclerPool != null) {
                this.mRecyclerPool.detach();
            }
            this.mRecyclerPool = recycledViewPool;
            if (recycledViewPool != null) {
                this.mRecyclerPool.attach(RecyclerView.this.getAdapter());
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void setViewCacheExtension(ViewCacheExtension viewCacheExtension) {
            this.mViewCacheExtension = viewCacheExtension;
        }

        public void setViewCacheSize(int i) {
            this.mViewCacheMax = i;
            for (int size = this.mCachedViews.size() - 1; size >= 0 && this.mCachedViews.size() > i; size--) {
                recycleCachedViewAt(size);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void unscrapView(ViewHolder viewHolder) {
            if (viewHolder.mInChangeScrap) {
                this.mChangedScrap.remove(viewHolder);
            } else {
                this.mAttachedScrap.remove(viewHolder);
            }
            viewHolder.mScrapContainer = null;
            viewHolder.mInChangeScrap = false;
            viewHolder.clearReturnedFromScrapFlag();
        }

        /* Access modifiers changed, original: 0000 */
        public boolean validateViewHolderForOffsetPosition(ViewHolder viewHolder) {
            if (viewHolder.isRemoved()) {
                return RecyclerView.this.mState.isPreLayout();
            }
            if (viewHolder.mPosition >= 0 && viewHolder.mPosition < RecyclerView.this.mAdapter.getItemCount()) {
                return (RecyclerView.this.mState.isPreLayout() || RecyclerView.this.mAdapter.getItemViewType(viewHolder.mPosition) == viewHolder.getItemViewType()) ? !RecyclerView.this.mAdapter.hasStableIds() || viewHolder.getItemId() == RecyclerView.this.mAdapter.getItemId(viewHolder.mPosition) : false;
            } else {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + viewHolder);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void viewRangeUpdate(int i, int i2) {
            int i3 = i + i2;
            for (int size = this.mCachedViews.size() - 1; size >= 0; size--) {
                ViewHolder viewHolder = (ViewHolder) this.mCachedViews.get(size);
                if (viewHolder != null) {
                    int layoutPosition = viewHolder.getLayoutPosition();
                    if (layoutPosition >= i && layoutPosition < i3) {
                        viewHolder.addFlags(2);
                        recycleCachedViewAt(size);
                    }
                }
            }
        }
    }

    public interface RecyclerListener {
        void onViewRecycled(ViewHolder viewHolder);
    }

    private class RecyclerViewDataObserver extends AdapterDataObserver {
        private RecyclerViewDataObserver() {
        }

        /* synthetic */ RecyclerViewDataObserver(RecyclerView recyclerView, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void onChanged() {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapter.hasStableIds()) {
                RecyclerView.this.mState.mStructureChanged = true;
                RecyclerView.this.setDataSetChangedAfterLayout();
            } else {
                RecyclerView.this.mState.mStructureChanged = true;
                RecyclerView.this.setDataSetChangedAfterLayout();
            }
            if (!RecyclerView.this.mAdapterHelper.hasPendingUpdates()) {
                RecyclerView.this.requestLayout();
            }
        }

        public void onItemRangeChanged(int i, int i2, Object obj) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.onItemRangeChanged(i, i2, obj)) {
                triggerUpdateProcessor();
            }
        }

        public void onItemRangeInserted(int i, int i2) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.onItemRangeInserted(i, i2)) {
                triggerUpdateProcessor();
            }
        }

        public void onItemRangeMoved(int i, int i2, int i3) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.onItemRangeMoved(i, i2, i3)) {
                triggerUpdateProcessor();
            }
        }

        public void onItemRangeRemoved(int i, int i2) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.onItemRangeRemoved(i, i2)) {
                triggerUpdateProcessor();
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void triggerUpdateProcessor() {
            if (RecyclerView.this.mPostUpdatesOnAnimation && RecyclerView.this.mHasFixedSize && RecyclerView.this.mIsAttached) {
                ViewCompat.postOnAnimation(RecyclerView.this, RecyclerView.this.mUpdateChildViewsRunnable);
                return;
            }
            RecyclerView.this.mAdapterUpdateDuringMeasure = true;
            RecyclerView.this.requestLayout();
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks<SavedState>() {
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        });
        Parcelable mLayoutState;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                classLoader = LayoutManager.class.getClassLoader();
            }
            this.mLayoutState = parcel.readParcelable(classLoader);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void copyFrom(SavedState savedState) {
            this.mLayoutState = savedState.mLayoutState;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.mLayoutState, 0);
        }
    }

    public static class SimpleOnItemTouchListener implements OnItemTouchListener {
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            return false;
        }

        public void onRequestDisallowInterceptTouchEvent(boolean z) {
        }

        public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        }
    }

    public static class State {
        static final int STEP_ANIMATIONS = 4;
        static final int STEP_LAYOUT = 2;
        static final int STEP_START = 1;
        private SparseArray<Object> mData;
        private int mDeletedInvisibleItemCountSincePreviousLayout = 0;
        long mFocusedItemId;
        int mFocusedItemPosition;
        int mFocusedSubChildId;
        private boolean mInPreLayout = false;
        private boolean mIsMeasuring = false;
        int mItemCount = 0;
        private int mLayoutStep = 1;
        private int mPreviousLayoutItemCount = 0;
        private boolean mRunPredictiveAnimations = false;
        private boolean mRunSimpleAnimations = false;
        private boolean mStructureChanged = false;
        private int mTargetPosition = -1;
        private boolean mTrackOldChangeHolders = false;

        /* Access modifiers changed, original: 0000 */
        public void assertLayoutStep(int i) {
            if ((this.mLayoutStep & i) == 0) {
                throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.mLayoutStep));
            }
        }

        public boolean didStructureChange() {
            return this.mStructureChanged;
        }

        public <T> T get(int i) {
            return this.mData == null ? null : this.mData.get(i);
        }

        public int getItemCount() {
            return this.mInPreLayout ? this.mPreviousLayoutItemCount - this.mDeletedInvisibleItemCountSincePreviousLayout : this.mItemCount;
        }

        public int getTargetScrollPosition() {
            return this.mTargetPosition;
        }

        public boolean hasTargetScrollPosition() {
            return this.mTargetPosition != -1;
        }

        public boolean isMeasuring() {
            return this.mIsMeasuring;
        }

        public boolean isPreLayout() {
            return this.mInPreLayout;
        }

        public void put(int i, Object obj) {
            if (this.mData == null) {
                this.mData = new SparseArray();
            }
            this.mData.put(i, obj);
        }

        public void remove(int i) {
            if (this.mData != null) {
                this.mData.remove(i);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public State reset() {
            this.mTargetPosition = -1;
            if (this.mData != null) {
                this.mData.clear();
            }
            this.mItemCount = 0;
            this.mStructureChanged = false;
            this.mIsMeasuring = false;
            return this;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.mTargetPosition + ", mData=" + this.mData + ", mItemCount=" + this.mItemCount + ", mPreviousLayoutItemCount=" + this.mPreviousLayoutItemCount + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.mDeletedInvisibleItemCountSincePreviousLayout + ", mStructureChanged=" + this.mStructureChanged + ", mInPreLayout=" + this.mInPreLayout + ", mRunSimpleAnimations=" + this.mRunSimpleAnimations + ", mRunPredictiveAnimations=" + this.mRunPredictiveAnimations + '}';
        }

        public boolean willRunPredictiveAnimations() {
            return this.mRunPredictiveAnimations;
        }

        public boolean willRunSimpleAnimations() {
            return this.mRunSimpleAnimations;
        }
    }

    public static abstract class ViewCacheExtension {
        public abstract View getViewForPositionAndType(Recycler recycler, int i, int i2);
    }

    private class ViewFlinger implements Runnable {
        private boolean mEatRunOnAnimationRequest = false;
        private Interpolator mInterpolator = RecyclerView.sQuinticInterpolator;
        private int mLastFlingX;
        private int mLastFlingY;
        private boolean mReSchedulePostAnimationCallback = false;
        private ScrollerCompat mScroller;

        public ViewFlinger() {
            this.mScroller = ScrollerCompat.create(RecyclerView.this.getContext(), RecyclerView.sQuinticInterpolator);
        }

        private int computeScrollDuration(int i, int i2, int i3, int i4) {
            int round;
            int abs = Math.abs(i);
            int abs2 = Math.abs(i2);
            Object obj = abs > abs2 ? 1 : null;
            int sqrt = (int) Math.sqrt((double) ((i3 * i3) + (i4 * i4)));
            int sqrt2 = (int) Math.sqrt((double) ((i * i) + (i2 * i2)));
            int width = obj != null ? RecyclerView.this.getWidth() : RecyclerView.this.getHeight();
            int i5 = width / 2;
            float distanceInfluenceForSnapDuration = (distanceInfluenceForSnapDuration(Math.min(1.0f, (((float) sqrt2) * 1.0f) / ((float) width))) * ((float) i5)) + ((float) i5);
            if (sqrt > 0) {
                round = Math.round(1000.0f * Math.abs(distanceInfluenceForSnapDuration / ((float) sqrt))) * 4;
            } else {
                round = (int) (((((float) (obj != null ? abs : abs2)) / ((float) width)) + 1.0f) * 300.0f);
            }
            return Math.min(round, 2000);
        }

        private void disableRunOnAnimationRequests() {
            this.mReSchedulePostAnimationCallback = false;
            this.mEatRunOnAnimationRequest = true;
        }

        private float distanceInfluenceForSnapDuration(float f) {
            return (float) Math.sin((double) ((float) (((double) (f - 0.5f)) * 0.4712389167638204d)));
        }

        private void enableRunOnAnimationRequests() {
            this.mEatRunOnAnimationRequest = false;
            if (this.mReSchedulePostAnimationCallback) {
                postOnAnimation();
            }
        }

        public void fling(int i, int i2) {
            RecyclerView.this.setScrollState(2);
            this.mLastFlingY = 0;
            this.mLastFlingX = 0;
            this.mScroller.fling(0, 0, i, i2, Integer.MIN_VALUE, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, Integer.MIN_VALUE, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            postOnAnimation();
        }

        /* Access modifiers changed, original: 0000 */
        public void postOnAnimation() {
            if (this.mEatRunOnAnimationRequest) {
                this.mReSchedulePostAnimationCallback = true;
                return;
            }
            RecyclerView.this.removeCallbacks(this);
            ViewCompat.postOnAnimation(RecyclerView.this, this);
        }

        /* JADX WARNING: Removed duplicated region for block: B:23:0x00b4  */
        /* JADX WARNING: Removed duplicated region for block: B:26:0x00c2  */
        /* JADX WARNING: Removed duplicated region for block: B:98:0x01a5  */
        /* JADX WARNING: Removed duplicated region for block: B:31:0x00d3  */
        /* JADX WARNING: Removed duplicated region for block: B:97:0x01a2  */
        /* JADX WARNING: Removed duplicated region for block: B:36:0x00da  */
        /* JADX WARNING: Removed duplicated region for block: B:40:0x00e6  */
        /* JADX WARNING: Removed duplicated region for block: B:55:0x0113  */
        public void run() {
            /*
            r15 = this;
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.mLayout;
            if (r0 != 0) goto L_0x000a;
        L_0x0006:
            r15.stop();
        L_0x0009:
            return;
        L_0x000a:
            r15.disableRunOnAnimationRequests();
            r0 = android.support.v7.widget.RecyclerView.this;
            r0.consumePendingUpdateOperations();
            r7 = r15.mScroller;
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.mLayout;
            r8 = r0.mSmoothScroller;
            r0 = r7.computeScrollOffset();
            if (r0 == 0) goto L_0x014e;
        L_0x0020:
            r9 = r7.getCurrX();
            r10 = r7.getCurrY();
            r0 = r15.mLastFlingX;
            r11 = r9 - r0;
            r0 = r15.mLastFlingY;
            r12 = r10 - r0;
            r3 = 0;
            r1 = 0;
            r15.mLastFlingX = r9;
            r15.mLastFlingY = r10;
            r2 = 0;
            r0 = 0;
            r4 = android.support.v7.widget.RecyclerView.this;
            r4 = r4.mAdapter;
            if (r4 == 0) goto L_0x0185;
        L_0x0040:
            r4 = android.support.v7.widget.RecyclerView.this;
            r4.eatRequestLayout();
            r4 = android.support.v7.widget.RecyclerView.this;
            r4.onEnterLayoutOrScroll();
            r4 = "RV Scroll";
            android.support.v4.os.TraceCompat.beginSection(r4);
            if (r11 == 0) goto L_0x0063;
        L_0x0051:
            r2 = android.support.v7.widget.RecyclerView.this;
            r2 = r2.mLayout;
            r3 = android.support.v7.widget.RecyclerView.this;
            r3 = r3.mRecycler;
            r4 = android.support.v7.widget.RecyclerView.this;
            r4 = r4.mState;
            r3 = r2.scrollHorizontallyBy(r11, r3, r4);
            r2 = r11 - r3;
        L_0x0063:
            if (r12 == 0) goto L_0x0077;
        L_0x0065:
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.mLayout;
            r1 = android.support.v7.widget.RecyclerView.this;
            r1 = r1.mRecycler;
            r4 = android.support.v7.widget.RecyclerView.this;
            r4 = r4.mState;
            r1 = r0.scrollVerticallyBy(r12, r1, r4);
            r0 = r12 - r1;
        L_0x0077:
            android.support.v4.os.TraceCompat.endSection();
            r4 = android.support.v7.widget.RecyclerView.this;
            r4.repositionShadowingViews();
            r4 = android.support.v7.widget.RecyclerView.this;
            r4.onExitLayoutOrScroll();
            r4 = android.support.v7.widget.RecyclerView.this;
            r5 = 0;
            r4.resumeRequestLayout(r5);
            if (r8 == 0) goto L_0x0185;
        L_0x008c:
            r4 = r8.isPendingInitialRun();
            if (r4 != 0) goto L_0x0185;
        L_0x0092:
            r4 = r8.isRunning();
            if (r4 == 0) goto L_0x0185;
        L_0x0098:
            r4 = android.support.v7.widget.RecyclerView.this;
            r4 = r4.mState;
            r4 = r4.getItemCount();
            if (r4 != 0) goto L_0x0167;
        L_0x00a2:
            r8.stop();
            r14 = r2;
            r2 = r1;
            r1 = r14;
        L_0x00a8:
            r4 = android.support.v7.widget.RecyclerView.this;
            r4 = r4.mItemDecorations;
            r4 = r4.isEmpty();
            if (r4 != 0) goto L_0x00b9;
        L_0x00b4:
            r4 = android.support.v7.widget.RecyclerView.this;
            r4.invalidate();
        L_0x00b9:
            r4 = android.support.v7.widget.RecyclerView.this;
            r4 = r4.getOverScrollMode();
            r5 = 2;
            if (r4 == r5) goto L_0x00c7;
        L_0x00c2:
            r4 = android.support.v7.widget.RecyclerView.this;
            r4.considerReleasingGlowsOnScroll(r11, r12);
        L_0x00c7:
            if (r1 != 0) goto L_0x00cb;
        L_0x00c9:
            if (r0 == 0) goto L_0x0102;
        L_0x00cb:
            r4 = r7.getCurrVelocity();
            r5 = (int) r4;
            r4 = 0;
            if (r1 == r9) goto L_0x01a5;
        L_0x00d3:
            if (r1 >= 0) goto L_0x018a;
        L_0x00d5:
            r4 = -r5;
        L_0x00d6:
            r6 = r4;
        L_0x00d7:
            r4 = 0;
            if (r0 == r10) goto L_0x01a2;
        L_0x00da:
            if (r0 >= 0) goto L_0x0192;
        L_0x00dc:
            r5 = -r5;
        L_0x00dd:
            r4 = android.support.v7.widget.RecyclerView.this;
            r4 = r4.getOverScrollMode();
            r13 = 2;
            if (r4 == r13) goto L_0x00eb;
        L_0x00e6:
            r4 = android.support.v7.widget.RecyclerView.this;
            r4.absorbGlows(r6, r5);
        L_0x00eb:
            if (r6 != 0) goto L_0x00f5;
        L_0x00ed:
            if (r1 == r9) goto L_0x00f5;
        L_0x00ef:
            r1 = r7.getFinalX();
            if (r1 != 0) goto L_0x0102;
        L_0x00f5:
            if (r5 != 0) goto L_0x00ff;
        L_0x00f7:
            if (r0 == r10) goto L_0x00ff;
        L_0x00f9:
            r0 = r7.getFinalY();
            if (r0 != 0) goto L_0x0102;
        L_0x00ff:
            r7.abortAnimation();
        L_0x0102:
            if (r3 != 0) goto L_0x0106;
        L_0x0104:
            if (r2 == 0) goto L_0x010b;
        L_0x0106:
            r0 = android.support.v7.widget.RecyclerView.this;
            r0.dispatchOnScrolled(r3, r2);
        L_0x010b:
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.awakenScrollBars();
            if (r0 != 0) goto L_0x0118;
        L_0x0113:
            r0 = android.support.v7.widget.RecyclerView.this;
            r0.invalidate();
        L_0x0118:
            if (r12 == 0) goto L_0x0197;
        L_0x011a:
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.mLayout;
            r0 = r0.canScrollVertically();
            if (r0 == 0) goto L_0x0197;
        L_0x0124:
            if (r2 != r12) goto L_0x0197;
        L_0x0126:
            r0 = 1;
            r1 = r0;
        L_0x0128:
            if (r11 == 0) goto L_0x019a;
        L_0x012a:
            r0 = android.support.v7.widget.RecyclerView.this;
            r0 = r0.mLayout;
            r0 = r0.canScrollHorizontally();
            if (r0 == 0) goto L_0x019a;
        L_0x0134:
            if (r3 != r11) goto L_0x019a;
        L_0x0136:
            r0 = 1;
        L_0x0137:
            if (r11 != 0) goto L_0x013b;
        L_0x0139:
            if (r12 == 0) goto L_0x013f;
        L_0x013b:
            if (r0 != 0) goto L_0x013f;
        L_0x013d:
            if (r1 == 0) goto L_0x019c;
        L_0x013f:
            r0 = 1;
        L_0x0140:
            r1 = r7.isFinished();
            if (r1 != 0) goto L_0x0148;
        L_0x0146:
            if (r0 != 0) goto L_0x019e;
        L_0x0148:
            r0 = android.support.v7.widget.RecyclerView.this;
            r1 = 0;
            r0.setScrollState(r1);
        L_0x014e:
            if (r8 == 0) goto L_0x0162;
        L_0x0150:
            r0 = r8.isPendingInitialRun();
            if (r0 == 0) goto L_0x015b;
        L_0x0156:
            r0 = 0;
            r1 = 0;
            r8.onAnimation(r0, r1);
        L_0x015b:
            r0 = r15.mReSchedulePostAnimationCallback;
            if (r0 != 0) goto L_0x0162;
        L_0x015f:
            r8.stop();
        L_0x0162:
            r15.enableRunOnAnimationRequests();
            goto L_0x0009;
        L_0x0167:
            r5 = r8.getTargetPosition();
            if (r5 < r4) goto L_0x017e;
        L_0x016d:
            r4 = r4 + -1;
            r8.setTargetPosition(r4);
            r4 = r11 - r2;
            r5 = r12 - r0;
            r8.onAnimation(r4, r5);
            r14 = r2;
            r2 = r1;
            r1 = r14;
            goto L_0x00a8;
        L_0x017e:
            r4 = r11 - r2;
            r5 = r12 - r0;
            r8.onAnimation(r4, r5);
        L_0x0185:
            r14 = r2;
            r2 = r1;
            r1 = r14;
            goto L_0x00a8;
        L_0x018a:
            if (r1 <= 0) goto L_0x018f;
        L_0x018c:
            r4 = r5;
            goto L_0x00d6;
        L_0x018f:
            r4 = 0;
            goto L_0x00d6;
        L_0x0192:
            if (r0 > 0) goto L_0x00dd;
        L_0x0194:
            r5 = 0;
            goto L_0x00dd;
        L_0x0197:
            r0 = 0;
            r1 = r0;
            goto L_0x0128;
        L_0x019a:
            r0 = 0;
            goto L_0x0137;
        L_0x019c:
            r0 = 0;
            goto L_0x0140;
        L_0x019e:
            r15.postOnAnimation();
            goto L_0x014e;
        L_0x01a2:
            r5 = r4;
            goto L_0x00dd;
        L_0x01a5:
            r6 = r4;
            goto L_0x00d7;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.RecyclerView$ViewFlinger.run():void");
        }

        public void smoothScrollBy(int i, int i2) {
            smoothScrollBy(i, i2, 0, 0);
        }

        public void smoothScrollBy(int i, int i2, int i3) {
            smoothScrollBy(i, i2, i3, RecyclerView.sQuinticInterpolator);
        }

        public void smoothScrollBy(int i, int i2, int i3, int i4) {
            smoothScrollBy(i, i2, computeScrollDuration(i, i2, i3, i4));
        }

        public void smoothScrollBy(int i, int i2, int i3, Interpolator interpolator) {
            if (this.mInterpolator != interpolator) {
                this.mInterpolator = interpolator;
                this.mScroller = ScrollerCompat.create(RecyclerView.this.getContext(), interpolator);
            }
            RecyclerView.this.setScrollState(2);
            this.mLastFlingY = 0;
            this.mLastFlingX = 0;
            this.mScroller.startScroll(0, 0, i, i2, i3);
            postOnAnimation();
        }

        public void stop() {
            RecyclerView.this.removeCallbacks(this);
            this.mScroller.abortAnimation();
        }
    }

    static {
        boolean z = VERSION.SDK_INT == 18 || VERSION.SDK_INT == 19 || VERSION.SDK_INT == 20;
        FORCE_INVALIDATE_DISPLAY_LIST = z;
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    public RecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RecyclerView(Context context, @Nullable AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes;
        boolean z = true;
        super(context, attributeSet, i);
        this.mObserver = new RecyclerViewDataObserver(this, null);
        this.mRecycler = new Recycler();
        this.mViewInfoStore = new ViewInfoStore();
        this.mUpdateChildViewsRunnable = new Runnable() {
            public void run() {
                if (RecyclerView.this.mFirstLayoutComplete && !RecyclerView.this.isLayoutRequested()) {
                    if (!RecyclerView.this.mIsAttached) {
                        RecyclerView.this.requestLayout();
                    } else if (RecyclerView.this.mLayoutFrozen) {
                        RecyclerView.this.mLayoutRequestEaten = true;
                    } else {
                        RecyclerView.this.consumePendingUpdateOperations();
                    }
                }
            }
        };
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mItemDecorations = new ArrayList();
        this.mOnItemTouchListeners = new ArrayList();
        this.mEatRequestLayout = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mItemAnimator = new DefaultItemAnimator();
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScrollFactor = Float.MIN_VALUE;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new ViewFlinger();
        this.mState = new State();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new ItemAnimatorRestoreListener(this, null);
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mScrollConsumed = new int[2];
        this.mNestedOffsets = new int[2];
        this.mItemAnimatorRunner = new Runnable() {
            public void run() {
                if (RecyclerView.this.mItemAnimator != null) {
                    RecyclerView.this.mItemAnimator.runPendingAnimations();
                }
                RecyclerView.this.mPostedAnimatorRunner = false;
            }
        };
        this.mViewInfoProcessCallback = new ProcessCallback() {
            public void processAppeared(ViewHolder viewHolder, ItemHolderInfo itemHolderInfo, ItemHolderInfo itemHolderInfo2) {
                RecyclerView.this.animateAppearance(viewHolder, itemHolderInfo, itemHolderInfo2);
            }

            public void processDisappeared(ViewHolder viewHolder, @NonNull ItemHolderInfo itemHolderInfo, @Nullable ItemHolderInfo itemHolderInfo2) {
                RecyclerView.this.mRecycler.unscrapView(viewHolder);
                RecyclerView.this.animateDisappearance(viewHolder, itemHolderInfo, itemHolderInfo2);
            }

            public void processPersistent(ViewHolder viewHolder, @NonNull ItemHolderInfo itemHolderInfo, @NonNull ItemHolderInfo itemHolderInfo2) {
                viewHolder.setIsRecyclable(false);
                if (RecyclerView.this.mDataSetHasChangedAfterLayout) {
                    if (RecyclerView.this.mItemAnimator.animateChange(viewHolder, viewHolder, itemHolderInfo, itemHolderInfo2)) {
                        RecyclerView.this.postAnimationRunner();
                    }
                } else if (RecyclerView.this.mItemAnimator.animatePersistence(viewHolder, itemHolderInfo, itemHolderInfo2)) {
                    RecyclerView.this.postAnimationRunner();
                }
            }

            public void unused(ViewHolder viewHolder) {
                RecyclerView.this.mLayout.removeAndRecycleView(viewHolder.itemView, RecyclerView.this.mRecycler);
            }
        };
        if (attributeSet != null) {
            obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, CLIP_TO_PADDING_ATTR, i, 0);
            this.mClipToPadding = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
        } else {
            this.mClipToPadding = true;
        }
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        this.mPostUpdatesOnAnimation = VERSION.SDK_INT >= 16;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.setListener(this.mItemAnimatorListener);
        initAdapterManager();
        initChildrenHelper();
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new RecyclerViewAccessibilityDelegate(this));
        if (attributeSet != null) {
            obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RecyclerView, i, 0);
            String string = obtainStyledAttributes.getString(R.styleable.RecyclerView_layoutManager);
            if (obtainStyledAttributes.getInt(R.styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
                setDescendantFocusability(262144);
            }
            obtainStyledAttributes.recycle();
            createLayoutManager(context, string, attributeSet, i, 0);
            if (VERSION.SDK_INT >= 21) {
                obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, NESTED_SCROLLING_ATTRS, i, 0);
                z = obtainStyledAttributes.getBoolean(0, true);
                obtainStyledAttributes.recycle();
            }
        } else {
            setDescendantFocusability(262144);
        }
        setNestedScrollingEnabled(z);
    }

    private void addAnimatingView(ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        boolean z = view.getParent() == this;
        this.mRecycler.unscrapView(getChildViewHolder(view));
        if (viewHolder.isTmpDetached()) {
            this.mChildHelper.attachViewToParent(view, -1, view.getLayoutParams(), true);
        } else if (z) {
            this.mChildHelper.hide(view);
        } else {
            this.mChildHelper.addView(view, true);
        }
    }

    private void animateAppearance(@NonNull ViewHolder viewHolder, @Nullable ItemHolderInfo itemHolderInfo, @NonNull ItemHolderInfo itemHolderInfo2) {
        viewHolder.setIsRecyclable(false);
        if (this.mItemAnimator.animateAppearance(viewHolder, itemHolderInfo, itemHolderInfo2)) {
            postAnimationRunner();
        }
    }

    private void animateChange(@NonNull ViewHolder viewHolder, @NonNull ViewHolder viewHolder2, @NonNull ItemHolderInfo itemHolderInfo, @NonNull ItemHolderInfo itemHolderInfo2, boolean z, boolean z2) {
        viewHolder.setIsRecyclable(false);
        if (z) {
            addAnimatingView(viewHolder);
        }
        if (viewHolder != viewHolder2) {
            if (z2) {
                addAnimatingView(viewHolder2);
            }
            viewHolder.mShadowedHolder = viewHolder2;
            addAnimatingView(viewHolder);
            this.mRecycler.unscrapView(viewHolder);
            viewHolder2.setIsRecyclable(false);
            viewHolder2.mShadowingHolder = viewHolder;
        }
        if (this.mItemAnimator.animateChange(viewHolder, viewHolder2, itemHolderInfo, itemHolderInfo2)) {
            postAnimationRunner();
        }
    }

    private void animateDisappearance(@NonNull ViewHolder viewHolder, @NonNull ItemHolderInfo itemHolderInfo, @Nullable ItemHolderInfo itemHolderInfo2) {
        addAnimatingView(viewHolder);
        viewHolder.setIsRecyclable(false);
        if (this.mItemAnimator.animateDisappearance(viewHolder, itemHolderInfo, itemHolderInfo2)) {
            postAnimationRunner();
        }
    }

    private boolean canReuseUpdatedViewHolder(ViewHolder viewHolder) {
        return this.mItemAnimator == null || this.mItemAnimator.canReuseUpdatedViewHolder(viewHolder, viewHolder.getUnmodifiedPayloads());
    }

    private void cancelTouch() {
        resetTouch();
        setScrollState(0);
    }

    private void considerReleasingGlowsOnScroll(int i, int i2) {
        int i3 = 0;
        if (!(this.mLeftGlow == null || this.mLeftGlow.isFinished() || i <= 0)) {
            i3 = this.mLeftGlow.onRelease();
        }
        if (!(this.mRightGlow == null || this.mRightGlow.isFinished() || i >= 0)) {
            i3 |= this.mRightGlow.onRelease();
        }
        if (!(this.mTopGlow == null || this.mTopGlow.isFinished() || i2 <= 0)) {
            i3 |= this.mTopGlow.onRelease();
        }
        if (!(this.mBottomGlow == null || this.mBottomGlow.isFinished() || i2 >= 0)) {
            i3 |= this.mBottomGlow.onRelease();
        }
        if (i3 != 0) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    private void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            TraceCompat.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
            dispatchLayout();
            TraceCompat.endSection();
        } else if (!this.mAdapterHelper.hasPendingUpdates()) {
        } else {
            if (this.mAdapterHelper.hasAnyUpdateTypes(4) && !this.mAdapterHelper.hasAnyUpdateTypes(11)) {
                TraceCompat.beginSection(TRACE_HANDLE_ADAPTER_UPDATES_TAG);
                eatRequestLayout();
                this.mAdapterHelper.preProcess();
                if (!this.mLayoutRequestEaten) {
                    if (hasUpdatedView()) {
                        dispatchLayout();
                    } else {
                        this.mAdapterHelper.consumePostponedUpdates();
                    }
                }
                resumeRequestLayout(true);
                TraceCompat.endSection();
            } else if (this.mAdapterHelper.hasPendingUpdates()) {
                TraceCompat.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
                dispatchLayout();
                TraceCompat.endSection();
            }
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    private void createLayoutManager(android.content.Context r9, java.lang.String r10, android.util.AttributeSet r11, int r12, int r13) {
        /*
        r8 = this;
        if (r10 == 0) goto L_0x0054;
    L_0x0002:
        r0 = r10.trim();
        r1 = r0.length();
        if (r1 == 0) goto L_0x0054;
    L_0x000c:
        r3 = r8.getFullClassName(r9, r0);
        r0 = r8.isInEditMode();	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        if (r0 == 0) goto L_0x0055;
    L_0x0016:
        r0 = r8.getClass();	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        r0 = r0.getClassLoader();	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
    L_0x001e:
        r0 = r0.loadClass(r3);	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        r1 = android.support.v7.widget.RecyclerView.LayoutManager.class;
        r4 = r0.asSubclass(r1);	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        r1 = 0;
        r0 = LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;	 Catch:{ NoSuchMethodException -> 0x005a }
        r2 = r4.getConstructor(r0);	 Catch:{ NoSuchMethodException -> 0x005a }
        r0 = 4;
        r0 = new java.lang.Object[r0];	 Catch:{ NoSuchMethodException -> 0x005a }
        r5 = 0;
        r0[r5] = r9;	 Catch:{ NoSuchMethodException -> 0x005a }
        r5 = 1;
        r0[r5] = r11;	 Catch:{ NoSuchMethodException -> 0x005a }
        r5 = 2;
        r6 = java.lang.Integer.valueOf(r12);	 Catch:{ NoSuchMethodException -> 0x005a }
        r0[r5] = r6;	 Catch:{ NoSuchMethodException -> 0x005a }
        r5 = 3;
        r6 = java.lang.Integer.valueOf(r13);	 Catch:{ NoSuchMethodException -> 0x005a }
        r0[r5] = r6;	 Catch:{ NoSuchMethodException -> 0x005a }
        r1 = r2;
    L_0x0047:
        r2 = 1;
        r1.setAccessible(r2);	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        r0 = r1.newInstance(r0);	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        r0 = (android.support.v7.widget.RecyclerView.LayoutManager) r0;	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        r8.setLayoutManager(r0);	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
    L_0x0054:
        return;
    L_0x0055:
        r0 = r9.getClassLoader();	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        goto L_0x001e;
    L_0x005a:
        r0 = move-exception;
        r2 = 0;
        r2 = new java.lang.Class[r2];	 Catch:{ NoSuchMethodException -> 0x0066 }
        r0 = r4.getConstructor(r2);	 Catch:{ NoSuchMethodException -> 0x0066 }
        r7 = r1;
        r1 = r0;
        r0 = r7;
        goto L_0x0047;
    L_0x0066:
        r1 = move-exception;
        r1.initCause(r0);	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        r0 = new java.lang.IllegalStateException;	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        r2 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        r2.<init>();	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        r4 = r11.getPositionDescription();	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        r2 = r2.append(r4);	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        r4 = ": Error creating LayoutManager ";
        r2 = r2.append(r4);	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        r2 = r2.append(r3);	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        r2 = r2.toString();	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        r0.<init>(r2, r1);	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
        throw r0;	 Catch:{ ClassNotFoundException -> 0x008b, InvocationTargetException -> 0x00ad, InstantiationException -> 0x00cf, IllegalAccessException -> 0x00f1, ClassCastException -> 0x0113 }
    L_0x008b:
        r0 = move-exception;
        r1 = new java.lang.IllegalStateException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = r11.getPositionDescription();
        r2 = r2.append(r4);
        r4 = ": Unable to find LayoutManager ";
        r2 = r2.append(r4);
        r2 = r2.append(r3);
        r2 = r2.toString();
        r1.<init>(r2, r0);
        throw r1;
    L_0x00ad:
        r0 = move-exception;
        r1 = new java.lang.IllegalStateException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = r11.getPositionDescription();
        r2 = r2.append(r4);
        r4 = ": Could not instantiate the LayoutManager: ";
        r2 = r2.append(r4);
        r2 = r2.append(r3);
        r2 = r2.toString();
        r1.<init>(r2, r0);
        throw r1;
    L_0x00cf:
        r0 = move-exception;
        r1 = new java.lang.IllegalStateException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = r11.getPositionDescription();
        r2 = r2.append(r4);
        r4 = ": Could not instantiate the LayoutManager: ";
        r2 = r2.append(r4);
        r2 = r2.append(r3);
        r2 = r2.toString();
        r1.<init>(r2, r0);
        throw r1;
    L_0x00f1:
        r0 = move-exception;
        r1 = new java.lang.IllegalStateException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = r11.getPositionDescription();
        r2 = r2.append(r4);
        r4 = ": Cannot access non-public constructor ";
        r2 = r2.append(r4);
        r2 = r2.append(r3);
        r2 = r2.toString();
        r1.<init>(r2, r0);
        throw r1;
    L_0x0113:
        r0 = move-exception;
        r1 = new java.lang.IllegalStateException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = r11.getPositionDescription();
        r2 = r2.append(r4);
        r4 = ": Class is not a LayoutManager ";
        r2 = r2.append(r4);
        r2 = r2.append(r3);
        r2 = r2.toString();
        r1.<init>(r2, r0);
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.RecyclerView.createLayoutManager(android.content.Context, java.lang.String, android.util.AttributeSet, int, int):void");
    }

    private boolean didChildRangeChange(int i, int i2) {
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        return (this.mMinMaxLayoutPositions[0] == i && this.mMinMaxLayoutPositions[1] == i2) ? false : true;
    }

    private void dispatchChildAttached(View view) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        if (!(this.mAdapter == null || childViewHolderInt == null)) {
            this.mAdapter.onViewAttachedToWindow(childViewHolderInt);
        }
        if (this.mOnChildAttachStateListeners != null) {
            for (int size = this.mOnChildAttachStateListeners.size() - 1; size >= 0; size--) {
                ((OnChildAttachStateChangeListener) this.mOnChildAttachStateListeners.get(size)).onChildViewAttachedToWindow(view);
            }
        }
    }

    private void dispatchChildDetached(View view) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        if (!(this.mAdapter == null || childViewHolderInt == null)) {
            this.mAdapter.onViewDetachedFromWindow(childViewHolderInt);
        }
        if (this.mOnChildAttachStateListeners != null) {
            for (int size = this.mOnChildAttachStateListeners.size() - 1; size >= 0; size--) {
                ((OnChildAttachStateChangeListener) this.mOnChildAttachStateListeners.get(size)).onChildViewDetachedFromWindow(view);
            }
        }
    }

    private void dispatchContentChangedIfNecessary() {
        int i = this.mEatenAccessibilityChangeFlags;
        this.mEatenAccessibilityChangeFlags = 0;
        if (i != 0 && isAccessibilityEnabled()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            obtain.setEventType(2048);
            AccessibilityEventCompat.setContentChangeTypes(obtain, i);
            sendAccessibilityEventUnchecked(obtain);
        }
    }

    private void dispatchLayoutStep1() {
        int childCount;
        int i;
        ViewHolder childViewHolderInt;
        boolean z = true;
        this.mState.assertLayoutStep(1);
        this.mState.mIsMeasuring = false;
        eatRequestLayout();
        this.mViewInfoStore.clear();
        onEnterLayoutOrScroll();
        saveFocusInfo();
        processAdapterUpdatesAndSetAnimationFlags();
        State state = this.mState;
        if (!(this.mState.mRunSimpleAnimations && this.mItemsChanged)) {
            z = false;
        }
        state.mTrackOldChangeHolders = z;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        this.mState.mInPreLayout = this.mState.mRunPredictiveAnimations;
        this.mState.mItemCount = this.mAdapter.getItemCount();
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mState.mRunSimpleAnimations) {
            childCount = this.mChildHelper.getChildCount();
            for (i = 0; i < childCount; i++) {
                childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(i));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.hasStableIds())) {
                    this.mViewInfoStore.addToPreLayout(childViewHolderInt, this.mItemAnimator.recordPreLayoutInformation(this.mState, childViewHolderInt, ItemAnimator.buildAdapterChangeFlagsForAnimations(childViewHolderInt), childViewHolderInt.getUnmodifiedPayloads()));
                    if (!(!this.mState.mTrackOldChangeHolders || !childViewHolderInt.isUpdated() || childViewHolderInt.isRemoved() || childViewHolderInt.shouldIgnore() || childViewHolderInt.isInvalid())) {
                        this.mViewInfoStore.addToOldChangeHolders(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.mRunPredictiveAnimations) {
            saveOldPositions();
            z = this.mState.mStructureChanged;
            this.mState.mStructureChanged = false;
            this.mLayout.onLayoutChildren(this.mRecycler, this.mState);
            this.mState.mStructureChanged = z;
            for (i = 0; i < this.mChildHelper.getChildCount(); i++) {
                childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(i));
                if (!(childViewHolderInt.shouldIgnore() || this.mViewInfoStore.isInPreLayout(childViewHolderInt))) {
                    childCount = ItemAnimator.buildAdapterChangeFlagsForAnimations(childViewHolderInt);
                    boolean hasAnyOfTheFlags = childViewHolderInt.hasAnyOfTheFlags(8192);
                    if (!hasAnyOfTheFlags) {
                        childCount |= 4096;
                    }
                    ItemHolderInfo recordPreLayoutInformation = this.mItemAnimator.recordPreLayoutInformation(this.mState, childViewHolderInt, childCount, childViewHolderInt.getUnmodifiedPayloads());
                    if (hasAnyOfTheFlags) {
                        recordAnimationInfoIfBouncedHiddenView(childViewHolderInt, recordPreLayoutInformation);
                    } else {
                        this.mViewInfoStore.addToAppearedInPreLayoutHolders(childViewHolderInt, recordPreLayoutInformation);
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        resumeRequestLayout(false);
        this.mState.mLayoutStep = 2;
    }

    private void dispatchLayoutStep2() {
        eatRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.assertLayoutStep(6);
        this.mAdapterHelper.consumeUpdatesInOnePass();
        this.mState.mItemCount = this.mAdapter.getItemCount();
        this.mState.mDeletedInvisibleItemCountSincePreviousLayout = 0;
        this.mState.mInPreLayout = false;
        this.mLayout.onLayoutChildren(this.mRecycler, this.mState);
        this.mState.mStructureChanged = false;
        this.mPendingSavedState = null;
        State state = this.mState;
        boolean z = this.mState.mRunSimpleAnimations && this.mItemAnimator != null;
        state.mRunSimpleAnimations = z;
        this.mState.mLayoutStep = 4;
        onExitLayoutOrScroll();
        resumeRequestLayout(false);
    }

    private void dispatchLayoutStep3() {
        this.mState.assertLayoutStep(4);
        eatRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.mLayoutStep = 1;
        if (this.mState.mRunSimpleAnimations) {
            for (int childCount = this.mChildHelper.getChildCount() - 1; childCount >= 0; childCount--) {
                ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(childCount));
                if (!childViewHolderInt.shouldIgnore()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    ItemHolderInfo recordPostLayoutInformation = this.mItemAnimator.recordPostLayoutInformation(this.mState, childViewHolderInt);
                    ViewHolder fromOldChangeHolders = this.mViewInfoStore.getFromOldChangeHolders(changedHolderKey);
                    if (fromOldChangeHolders == null || fromOldChangeHolders.shouldIgnore()) {
                        this.mViewInfoStore.addToPostLayout(childViewHolderInt, recordPostLayoutInformation);
                    } else {
                        boolean isDisappearing = this.mViewInfoStore.isDisappearing(fromOldChangeHolders);
                        boolean isDisappearing2 = this.mViewInfoStore.isDisappearing(childViewHolderInt);
                        if (isDisappearing && fromOldChangeHolders == childViewHolderInt) {
                            this.mViewInfoStore.addToPostLayout(childViewHolderInt, recordPostLayoutInformation);
                        } else {
                            ItemHolderInfo popFromPreLayout = this.mViewInfoStore.popFromPreLayout(fromOldChangeHolders);
                            this.mViewInfoStore.addToPostLayout(childViewHolderInt, recordPostLayoutInformation);
                            ItemHolderInfo popFromPostLayout = this.mViewInfoStore.popFromPostLayout(childViewHolderInt);
                            if (popFromPreLayout == null) {
                                handleMissingPreInfoForChangeError(changedHolderKey, childViewHolderInt, fromOldChangeHolders);
                            } else {
                                animateChange(fromOldChangeHolders, childViewHolderInt, popFromPreLayout, popFromPostLayout, isDisappearing, isDisappearing2);
                            }
                        }
                    }
                }
            }
            this.mViewInfoStore.process(this.mViewInfoProcessCallback);
        }
        this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        this.mState.mPreviousLayoutItemCount = this.mState.mItemCount;
        this.mDataSetHasChangedAfterLayout = false;
        this.mState.mRunSimpleAnimations = false;
        this.mState.mRunPredictiveAnimations = false;
        this.mLayout.mRequestedSimpleAnimations = false;
        if (this.mRecycler.mChangedScrap != null) {
            this.mRecycler.mChangedScrap.clear();
        }
        this.mLayout.onLayoutCompleted(this.mState);
        onExitLayoutOrScroll();
        resumeRequestLayout(false);
        this.mViewInfoStore.clear();
        if (didChildRangeChange(this.mMinMaxLayoutPositions[0], this.mMinMaxLayoutPositions[1])) {
            dispatchOnScrolled(0, 0);
        }
        recoverFocusFromState();
        resetFocusInfo();
    }

    private boolean dispatchOnItemTouch(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (this.mActiveOnItemTouchListener != null) {
            if (action == 0) {
                this.mActiveOnItemTouchListener = null;
            } else {
                this.mActiveOnItemTouchListener.onTouchEvent(this, motionEvent);
                if (action == 3 || action == 1) {
                    this.mActiveOnItemTouchListener = null;
                }
                return true;
            }
        }
        if (action != 0) {
            int size = this.mOnItemTouchListeners.size();
            for (int i = 0; i < size; i++) {
                OnItemTouchListener onItemTouchListener = (OnItemTouchListener) this.mOnItemTouchListeners.get(i);
                if (onItemTouchListener.onInterceptTouchEvent(this, motionEvent)) {
                    this.mActiveOnItemTouchListener = onItemTouchListener;
                    return true;
                }
            }
        }
        return false;
    }

    private boolean dispatchOnItemTouchIntercept(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.mActiveOnItemTouchListener = null;
        }
        int size = this.mOnItemTouchListeners.size();
        int i = 0;
        while (i < size) {
            OnItemTouchListener onItemTouchListener = (OnItemTouchListener) this.mOnItemTouchListeners.get(i);
            if (!onItemTouchListener.onInterceptTouchEvent(this, motionEvent) || action == 3) {
                i++;
            } else {
                this.mActiveOnItemTouchListener = onItemTouchListener;
                return true;
            }
        }
        return false;
    }

    private void findMinMaxChildLayoutPositions(int[] iArr) {
        int childCount = this.mChildHelper.getChildCount();
        if (childCount == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i2 = Integer.MIN_VALUE;
        int i3 = 0;
        while (i3 < childCount) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(i3));
            if (!childViewHolderInt.shouldIgnore()) {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                if (layoutPosition < i) {
                    i = layoutPosition;
                }
                if (layoutPosition > i2) {
                    i2 = layoutPosition;
                }
            }
            i3++;
            i = i;
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    private int getAdapterPositionFor(ViewHolder viewHolder) {
        return (viewHolder.hasAnyOfTheFlags(524) || !viewHolder.isBound()) ? -1 : this.mAdapterHelper.applyPendingUpdatesToPosition(viewHolder.mPosition);
    }

    static ViewHolder getChildViewHolderInt(View view) {
        return view == null ? null : ((LayoutParams) view.getLayoutParams()).mViewHolder;
    }

    private int getDeepestFocusedViewWithId(View view) {
        int i;
        int id = view.getId();
        while (true) {
            i = id;
            View view2 = view;
            if (view2.isFocused() || !(view2 instanceof ViewGroup) || !view2.hasFocus()) {
                return i;
            }
            view = ((ViewGroup) view2).getFocusedChild();
            id = view.getId() != -1 ? view.getId() : i;
        }
        return i;
    }

    private String getFullClassName(Context context, String str) {
        return str.charAt(0) == '.' ? context.getPackageName() + str : !str.contains(".") ? RecyclerView.class.getPackage().getName() + '.' + str : str;
    }

    private float getScrollFactor() {
        if (this.mScrollFactor == Float.MIN_VALUE) {
            TypedValue typedValue = new TypedValue();
            if (!getContext().getTheme().resolveAttribute(16842829, typedValue, true)) {
                return 0.0f;
            }
            this.mScrollFactor = typedValue.getDimension(getContext().getResources().getDisplayMetrics());
        }
        return this.mScrollFactor;
    }

    private NestedScrollingChildHelper getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new NestedScrollingChildHelper(this);
        }
        return this.mScrollingChildHelper;
    }

    private void handleMissingPreInfoForChangeError(long j, ViewHolder viewHolder, ViewHolder viewHolder2) {
        int childCount = this.mChildHelper.getChildCount();
        int i = 0;
        while (i < childCount) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(i));
            if (childViewHolderInt == viewHolder || getChangedHolderKey(childViewHolderInt) != j) {
                i++;
            } else if (this.mAdapter == null || !this.mAdapter.hasStableIds()) {
                throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + viewHolder);
            } else {
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + viewHolder);
            }
        }
        Log.e(TAG, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + viewHolder2 + " cannot be found but it is necessary for " + viewHolder);
    }

    private boolean hasUpdatedView() {
        int childCount = this.mChildHelper.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getChildAt(i));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.isUpdated()) {
                return true;
            }
        }
        return false;
    }

    private void initChildrenHelper() {
        this.mChildHelper = new ChildHelper(new Callback() {
            public void addView(View view, int i) {
                RecyclerView.this.addView(view, i);
                RecyclerView.this.dispatchChildAttached(view);
            }

            public void attachViewToParent(View view, int i, android.view.ViewGroup.LayoutParams layoutParams) {
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (childViewHolderInt != null) {
                    if (childViewHolderInt.isTmpDetached() || childViewHolderInt.shouldIgnore()) {
                        childViewHolderInt.clearTmpDetachFlag();
                    } else {
                        throw new IllegalArgumentException("Called attach on a child which is not detached: " + childViewHolderInt);
                    }
                }
                RecyclerView.this.attachViewToParent(view, i, layoutParams);
            }

            public void detachViewFromParent(int i) {
                View childAt = getChildAt(i);
                if (childAt != null) {
                    ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
                    if (childViewHolderInt != null) {
                        if (!childViewHolderInt.isTmpDetached() || childViewHolderInt.shouldIgnore()) {
                            childViewHolderInt.addFlags(256);
                        } else {
                            throw new IllegalArgumentException("called detach on an already detached child " + childViewHolderInt);
                        }
                    }
                }
                RecyclerView.this.detachViewFromParent(i);
            }

            public View getChildAt(int i) {
                return RecyclerView.this.getChildAt(i);
            }

            public int getChildCount() {
                return RecyclerView.this.getChildCount();
            }

            public ViewHolder getChildViewHolder(View view) {
                return RecyclerView.getChildViewHolderInt(view);
            }

            public int indexOfChild(View view) {
                return RecyclerView.this.indexOfChild(view);
            }

            public void onEnteredHiddenState(View view) {
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (childViewHolderInt != null) {
                    childViewHolderInt.onEnteredHiddenState();
                }
            }

            public void onLeftHiddenState(View view) {
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (childViewHolderInt != null) {
                    childViewHolderInt.onLeftHiddenState();
                }
            }

            public void removeAllViews() {
                int childCount = getChildCount();
                for (int i = 0; i < childCount; i++) {
                    RecyclerView.this.dispatchChildDetached(getChildAt(i));
                }
                RecyclerView.this.removeAllViews();
            }

            public void removeViewAt(int i) {
                View childAt = RecyclerView.this.getChildAt(i);
                if (childAt != null) {
                    RecyclerView.this.dispatchChildDetached(childAt);
                }
                RecyclerView.this.removeViewAt(i);
            }
        });
    }

    private boolean isPreferredNextFocus(View view, View view2, int i) {
        int i2 = 0;
        if (view2 == null || view2 == this) {
            return false;
        }
        if (view == null) {
            return true;
        }
        if (i != 2 && i != 1) {
            return isPreferredNextFocusAbsolute(view, view2, i);
        }
        int i3 = this.mLayout.getLayoutDirection() == 1 ? 1 : 0;
        if (i == 2) {
            i2 = 1;
        }
        return isPreferredNextFocusAbsolute(view, view2, (i2 ^ i3) != 0 ? 66 : 17) ? true : i == 2 ? isPreferredNextFocusAbsolute(view, view2, TransportMediator.KEYCODE_MEDIA_RECORD) : isPreferredNextFocusAbsolute(view, view2, 33);
    }

    private boolean isPreferredNextFocusAbsolute(View view, View view2, int i) {
        this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
        this.mTempRect2.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        offsetDescendantRectToMyCoords(view2, this.mTempRect2);
        switch (i) {
            case 17:
                return (this.mTempRect.right > this.mTempRect2.right || this.mTempRect.left >= this.mTempRect2.right) && this.mTempRect.left > this.mTempRect2.left;
            case 33:
                return (this.mTempRect.bottom > this.mTempRect2.bottom || this.mTempRect.top >= this.mTempRect2.bottom) && this.mTempRect.top > this.mTempRect2.top;
            case 66:
                return (this.mTempRect.left < this.mTempRect2.left || this.mTempRect.right <= this.mTempRect2.left) && this.mTempRect.right < this.mTempRect2.right;
            case TransportMediator.KEYCODE_MEDIA_RECORD /*130*/:
                return (this.mTempRect.top < this.mTempRect2.top || this.mTempRect.bottom <= this.mTempRect2.top) && this.mTempRect.bottom < this.mTempRect2.bottom;
            default:
                throw new IllegalArgumentException("direction must be absolute. received:" + i);
        }
    }

    private void jumpToPositionForSmoothScroller(int i) {
        if (this.mLayout != null) {
            this.mLayout.scrollToPosition(i);
            awakenScrollBars();
        }
    }

    private void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    private void onExitLayoutOrScroll() {
        this.mLayoutOrScrollCounter--;
        if (this.mLayoutOrScrollCounter < 1) {
            this.mLayoutOrScrollCounter = 0;
            dispatchContentChangedIfNecessary();
        }
    }

    private void onPointerUp(MotionEvent motionEvent) {
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (motionEvent.getPointerId(actionIndex) == this.mScrollPointerId) {
            actionIndex = actionIndex == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
            int x = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.mLastTouchX = x;
            this.mInitialTouchX = x;
            actionIndex = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.mLastTouchY = actionIndex;
            this.mInitialTouchY = actionIndex;
        }
    }

    private void postAnimationRunner() {
        if (!this.mPostedAnimatorRunner && this.mIsAttached) {
            ViewCompat.postOnAnimation(this, this.mItemAnimatorRunner);
            this.mPostedAnimatorRunner = true;
        }
    }

    private boolean predictiveItemAnimationsEnabled() {
        return this.mItemAnimator != null && this.mLayout.supportsPredictiveItemAnimations();
    }

    private void processAdapterUpdatesAndSetAnimationFlags() {
        boolean z = true;
        if (this.mDataSetHasChangedAfterLayout) {
            this.mAdapterHelper.reset();
            markKnownViewsInvalid();
            this.mLayout.onItemsChanged(this);
        }
        if (predictiveItemAnimationsEnabled()) {
            this.mAdapterHelper.preProcess();
        } else {
            this.mAdapterHelper.consumeUpdatesInOnePass();
        }
        boolean z2 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        State state = this.mState;
        boolean z3 = this.mFirstLayoutComplete && this.mItemAnimator != null && ((this.mDataSetHasChangedAfterLayout || z2 || this.mLayout.mRequestedSimpleAnimations) && (!this.mDataSetHasChangedAfterLayout || this.mAdapter.hasStableIds()));
        state.mRunSimpleAnimations = z3;
        State state2 = this.mState;
        if (!(this.mState.mRunSimpleAnimations && z2 && !this.mDataSetHasChangedAfterLayout && predictiveItemAnimationsEnabled())) {
            z = false;
        }
        state2.mRunPredictiveAnimations = z;
    }

    /* JADX WARNING: Missing block: B:8:0x0040, code skipped:
            if (r7.mTopGlow.onPull((-r11) / ((float) getHeight()), r8 / ((float) getWidth())) != false) goto L_0x0042;
     */
    /* JADX WARNING: Missing block: B:23:0x008c, code skipped:
            if (r7.mBottomGlow.onPull(r11 / ((float) getHeight()), 1.0f - (r8 / ((float) getWidth()))) == false) goto L_0x008e;
     */
    private void pullGlows(float r8, float r9, float r10, float r11) {
        /*
        r7 = this;
        r6 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r0 = 1;
        r5 = 0;
        r1 = 0;
        r2 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1));
        if (r2 >= 0) goto L_0x0050;
    L_0x0009:
        r7.ensureLeftGlow();
        r2 = r7.mLeftGlow;
        r3 = -r9;
        r4 = r7.getWidth();
        r4 = (float) r4;
        r3 = r3 / r4;
        r4 = r7.getHeight();
        r4 = (float) r4;
        r4 = r10 / r4;
        r4 = r6 - r4;
        r2 = r2.onPull(r3, r4);
        if (r2 == 0) goto L_0x0025;
    L_0x0024:
        r1 = r0;
    L_0x0025:
        r2 = (r11 > r5 ? 1 : (r11 == r5 ? 0 : -1));
        if (r2 >= 0) goto L_0x006f;
    L_0x0029:
        r7.ensureTopGlow();
        r2 = r7.mTopGlow;
        r3 = -r11;
        r4 = r7.getHeight();
        r4 = (float) r4;
        r3 = r3 / r4;
        r4 = r7.getWidth();
        r4 = (float) r4;
        r4 = r8 / r4;
        r2 = r2.onPull(r3, r4);
        if (r2 == 0) goto L_0x008e;
    L_0x0042:
        if (r0 != 0) goto L_0x004c;
    L_0x0044:
        r0 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1));
        if (r0 != 0) goto L_0x004c;
    L_0x0048:
        r0 = (r11 > r5 ? 1 : (r11 == r5 ? 0 : -1));
        if (r0 == 0) goto L_0x004f;
    L_0x004c:
        android.support.v4.view.ViewCompat.postInvalidateOnAnimation(r7);
    L_0x004f:
        return;
    L_0x0050:
        r2 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1));
        if (r2 <= 0) goto L_0x0025;
    L_0x0054:
        r7.ensureRightGlow();
        r2 = r7.mRightGlow;
        r3 = r7.getWidth();
        r3 = (float) r3;
        r3 = r9 / r3;
        r4 = r7.getHeight();
        r4 = (float) r4;
        r4 = r10 / r4;
        r2 = r2.onPull(r3, r4);
        if (r2 == 0) goto L_0x0025;
    L_0x006d:
        r1 = r0;
        goto L_0x0025;
    L_0x006f:
        r2 = (r11 > r5 ? 1 : (r11 == r5 ? 0 : -1));
        if (r2 <= 0) goto L_0x008e;
    L_0x0073:
        r7.ensureBottomGlow();
        r2 = r7.mBottomGlow;
        r3 = r7.getHeight();
        r3 = (float) r3;
        r3 = r11 / r3;
        r4 = r7.getWidth();
        r4 = (float) r4;
        r4 = r8 / r4;
        r4 = r6 - r4;
        r2 = r2.onPull(r3, r4);
        if (r2 != 0) goto L_0x0042;
    L_0x008e:
        r0 = r1;
        goto L_0x0042;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.RecyclerView.pullGlows(float, float, float, float):void");
    }

    private void recordAnimationInfoIfBouncedHiddenView(ViewHolder viewHolder, ItemHolderInfo itemHolderInfo) {
        viewHolder.setFlags(0, 8192);
        if (this.mState.mTrackOldChangeHolders && viewHolder.isUpdated() && !viewHolder.isRemoved() && !viewHolder.shouldIgnore()) {
            this.mViewInfoStore.addToOldChangeHolders(getChangedHolderKey(viewHolder), viewHolder);
        }
        this.mViewInfoStore.addToPreLayout(viewHolder, itemHolderInfo);
    }

    /* JADX WARNING: Missing block: B:31:0x007c, code skipped:
            if (r0.isFocusable() != false) goto L_0x007e;
     */
    private void recoverFocusFromState() {
        /*
        r6 = this;
        r4 = -1;
        r0 = r6.mPreserveFocusAfterLayout;
        if (r0 == 0) goto L_0x0010;
    L_0x0006:
        r0 = r6.mAdapter;
        if (r0 == 0) goto L_0x0010;
    L_0x000a:
        r0 = r6.hasFocus();
        if (r0 != 0) goto L_0x0011;
    L_0x0010:
        return;
    L_0x0011:
        r0 = r6.isFocused();
        if (r0 != 0) goto L_0x0025;
    L_0x0017:
        r0 = r6.getFocusedChild();
        if (r0 == 0) goto L_0x0010;
    L_0x001d:
        r1 = r6.mChildHelper;
        r0 = r1.isHidden(r0);
        if (r0 == 0) goto L_0x0010;
    L_0x0025:
        r0 = 0;
        r1 = r6.mState;
        r1 = r1.mFocusedItemPosition;
        r2 = -1;
        if (r1 == r2) goto L_0x0035;
    L_0x002d:
        r0 = r6.mState;
        r0 = r0.mFocusedItemPosition;
        r0 = r6.findViewHolderForAdapterPosition(r0);
    L_0x0035:
        if (r0 != 0) goto L_0x004f;
    L_0x0037:
        r1 = r6.mState;
        r2 = r1.mFocusedItemId;
        r1 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r1 == 0) goto L_0x004f;
    L_0x003f:
        r1 = r6.mAdapter;
        r1 = r1.hasStableIds();
        if (r1 == 0) goto L_0x004f;
    L_0x0047:
        r0 = r6.mState;
        r0 = r0.mFocusedItemId;
        r0 = r6.findViewHolderForItemId(r0);
    L_0x004f:
        if (r0 == 0) goto L_0x0010;
    L_0x0051:
        r1 = r0.itemView;
        r1 = r1.hasFocus();
        if (r1 != 0) goto L_0x0010;
    L_0x0059:
        r1 = r0.itemView;
        r1 = r1.hasFocusable();
        if (r1 == 0) goto L_0x0010;
    L_0x0061:
        r1 = r0.itemView;
        r2 = r6.mState;
        r2 = r2.mFocusedSubChildId;
        r2 = (long) r2;
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 == 0) goto L_0x0082;
    L_0x006c:
        r0 = r0.itemView;
        r2 = r6.mState;
        r2 = r2.mFocusedSubChildId;
        r0 = r0.findViewById(r2);
        if (r0 == 0) goto L_0x0082;
    L_0x0078:
        r2 = r0.isFocusable();
        if (r2 == 0) goto L_0x0082;
    L_0x007e:
        r0.requestFocus();
        goto L_0x0010;
    L_0x0082:
        r0 = r1;
        goto L_0x007e;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.RecyclerView.recoverFocusFromState():void");
    }

    private void releaseGlows() {
        int i = 0;
        if (this.mLeftGlow != null) {
            i = this.mLeftGlow.onRelease();
        }
        if (this.mTopGlow != null) {
            i |= this.mTopGlow.onRelease();
        }
        if (this.mRightGlow != null) {
            i |= this.mRightGlow.onRelease();
        }
        if (this.mBottomGlow != null) {
            i |= this.mBottomGlow.onRelease();
        }
        if (i != 0) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    private boolean removeAnimatingView(View view) {
        eatRequestLayout();
        boolean removeViewIfHidden = this.mChildHelper.removeViewIfHidden(view);
        if (removeViewIfHidden) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(view);
            this.mRecycler.unscrapView(childViewHolderInt);
            this.mRecycler.recycleViewHolderInternal(childViewHolderInt);
        }
        resumeRequestLayout(!removeViewIfHidden);
        return removeViewIfHidden;
    }

    private void repositionShadowingViews() {
        int childCount = this.mChildHelper.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mChildHelper.getChildAt(i);
            ViewHolder childViewHolder = getChildViewHolder(childAt);
            if (!(childViewHolder == null || childViewHolder.mShadowingHolder == null)) {
                View view = childViewHolder.mShadowingHolder.itemView;
                int left = childAt.getLeft();
                int top = childAt.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    private void resetFocusInfo() {
        this.mState.mFocusedItemId = -1;
        this.mState.mFocusedItemPosition = -1;
        this.mState.mFocusedSubChildId = -1;
    }

    private void resetTouch() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.clear();
        }
        stopNestedScroll();
        releaseGlows();
    }

    private void saveFocusInfo() {
        View focusedChild = (this.mPreserveFocusAfterLayout && hasFocus() && this.mAdapter != null) ? getFocusedChild() : null;
        ViewHolder findContainingViewHolder = focusedChild == null ? null : findContainingViewHolder(focusedChild);
        if (findContainingViewHolder == null) {
            resetFocusInfo();
            return;
        }
        this.mState.mFocusedItemId = this.mAdapter.hasStableIds() ? findContainingViewHolder.getItemId() : -1;
        this.mState.mFocusedItemPosition = this.mDataSetHasChangedAfterLayout ? -1 : findContainingViewHolder.getAdapterPosition();
        this.mState.mFocusedSubChildId = getDeepestFocusedViewWithId(findContainingViewHolder.itemView);
    }

    private void setAdapterInternal(Adapter adapter, boolean z, boolean z2) {
        if (this.mAdapter != null) {
            this.mAdapter.unregisterAdapterDataObserver(this.mObserver);
            this.mAdapter.onDetachedFromRecyclerView(this);
        }
        if (!z || z2) {
            if (this.mItemAnimator != null) {
                this.mItemAnimator.endAnimations();
            }
            if (this.mLayout != null) {
                this.mLayout.removeAndRecycleAllViews(this.mRecycler);
                this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
            }
            this.mRecycler.clear();
        }
        this.mAdapterHelper.reset();
        Adapter adapter2 = this.mAdapter;
        this.mAdapter = adapter;
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.mObserver);
            adapter.onAttachedToRecyclerView(this);
        }
        if (this.mLayout != null) {
            this.mLayout.onAdapterChanged(adapter2, this.mAdapter);
        }
        this.mRecycler.onAdapterChanged(adapter2, this.mAdapter, z);
        this.mState.mStructureChanged = true;
        markKnownViewsInvalid();
    }

    private void setDataSetChangedAfterLayout() {
        if (!this.mDataSetHasChangedAfterLayout) {
            this.mDataSetHasChangedAfterLayout = true;
            int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
            for (int i = 0; i < unfilteredChildCount; i++) {
                ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i));
                if (!(childViewHolderInt == null || childViewHolderInt.shouldIgnore())) {
                    childViewHolderInt.addFlags(512);
                }
            }
            this.mRecycler.setAdapterPositionsAsUnknown();
        }
    }

    private void setScrollState(int i) {
        if (i != this.mScrollState) {
            this.mScrollState = i;
            if (i != 2) {
                stopScrollersInternal();
            }
            dispatchOnScrollStateChanged(i);
        }
    }

    private void stopScrollersInternal() {
        this.mViewFlinger.stop();
        if (this.mLayout != null) {
            this.mLayout.stopSmoothScroller();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void absorbGlows(int i, int i2) {
        if (i < 0) {
            ensureLeftGlow();
            this.mLeftGlow.onAbsorb(-i);
        } else if (i > 0) {
            ensureRightGlow();
            this.mRightGlow.onAbsorb(i);
        }
        if (i2 < 0) {
            ensureTopGlow();
            this.mTopGlow.onAbsorb(-i2);
        } else if (i2 > 0) {
            ensureBottomGlow();
            this.mBottomGlow.onAbsorb(i2);
        }
        if (i != 0 || i2 != 0) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (this.mLayout == null || !this.mLayout.onAddFocusables(this, arrayList, i, i2)) {
            super.addFocusables(arrayList, i, i2);
        }
    }

    public void addItemDecoration(ItemDecoration itemDecoration) {
        addItemDecoration(itemDecoration, -1);
    }

    public void addItemDecoration(ItemDecoration itemDecoration, int i) {
        if (this.mLayout != null) {
            this.mLayout.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i < 0) {
            this.mItemDecorations.add(itemDecoration);
        } else {
            this.mItemDecorations.add(i, itemDecoration);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(OnChildAttachStateChangeListener onChildAttachStateChangeListener) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(onChildAttachStateChangeListener);
    }

    public void addOnItemTouchListener(OnItemTouchListener onItemTouchListener) {
        this.mOnItemTouchListeners.add(onItemTouchListener);
    }

    public void addOnScrollListener(OnScrollListener onScrollListener) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(onScrollListener);
    }

    /* Access modifiers changed, original: 0000 */
    public void assertInLayoutOrScroll(String str) {
        if (!isComputingLayout()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling");
            }
            throw new IllegalStateException(str);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
            }
            throw new IllegalStateException(str);
        } else if (this.mDispatchScrollCounter > 0) {
            Log.w(TAG, "Cannot call this method in a scroll callback. Scroll callbacks might be run during a measure & layout pass where you cannot change the RecyclerView data. Any method call that might change the structure of the RecyclerView or the adapter contents should be postponed to the next frame.", new IllegalStateException(""));
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.mLayout.checkLayoutParams((LayoutParams) layoutParams);
    }

    /* Access modifiers changed, original: 0000 */
    public void clearOldPositions() {
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i = 0; i < unfilteredChildCount; i++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        this.mRecycler.clearOldPositions();
    }

    public void clearOnChildAttachStateChangeListeners() {
        if (this.mOnChildAttachStateListeners != null) {
            this.mOnChildAttachStateListeners.clear();
        }
    }

    public void clearOnScrollListeners() {
        if (this.mScrollListeners != null) {
            this.mScrollListeners.clear();
        }
    }

    public int computeHorizontalScrollExtent() {
        return (this.mLayout != null && this.mLayout.canScrollHorizontally()) ? this.mLayout.computeHorizontalScrollExtent(this.mState) : 0;
    }

    public int computeHorizontalScrollOffset() {
        return (this.mLayout != null && this.mLayout.canScrollHorizontally()) ? this.mLayout.computeHorizontalScrollOffset(this.mState) : 0;
    }

    public int computeHorizontalScrollRange() {
        return (this.mLayout != null && this.mLayout.canScrollHorizontally()) ? this.mLayout.computeHorizontalScrollRange(this.mState) : 0;
    }

    public int computeVerticalScrollExtent() {
        return (this.mLayout != null && this.mLayout.canScrollVertically()) ? this.mLayout.computeVerticalScrollExtent(this.mState) : 0;
    }

    public int computeVerticalScrollOffset() {
        return (this.mLayout != null && this.mLayout.canScrollVertically()) ? this.mLayout.computeVerticalScrollOffset(this.mState) : 0;
    }

    public int computeVerticalScrollRange() {
        return (this.mLayout != null && this.mLayout.canScrollVertically()) ? this.mLayout.computeVerticalScrollRange(this.mState) : 0;
    }

    /* Access modifiers changed, original: 0000 */
    public void defaultOnMeasure(int i, int i2) {
        setMeasuredDimension(LayoutManager.chooseSize(i, getPaddingLeft() + getPaddingRight(), ViewCompat.getMinimumWidth(this)), LayoutManager.chooseSize(i2, getPaddingTop() + getPaddingBottom(), ViewCompat.getMinimumHeight(this)));
    }

    /* Access modifiers changed, original: 0000 */
    public void dispatchLayout() {
        if (this.mAdapter == null) {
            Log.e(TAG, "No adapter attached; skipping layout");
        } else if (this.mLayout == null) {
            Log.e(TAG, "No layout manager attached; skipping layout");
        } else {
            this.mState.mIsMeasuring = false;
            if (this.mState.mLayoutStep == 1) {
                dispatchLayoutStep1();
                this.mLayout.setExactMeasureSpecsFrom(this);
                dispatchLayoutStep2();
            } else if (!this.mAdapterHelper.hasUpdates() && this.mLayout.getWidth() == getWidth() && this.mLayout.getHeight() == getHeight()) {
                this.mLayout.setExactMeasureSpecsFrom(this);
            } else {
                this.mLayout.setExactMeasureSpecsFrom(this);
                dispatchLayoutStep2();
            }
            dispatchLayoutStep3();
        }
    }

    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().dispatchNestedFling(f, f2, z);
    }

    public boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().dispatchNestedPreFling(f, f2);
    }

    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    /* Access modifiers changed, original: 0000 */
    public void dispatchOnScrollStateChanged(int i) {
        if (this.mLayout != null) {
            this.mLayout.onScrollStateChanged(i);
        }
        onScrollStateChanged(i);
        if (this.mScrollListener != null) {
            this.mScrollListener.onScrollStateChanged(this, i);
        }
        if (this.mScrollListeners != null) {
            for (int size = this.mScrollListeners.size() - 1; size >= 0; size--) {
                ((OnScrollListener) this.mScrollListeners.get(size)).onScrollStateChanged(this, i);
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void dispatchOnScrolled(int i, int i2) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX, scrollY);
        onScrolled(i, i2);
        if (this.mScrollListener != null) {
            this.mScrollListener.onScrolled(this, i, i2);
        }
        if (this.mScrollListeners != null) {
            for (scrollY = this.mScrollListeners.size() - 1; scrollY >= 0; scrollY--) {
                ((OnScrollListener) this.mScrollListeners.get(scrollY)).onScrolled(this, i, i2);
            }
        }
        this.mDispatchScrollCounter--;
    }

    /* Access modifiers changed, original: protected */
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    /* Access modifiers changed, original: protected */
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    public void draw(Canvas canvas) {
        int i;
        int i2;
        int i3 = 1;
        int i4 = 0;
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        for (i = 0; i < size; i++) {
            ((ItemDecoration) this.mItemDecorations.get(i)).onDrawOver(canvas, this, this.mState);
        }
        if (this.mLeftGlow == null || this.mLeftGlow.isFinished()) {
            i2 = 0;
        } else {
            i = canvas.save();
            i2 = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((float) (i2 + (-getHeight())), 0.0f);
            i2 = (this.mLeftGlow == null || !this.mLeftGlow.draw(canvas)) ? 0 : 1;
            canvas.restoreToCount(i);
        }
        if (!(this.mTopGlow == null || this.mTopGlow.isFinished())) {
            size = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate((float) getPaddingLeft(), (float) getPaddingTop());
            }
            i = (this.mTopGlow == null || !this.mTopGlow.draw(canvas)) ? 0 : 1;
            i2 |= i;
            canvas.restoreToCount(size);
        }
        if (!(this.mRightGlow == null || this.mRightGlow.isFinished())) {
            size = canvas.save();
            int width = getWidth();
            i = this.mClipToPadding ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate((float) (-i), (float) (-width));
            i = (this.mRightGlow == null || !this.mRightGlow.draw(canvas)) ? 0 : 1;
            i2 |= i;
            canvas.restoreToCount(size);
        }
        if (!(this.mBottomGlow == null || this.mBottomGlow.isFinished())) {
            i = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                canvas.translate((float) ((-getWidth()) + getPaddingRight()), (float) ((-getHeight()) + getPaddingBottom()));
            } else {
                canvas.translate((float) (-getWidth()), (float) (-getHeight()));
            }
            if (this.mBottomGlow != null && this.mBottomGlow.draw(canvas)) {
                i4 = 1;
            }
            i2 |= i4;
            canvas.restoreToCount(i);
        }
        if (i2 != 0 || this.mItemAnimator == null || this.mItemDecorations.size() <= 0 || !this.mItemAnimator.isRunning()) {
            i3 = i2;
        }
        if (i3 != 0) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    /* Access modifiers changed, original: 0000 */
    public void eatRequestLayout() {
        this.mEatRequestLayout++;
        if (this.mEatRequestLayout == 1 && !this.mLayoutFrozen) {
            this.mLayoutRequestEaten = false;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void ensureBottomGlow() {
        if (this.mBottomGlow == null) {
            this.mBottomGlow = new EdgeEffectCompat(getContext());
            if (this.mClipToPadding) {
                this.mBottomGlow.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                this.mBottomGlow.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void ensureLeftGlow() {
        if (this.mLeftGlow == null) {
            this.mLeftGlow = new EdgeEffectCompat(getContext());
            if (this.mClipToPadding) {
                this.mLeftGlow.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                this.mLeftGlow.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void ensureRightGlow() {
        if (this.mRightGlow == null) {
            this.mRightGlow = new EdgeEffectCompat(getContext());
            if (this.mClipToPadding) {
                this.mRightGlow.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                this.mRightGlow.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void ensureTopGlow() {
        if (this.mTopGlow == null) {
            this.mTopGlow = new EdgeEffectCompat(getContext());
            if (this.mClipToPadding) {
                this.mTopGlow.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                this.mTopGlow.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    public View findChildViewUnder(float f, float f2) {
        for (int childCount = this.mChildHelper.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.mChildHelper.getChildAt(childCount);
            float translationX = ViewCompat.getTranslationX(childAt);
            float translationY = ViewCompat.getTranslationY(childAt);
            if (f >= ((float) childAt.getLeft()) + translationX && f <= translationX + ((float) childAt.getRight()) && f2 >= ((float) childAt.getTop()) + translationY && f2 <= ((float) childAt.getBottom()) + translationY) {
                return childAt;
            }
        }
        return null;
    }

    @Nullable
    public View findContainingItemView(View view) {
        RecyclerView parent = view.getParent();
        View view2 = view;
        while (parent != null && parent != this && (parent instanceof View)) {
            View view3 = parent;
            view2 = view3;
            ViewParent parent2 = view3.getParent();
        }
        return parent2 == this ? view2 : null;
    }

    @Nullable
    public ViewHolder findContainingViewHolder(View view) {
        View findContainingItemView = findContainingItemView(view);
        return findContainingItemView == null ? null : getChildViewHolder(findContainingItemView);
    }

    public ViewHolder findViewHolderForAdapterPosition(int i) {
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        int i2 = 0;
        ViewHolder viewHolder = null;
        while (i2 < unfilteredChildCount) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i2));
            if (childViewHolderInt == null || childViewHolderInt.isRemoved() || getAdapterPositionFor(childViewHolderInt) != i) {
                childViewHolderInt = viewHolder;
            } else if (!this.mChildHelper.isHidden(childViewHolderInt.itemView)) {
                return childViewHolderInt;
            }
            i2++;
            viewHolder = childViewHolderInt;
        }
        return viewHolder;
    }

    public ViewHolder findViewHolderForItemId(long j) {
        if (this.mAdapter == null || !this.mAdapter.hasStableIds()) {
            return null;
        }
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        int i = 0;
        ViewHolder viewHolder = null;
        while (i < unfilteredChildCount) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i));
            if (childViewHolderInt == null || childViewHolderInt.isRemoved() || childViewHolderInt.getItemId() != j) {
                childViewHolderInt = viewHolder;
            } else if (!this.mChildHelper.isHidden(childViewHolderInt.itemView)) {
                return childViewHolderInt;
            }
            i++;
            viewHolder = childViewHolderInt;
        }
        return viewHolder;
    }

    public ViewHolder findViewHolderForLayoutPosition(int i) {
        return findViewHolderForPosition(i, false);
    }

    @Deprecated
    public ViewHolder findViewHolderForPosition(int i) {
        return findViewHolderForPosition(i, false);
    }

    /* Access modifiers changed, original: 0000 */
    public ViewHolder findViewHolderForPosition(int i, boolean z) {
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        ViewHolder viewHolder = null;
        for (int i2 = 0; i2 < unfilteredChildCount; i2++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i2));
            if (!(childViewHolderInt == null || childViewHolderInt.isRemoved())) {
                if (z) {
                    if (childViewHolderInt.mPosition != i) {
                        continue;
                    }
                } else if (childViewHolderInt.getLayoutPosition() != i) {
                    continue;
                }
                if (!this.mChildHelper.isHidden(childViewHolderInt.itemView)) {
                    return childViewHolderInt;
                }
                viewHolder = childViewHolderInt;
            }
        }
        return viewHolder;
    }

    public boolean fling(int i, int i2) {
        if (this.mLayout == null) {
            Log.e(TAG, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        } else if (this.mLayoutFrozen) {
            return false;
        } else {
            boolean canScrollHorizontally = this.mLayout.canScrollHorizontally();
            boolean canScrollVertically = this.mLayout.canScrollVertically();
            if (!canScrollHorizontally || Math.abs(i) < this.mMinFlingVelocity) {
                i = 0;
            }
            if (!canScrollVertically || Math.abs(i2) < this.mMinFlingVelocity) {
                i2 = 0;
            }
            if ((i == 0 && i2 == 0) || dispatchNestedPreFling((float) i, (float) i2)) {
                return false;
            }
            canScrollHorizontally = canScrollHorizontally || canScrollVertically;
            dispatchNestedFling((float) i, (float) i2, canScrollHorizontally);
            if (this.mOnFlingListener != null && this.mOnFlingListener.onFling(i, i2)) {
                return true;
            }
            if (!canScrollHorizontally) {
                return false;
            }
            this.mViewFlinger.fling(Math.max(-this.mMaxFlingVelocity, Math.min(i, this.mMaxFlingVelocity)), Math.max(-this.mMaxFlingVelocity, Math.min(i2, this.mMaxFlingVelocity)));
            return true;
        }
    }

    public View focusSearch(View view, int i) {
        boolean z = true;
        View onInterceptFocusSearch = this.mLayout.onInterceptFocusSearch(view, i);
        if (onInterceptFocusSearch != null) {
            return onInterceptFocusSearch;
        }
        boolean z2 = (this.mAdapter == null || this.mLayout == null || isComputingLayout() || this.mLayoutFrozen) ? false : true;
        FocusFinder instance = FocusFinder.getInstance();
        if (z2 && (i == 2 || i == 1)) {
            if (this.mLayout.canScrollVertically()) {
                z2 = instance.findNextFocus(this, view, i == 2 ? TransportMediator.KEYCODE_MEDIA_RECORD : 33) == null;
            } else {
                z2 = false;
            }
            if (z2 || !this.mLayout.canScrollHorizontally()) {
                z = z2;
            } else {
                if (instance.findNextFocus(this, view, ((i == 2 ? 1 : 0) ^ (this.mLayout.getLayoutDirection() == 1 ? 1 : 0)) != 0 ? 66 : 17) != null) {
                    z = false;
                }
            }
            if (z) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                eatRequestLayout();
                this.mLayout.onFocusSearchFailed(view, i, this.mRecycler, this.mState);
                resumeRequestLayout(false);
            }
            onInterceptFocusSearch = instance.findNextFocus(this, view, i);
        } else {
            View findNextFocus = instance.findNextFocus(this, view, i);
            if (findNextFocus == null && z2) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                eatRequestLayout();
                onInterceptFocusSearch = this.mLayout.onFocusSearchFailed(view, i, this.mRecycler, this.mState);
                resumeRequestLayout(false);
            } else {
                onInterceptFocusSearch = findNextFocus;
            }
        }
        return !isPreferredNextFocus(view, onInterceptFocusSearch, i) ? super.focusSearch(view, i) : onInterceptFocusSearch;
    }

    /* Access modifiers changed, original: protected */
    public android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        if (this.mLayout != null) {
            return this.mLayout.generateDefaultLayoutParams();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager");
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        if (this.mLayout != null) {
            return this.mLayout.generateLayoutParams(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager");
    }

    /* Access modifiers changed, original: protected */
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        if (this.mLayout != null) {
            return this.mLayout.generateLayoutParams(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager");
    }

    public Adapter getAdapter() {
        return this.mAdapter;
    }

    public int getBaseline() {
        return this.mLayout != null ? this.mLayout.getBaseline() : super.getBaseline();
    }

    /* Access modifiers changed, original: 0000 */
    public long getChangedHolderKey(ViewHolder viewHolder) {
        return this.mAdapter.hasStableIds() ? viewHolder.getItemId() : (long) viewHolder.mPosition;
    }

    public int getChildAdapterPosition(View view) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        return childViewHolderInt != null ? childViewHolderInt.getAdapterPosition() : -1;
    }

    /* Access modifiers changed, original: protected */
    public int getChildDrawingOrder(int i, int i2) {
        return this.mChildDrawingOrderCallback == null ? super.getChildDrawingOrder(i, i2) : this.mChildDrawingOrderCallback.onGetChildDrawingOrder(i, i2);
    }

    public long getChildItemId(View view) {
        if (this.mAdapter == null || !this.mAdapter.hasStableIds()) {
            return -1;
        }
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        return childViewHolderInt != null ? childViewHolderInt.getItemId() : -1;
    }

    public int getChildLayoutPosition(View view) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        return childViewHolderInt != null ? childViewHolderInt.getLayoutPosition() : -1;
    }

    @Deprecated
    public int getChildPosition(View view) {
        return getChildAdapterPosition(view);
    }

    public ViewHolder getChildViewHolder(View view) {
        Object parent = view.getParent();
        if (parent == null || parent == this) {
            return getChildViewHolderInt(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    public RecyclerViewAccessibilityDelegate getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public ItemAnimator getItemAnimator() {
        return this.mItemAnimator;
    }

    /* Access modifiers changed, original: 0000 */
    public Rect getItemDecorInsetsForChild(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.mInsetsDirty) {
            return layoutParams.mDecorInsets;
        }
        if (this.mState.isPreLayout() && (layoutParams.isItemChanged() || layoutParams.isViewInvalid())) {
            return layoutParams.mDecorInsets;
        }
        Rect rect = layoutParams.mDecorInsets;
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i = 0; i < size; i++) {
            this.mTempRect.set(0, 0, 0, 0);
            ((ItemDecoration) this.mItemDecorations.get(i)).getItemOffsets(this.mTempRect, view, this, this.mState);
            rect.left += this.mTempRect.left;
            rect.top += this.mTempRect.top;
            rect.right += this.mTempRect.right;
            rect.bottom += this.mTempRect.bottom;
        }
        layoutParams.mInsetsDirty = false;
        return rect;
    }

    public LayoutManager getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    @Nullable
    public OnFlingListener getOnFlingListener() {
        return this.mOnFlingListener;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public RecycledViewPool getRecycledViewPool() {
        return this.mRecycler.getRecycledViewPool();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().hasNestedScrollingParent();
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.hasPendingUpdates();
    }

    /* Access modifiers changed, original: 0000 */
    public void initAdapterManager() {
        this.mAdapterHelper = new AdapterHelper(new Callback() {
            /* Access modifiers changed, original: 0000 */
            public void dispatchUpdate(UpdateOp updateOp) {
                switch (updateOp.cmd) {
                    case 1:
                        RecyclerView.this.mLayout.onItemsAdded(RecyclerView.this, updateOp.positionStart, updateOp.itemCount);
                        return;
                    case 2:
                        RecyclerView.this.mLayout.onItemsRemoved(RecyclerView.this, updateOp.positionStart, updateOp.itemCount);
                        return;
                    case 4:
                        RecyclerView.this.mLayout.onItemsUpdated(RecyclerView.this, updateOp.positionStart, updateOp.itemCount, updateOp.payload);
                        return;
                    case 8:
                        RecyclerView.this.mLayout.onItemsMoved(RecyclerView.this, updateOp.positionStart, updateOp.itemCount, 1);
                        return;
                    default:
                        return;
                }
            }

            public ViewHolder findViewHolder(int i) {
                ViewHolder findViewHolderForPosition = RecyclerView.this.findViewHolderForPosition(i, true);
                return (findViewHolderForPosition == null || RecyclerView.this.mChildHelper.isHidden(findViewHolderForPosition.itemView)) ? null : findViewHolderForPosition;
            }

            public void markViewHoldersUpdated(int i, int i2, Object obj) {
                RecyclerView.this.viewRangeUpdate(i, i2, obj);
                RecyclerView.this.mItemsChanged = true;
            }

            public void offsetPositionsForAdd(int i, int i2) {
                RecyclerView.this.offsetPositionRecordsForInsert(i, i2);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }

            public void offsetPositionsForMove(int i, int i2) {
                RecyclerView.this.offsetPositionRecordsForMove(i, i2);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }

            public void offsetPositionsForRemovingInvisible(int i, int i2) {
                RecyclerView.this.offsetPositionRecordsForRemove(i, i2, true);
                RecyclerView.this.mItemsAddedOrRemoved = true;
                State state = RecyclerView.this.mState;
                state.mDeletedInvisibleItemCountSincePreviousLayout = state.mDeletedInvisibleItemCountSincePreviousLayout + i2;
            }

            public void offsetPositionsForRemovingLaidOutOrNewView(int i, int i2) {
                RecyclerView.this.offsetPositionRecordsForRemove(i, i2, false);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }

            public void onDispatchFirstPass(UpdateOp updateOp) {
                dispatchUpdate(updateOp);
            }

            public void onDispatchSecondPass(UpdateOp updateOp) {
                dispatchUpdate(updateOp);
            }
        });
    }

    /* Access modifiers changed, original: 0000 */
    public void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() != 0) {
            if (this.mLayout != null) {
                this.mLayout.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
            }
            markItemDecorInsetsDirty();
            requestLayout();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean isAccessibilityEnabled() {
        return this.mAccessibilityManager != null && this.mAccessibilityManager.isEnabled();
    }

    public boolean isAnimating() {
        return this.mItemAnimator != null && this.mItemAnimator.isRunning();
    }

    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    public boolean isLayoutFrozen() {
        return this.mLayoutFrozen;
    }

    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().isNestedScrollingEnabled();
    }

    /* Access modifiers changed, original: 0000 */
    public void markItemDecorInsetsDirty() {
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i = 0; i < unfilteredChildCount; i++) {
            ((LayoutParams) this.mChildHelper.getUnfilteredChildAt(i).getLayoutParams()).mInsetsDirty = true;
        }
        this.mRecycler.markItemDecorInsetsDirty();
    }

    /* Access modifiers changed, original: 0000 */
    public void markKnownViewsInvalid() {
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i = 0; i < unfilteredChildCount; i++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i));
            if (!(childViewHolderInt == null || childViewHolderInt.shouldIgnore())) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        this.mRecycler.markKnownViewsInvalid();
    }

    public void offsetChildrenHorizontal(int i) {
        int childCount = this.mChildHelper.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            this.mChildHelper.getChildAt(i2).offsetLeftAndRight(i);
        }
    }

    public void offsetChildrenVertical(int i) {
        int childCount = this.mChildHelper.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            this.mChildHelper.getChildAt(i2).offsetTopAndBottom(i);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void offsetPositionRecordsForInsert(int i, int i2) {
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i3 = 0; i3 < unfilteredChildCount; i3++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i3));
            if (!(childViewHolderInt == null || childViewHolderInt.shouldIgnore() || childViewHolderInt.mPosition < i)) {
                childViewHolderInt.offsetPosition(i2, false);
                this.mState.mStructureChanged = true;
            }
        }
        this.mRecycler.offsetPositionRecordsForInsert(i, i2);
        requestLayout();
    }

    /* Access modifiers changed, original: 0000 */
    public void offsetPositionRecordsForMove(int i, int i2) {
        int i3;
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        int i4;
        int i5;
        if (i < i2) {
            i3 = -1;
            i4 = i2;
            i5 = i;
        } else {
            i3 = 1;
            i4 = i;
            i5 = i2;
        }
        for (int i6 = 0; i6 < unfilteredChildCount; i6++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i6));
            if (childViewHolderInt != null && childViewHolderInt.mPosition >= i5 && childViewHolderInt.mPosition <= i4) {
                if (childViewHolderInt.mPosition == i) {
                    childViewHolderInt.offsetPosition(i2 - i, false);
                } else {
                    childViewHolderInt.offsetPosition(i3, false);
                }
                this.mState.mStructureChanged = true;
            }
        }
        this.mRecycler.offsetPositionRecordsForMove(i, i2);
        requestLayout();
    }

    /* Access modifiers changed, original: 0000 */
    public void offsetPositionRecordsForRemove(int i, int i2, boolean z) {
        int i3 = i + i2;
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i4 = 0; i4 < unfilteredChildCount; i4++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i4));
            if (!(childViewHolderInt == null || childViewHolderInt.shouldIgnore())) {
                if (childViewHolderInt.mPosition >= i3) {
                    childViewHolderInt.offsetPosition(-i2, z);
                    this.mState.mStructureChanged = true;
                } else if (childViewHolderInt.mPosition >= i) {
                    childViewHolderInt.flagRemovedAndOffsetPosition(i - 1, -i2, z);
                    this.mState.mStructureChanged = true;
                }
            }
        }
        this.mRecycler.offsetPositionRecordsForRemove(i, i2, z);
        requestLayout();
    }

    /* Access modifiers changed, original: protected */
    public void onAttachedToWindow() {
        boolean z = true;
        super.onAttachedToWindow();
        this.mLayoutOrScrollCounter = 0;
        this.mIsAttached = true;
        if (!this.mFirstLayoutComplete || isLayoutRequested()) {
            z = false;
        }
        this.mFirstLayoutComplete = z;
        if (this.mLayout != null) {
            this.mLayout.dispatchAttachedToWindow(this);
        }
        this.mPostedAnimatorRunner = false;
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    /* Access modifiers changed, original: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mItemAnimator != null) {
            this.mItemAnimator.endAnimations();
        }
        stopScroll();
        this.mIsAttached = false;
        if (this.mLayout != null) {
            this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
        }
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.onDetach();
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i = 0; i < size; i++) {
            ((ItemDecoration) this.mItemDecorations.get(i)).onDraw(canvas, this, this.mState);
        }
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (!(this.mLayout == null || this.mLayoutFrozen || (motionEvent.getSource() & 2) == 0 || motionEvent.getAction() != 8)) {
            float f = this.mLayout.canScrollVertically() ? -MotionEventCompat.getAxisValue(motionEvent, 9) : 0.0f;
            float axisValue = this.mLayout.canScrollHorizontally() ? MotionEventCompat.getAxisValue(motionEvent, 10) : 0.0f;
            if (!(f == 0.0f && axisValue == 0.0f)) {
                float scrollFactor = getScrollFactor();
                scrollByInternal((int) (axisValue * scrollFactor), (int) (f * scrollFactor), motionEvent);
            }
        }
        return false;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int i = -1;
        boolean z = true;
        if (this.mLayoutFrozen) {
            return false;
        }
        if (dispatchOnItemTouchIntercept(motionEvent)) {
            cancelTouch();
            return true;
        } else if (this.mLayout == null) {
            return false;
        } else {
            boolean canScrollHorizontally = this.mLayout.canScrollHorizontally();
            boolean canScrollVertically = this.mLayout.canScrollVertically();
            if (this.mVelocityTracker == null) {
                this.mVelocityTracker = VelocityTracker.obtain();
            }
            this.mVelocityTracker.addMovement(motionEvent);
            int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
            int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
            int i2;
            switch (actionMasked) {
                case 0:
                    if (this.mIgnoreMotionEventTillDown) {
                        this.mIgnoreMotionEventTillDown = false;
                    }
                    this.mScrollPointerId = motionEvent.getPointerId(0);
                    i = (int) (motionEvent.getX() + 0.5f);
                    this.mLastTouchX = i;
                    this.mInitialTouchX = i;
                    i = (int) (motionEvent.getY() + 0.5f);
                    this.mLastTouchY = i;
                    this.mInitialTouchY = i;
                    if (this.mScrollState == 2) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        setScrollState(1);
                    }
                    int[] iArr = this.mNestedOffsets;
                    this.mNestedOffsets[1] = 0;
                    iArr[0] = 0;
                    i2 = canScrollHorizontally ? 1 : 0;
                    if (canScrollVertically) {
                        i2 |= 2;
                    }
                    startNestedScroll(i2);
                    break;
                case 1:
                    this.mVelocityTracker.clear();
                    stopNestedScroll();
                    break;
                case 2:
                    actionMasked = motionEvent.findPointerIndex(this.mScrollPointerId);
                    if (actionMasked >= 0) {
                        actionIndex = (int) (motionEvent.getX(actionMasked) + 0.5f);
                        actionMasked = (int) (motionEvent.getY(actionMasked) + 0.5f);
                        if (this.mScrollState != 1) {
                            actionIndex -= this.mInitialTouchX;
                            actionMasked -= this.mInitialTouchY;
                            if (!canScrollHorizontally || Math.abs(actionIndex) <= this.mTouchSlop) {
                                canScrollHorizontally = false;
                            } else {
                                this.mLastTouchX = ((actionIndex < 0 ? -1 : 1) * this.mTouchSlop) + this.mInitialTouchX;
                                canScrollHorizontally = true;
                            }
                            if (canScrollVertically && Math.abs(actionMasked) > this.mTouchSlop) {
                                i2 = this.mInitialTouchY;
                                int i3 = this.mTouchSlop;
                                if (actionMasked >= 0) {
                                    i = 1;
                                }
                                this.mLastTouchY = i2 + (i * i3);
                                canScrollHorizontally = true;
                            }
                            if (canScrollHorizontally) {
                                setScrollState(1);
                                break;
                            }
                        }
                    }
                    Log.e(TAG, "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                    return false;
                    break;
                case 3:
                    cancelTouch();
                    break;
                case 5:
                    this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
                    i2 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                    this.mLastTouchX = i2;
                    this.mInitialTouchX = i2;
                    i2 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                    this.mLastTouchY = i2;
                    this.mInitialTouchY = i2;
                    break;
                case 6:
                    onPointerUp(motionEvent);
                    break;
            }
            if (this.mScrollState != 1) {
                z = false;
            }
            return z;
        }
    }

    /* Access modifiers changed, original: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        TraceCompat.beginSection(TRACE_ON_LAYOUT_TAG);
        dispatchLayout();
        TraceCompat.endSection();
        this.mFirstLayoutComplete = true;
    }

    /* Access modifiers changed, original: protected */
    public void onMeasure(int i, int i2) {
        boolean z = false;
        if (this.mLayout == null) {
            defaultOnMeasure(i, i2);
        } else if (this.mLayout.mAutoMeasure) {
            int mode = MeasureSpec.getMode(i);
            int mode2 = MeasureSpec.getMode(i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            this.mLayout.onMeasure(this.mRecycler, this.mState, i, i2);
            if (!z && this.mAdapter != null) {
                if (this.mState.mLayoutStep == 1) {
                    dispatchLayoutStep1();
                }
                this.mLayout.setMeasureSpecs(i, i2);
                this.mState.mIsMeasuring = true;
                dispatchLayoutStep2();
                this.mLayout.setMeasuredDimensionFromChildren(i, i2);
                if (this.mLayout.shouldMeasureTwice()) {
                    this.mLayout.setMeasureSpecs(MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                    this.mState.mIsMeasuring = true;
                    dispatchLayoutStep2();
                    this.mLayout.setMeasuredDimensionFromChildren(i, i2);
                }
            }
        } else if (this.mHasFixedSize) {
            this.mLayout.onMeasure(this.mRecycler, this.mState, i, i2);
        } else {
            if (this.mAdapterUpdateDuringMeasure) {
                eatRequestLayout();
                processAdapterUpdatesAndSetAnimationFlags();
                if (this.mState.mRunPredictiveAnimations) {
                    this.mState.mInPreLayout = true;
                } else {
                    this.mAdapterHelper.consumeUpdatesInOnePass();
                    this.mState.mInPreLayout = false;
                }
                this.mAdapterUpdateDuringMeasure = false;
                resumeRequestLayout(false);
            }
            if (this.mAdapter != null) {
                this.mState.mItemCount = this.mAdapter.getItemCount();
            } else {
                this.mState.mItemCount = 0;
            }
            eatRequestLayout();
            this.mLayout.onMeasure(this.mRecycler, this.mState, i, i2);
            resumeRequestLayout(false);
            this.mState.mInPreLayout = false;
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        return isComputingLayout() ? false : super.onRequestFocusInDescendants(i, rect);
    }

    /* Access modifiers changed, original: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.mPendingSavedState = (SavedState) parcelable;
            super.onRestoreInstanceState(this.mPendingSavedState.getSuperState());
            if (this.mLayout != null && this.mPendingSavedState.mLayoutState != null) {
                this.mLayout.onRestoreInstanceState(this.mPendingSavedState.mLayoutState);
                return;
            }
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    /* Access modifiers changed, original: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.mPendingSavedState != null) {
            savedState.copyFrom(this.mPendingSavedState);
        } else if (this.mLayout != null) {
            savedState.mLayoutState = this.mLayout.onSaveInstanceState();
        } else {
            savedState.mLayoutState = null;
        }
        return savedState;
    }

    public void onScrollStateChanged(int i) {
    }

    public void onScrolled(int i, int i2) {
    }

    /* Access modifiers changed, original: protected */
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3 || i2 != i4) {
            invalidateGlows();
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i = 0;
        if (this.mLayoutFrozen || this.mIgnoreMotionEventTillDown) {
            return false;
        }
        if (dispatchOnItemTouch(motionEvent)) {
            cancelTouch();
            return true;
        } else if (this.mLayout == null) {
            return false;
        } else {
            boolean canScrollHorizontally = this.mLayout.canScrollHorizontally();
            boolean canScrollVertically = this.mLayout.canScrollVertically();
            if (this.mVelocityTracker == null) {
                this.mVelocityTracker = VelocityTracker.obtain();
            }
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
            int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
            if (actionMasked == 0) {
                int[] iArr = this.mNestedOffsets;
                this.mNestedOffsets[1] = 0;
                iArr[0] = 0;
            }
            obtain.offsetLocation((float) this.mNestedOffsets[0], (float) this.mNestedOffsets[1]);
            switch (actionMasked) {
                case 0:
                    this.mScrollPointerId = motionEvent.getPointerId(0);
                    actionMasked = (int) (motionEvent.getX() + 0.5f);
                    this.mLastTouchX = actionMasked;
                    this.mInitialTouchX = actionMasked;
                    actionMasked = (int) (motionEvent.getY() + 0.5f);
                    this.mLastTouchY = actionMasked;
                    this.mInitialTouchY = actionMasked;
                    actionMasked = canScrollHorizontally ? 1 : 0;
                    if (canScrollVertically) {
                        actionMasked |= 2;
                    }
                    startNestedScroll(actionMasked);
                    break;
                case 1:
                    this.mVelocityTracker.addMovement(obtain);
                    this.mVelocityTracker.computeCurrentVelocity(1000, (float) this.mMaxFlingVelocity);
                    float f = canScrollHorizontally ? -VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mScrollPointerId) : 0.0f;
                    float f2 = canScrollVertically ? -VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mScrollPointerId) : 0.0f;
                    if ((f == 0.0f && f2 == 0.0f) || !fling((int) f, (int) f2)) {
                        setScrollState(0);
                    }
                    resetTouch();
                    i = 1;
                    break;
                case 2:
                    actionMasked = motionEvent.findPointerIndex(this.mScrollPointerId);
                    if (actionMasked >= 0) {
                        int x = (int) (motionEvent.getX(actionMasked) + 0.5f);
                        int y = (int) (motionEvent.getY(actionMasked) + 0.5f);
                        int i2 = this.mLastTouchX - x;
                        actionMasked = this.mLastTouchY - y;
                        if (dispatchNestedPreScroll(i2, actionMasked, this.mScrollConsumed, this.mScrollOffset)) {
                            i2 -= this.mScrollConsumed[0];
                            actionMasked -= this.mScrollConsumed[1];
                            obtain.offsetLocation((float) this.mScrollOffset[0], (float) this.mScrollOffset[1]);
                            int[] iArr2 = this.mNestedOffsets;
                            iArr2[0] = iArr2[0] + this.mScrollOffset[0];
                            iArr2 = this.mNestedOffsets;
                            iArr2[1] = iArr2[1] + this.mScrollOffset[1];
                        }
                        if (this.mScrollState != 1) {
                            if (!canScrollHorizontally || Math.abs(i2) <= this.mTouchSlop) {
                                actionIndex = 0;
                            } else {
                                i2 = i2 > 0 ? i2 - this.mTouchSlop : i2 + this.mTouchSlop;
                                actionIndex = 1;
                            }
                            if (canScrollVertically && Math.abs(actionMasked) > this.mTouchSlop) {
                                actionMasked = actionMasked > 0 ? actionMasked - this.mTouchSlop : actionMasked + this.mTouchSlop;
                                actionIndex = 1;
                            }
                            if (actionIndex != 0) {
                                setScrollState(1);
                            }
                        }
                        if (this.mScrollState == 1) {
                            this.mLastTouchX = x - this.mScrollOffset[0];
                            this.mLastTouchY = y - this.mScrollOffset[1];
                            if (!canScrollHorizontally) {
                                i2 = 0;
                            }
                            if (!canScrollVertically) {
                                actionMasked = 0;
                            }
                            if (scrollByInternal(i2, actionMasked, obtain)) {
                                getParent().requestDisallowInterceptTouchEvent(true);
                                break;
                            }
                        }
                    }
                    Log.e(TAG, "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                    return false;
                    break;
                case 3:
                    cancelTouch();
                    break;
                case 5:
                    this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
                    actionMasked = (int) (motionEvent.getX(actionIndex) + 0.5f);
                    this.mLastTouchX = actionMasked;
                    this.mInitialTouchX = actionMasked;
                    actionMasked = (int) (motionEvent.getY(actionIndex) + 0.5f);
                    this.mLastTouchY = actionMasked;
                    this.mInitialTouchY = actionMasked;
                    break;
                case 6:
                    onPointerUp(motionEvent);
                    break;
            }
            if (i == 0) {
                this.mVelocityTracker.addMovement(obtain);
            }
            obtain.recycle();
            return true;
        }
    }

    /* Access modifiers changed, original: protected */
    public void removeDetachedView(View view, boolean z) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.clearTmpDetachFlag();
            } else if (!childViewHolderInt.shouldIgnore()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + childViewHolderInt);
            }
        }
        dispatchChildDetached(view);
        super.removeDetachedView(view, z);
    }

    public void removeItemDecoration(ItemDecoration itemDecoration) {
        if (this.mLayout != null) {
            this.mLayout.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(itemDecoration);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void removeOnChildAttachStateChangeListener(OnChildAttachStateChangeListener onChildAttachStateChangeListener) {
        if (this.mOnChildAttachStateListeners != null) {
            this.mOnChildAttachStateListeners.remove(onChildAttachStateChangeListener);
        }
    }

    public void removeOnItemTouchListener(OnItemTouchListener onItemTouchListener) {
        this.mOnItemTouchListeners.remove(onItemTouchListener);
        if (this.mActiveOnItemTouchListener == onItemTouchListener) {
            this.mActiveOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(OnScrollListener onScrollListener) {
        if (this.mScrollListeners != null) {
            this.mScrollListeners.remove(onScrollListener);
        }
    }

    public void requestChildFocus(View view, View view2) {
        if (!(this.mLayout.onRequestChildFocus(this, this.mState, view, view2) || view2 == null)) {
            this.mTempRect.set(0, 0, view2.getWidth(), view2.getHeight());
            android.view.ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            if (layoutParams instanceof LayoutParams) {
                LayoutParams layoutParams2 = (LayoutParams) layoutParams;
                if (!layoutParams2.mInsetsDirty) {
                    Rect rect = layoutParams2.mDecorInsets;
                    Rect rect2 = this.mTempRect;
                    rect2.left -= rect.left;
                    rect2 = this.mTempRect;
                    rect2.right += rect.right;
                    rect2 = this.mTempRect;
                    rect2.top -= rect.top;
                    rect2 = this.mTempRect;
                    rect2.bottom = rect.bottom + rect2.bottom;
                }
            }
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
            requestChildRectangleOnScreen(view, this.mTempRect, !this.mFirstLayoutComplete);
        }
        super.requestChildFocus(view, view2);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.mLayout.requestChildRectangleOnScreen(this, view, rect, z);
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.mOnItemTouchListeners.size();
        for (int i = 0; i < size; i++) {
            ((OnItemTouchListener) this.mOnItemTouchListeners.get(i)).onRequestDisallowInterceptTouchEvent(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public void requestLayout() {
        if (this.mEatRequestLayout != 0 || this.mLayoutFrozen) {
            this.mLayoutRequestEaten = true;
        } else {
            super.requestLayout();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void resumeRequestLayout(boolean z) {
        if (this.mEatRequestLayout < 1) {
            this.mEatRequestLayout = 1;
        }
        if (!z) {
            this.mLayoutRequestEaten = false;
        }
        if (this.mEatRequestLayout == 1) {
            if (!(!z || !this.mLayoutRequestEaten || this.mLayoutFrozen || this.mLayout == null || this.mAdapter == null)) {
                dispatchLayout();
            }
            if (!this.mLayoutFrozen) {
                this.mLayoutRequestEaten = false;
            }
        }
        this.mEatRequestLayout--;
    }

    /* Access modifiers changed, original: 0000 */
    public void saveOldPositions() {
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        for (int i = 0; i < unfilteredChildCount; i++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.saveOldPosition();
            }
        }
    }

    public void scrollBy(int i, int i2) {
        if (this.mLayout == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.mLayoutFrozen) {
            boolean canScrollHorizontally = this.mLayout.canScrollHorizontally();
            boolean canScrollVertically = this.mLayout.canScrollVertically();
            if (canScrollHorizontally || canScrollVertically) {
                if (!canScrollHorizontally) {
                    i = 0;
                }
                if (!canScrollVertically) {
                    i2 = 0;
                }
                scrollByInternal(i, i2, null);
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean scrollByInternal(int i, int i2, MotionEvent motionEvent) {
        int scrollHorizontallyBy;
        int i3;
        int i4;
        int i5;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            int scrollVerticallyBy;
            eatRequestLayout();
            onEnterLayoutOrScroll();
            TraceCompat.beginSection(TRACE_SCROLL_TAG);
            if (i != 0) {
                scrollHorizontallyBy = this.mLayout.scrollHorizontallyBy(i, this.mRecycler, this.mState);
                i3 = i - scrollHorizontallyBy;
            } else {
                scrollHorizontallyBy = 0;
                i3 = 0;
            }
            if (i2 != 0) {
                scrollVerticallyBy = this.mLayout.scrollVerticallyBy(i2, this.mRecycler, this.mState);
                i4 = i2 - scrollVerticallyBy;
            } else {
                scrollVerticallyBy = 0;
                i4 = 0;
            }
            TraceCompat.endSection();
            repositionShadowingViews();
            onExitLayoutOrScroll();
            resumeRequestLayout(false);
            i5 = i4;
            i4 = scrollHorizontallyBy;
            scrollHorizontallyBy = scrollVerticallyBy;
        } else {
            scrollHorizontallyBy = 0;
            i4 = 0;
            i5 = 0;
            i3 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        if (dispatchNestedScroll(i4, scrollHorizontallyBy, i3, i5, this.mScrollOffset)) {
            this.mLastTouchX -= this.mScrollOffset[0];
            this.mLastTouchY -= this.mScrollOffset[1];
            if (motionEvent != null) {
                motionEvent.offsetLocation((float) this.mScrollOffset[0], (float) this.mScrollOffset[1]);
            }
            int[] iArr = this.mNestedOffsets;
            iArr[0] = iArr[0] + this.mScrollOffset[0];
            iArr = this.mNestedOffsets;
            iArr[1] = iArr[1] + this.mScrollOffset[1];
        } else if (getOverScrollMode() != 2) {
            if (motionEvent != null) {
                pullGlows(motionEvent.getX(), (float) i3, motionEvent.getY(), (float) i5);
            }
            considerReleasingGlowsOnScroll(i, i2);
        }
        if (!(i4 == 0 && scrollHorizontallyBy == 0)) {
            dispatchOnScrolled(i4, scrollHorizontallyBy);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (i4 == 0 && scrollHorizontallyBy == 0) ? false : true;
    }

    public void scrollTo(int i, int i2) {
        Log.w(TAG, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void scrollToPosition(int i) {
        if (!this.mLayoutFrozen) {
            stopScroll();
            if (this.mLayout == null) {
                Log.e(TAG, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
                return;
            }
            this.mLayout.scrollToPosition(i);
            awakenScrollBars();
        }
    }

    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!shouldDeferAccessibilityEvent(accessibilityEvent)) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        }
    }

    public void setAccessibilityDelegateCompat(RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate) {
        this.mAccessibilityDelegate = recyclerViewAccessibilityDelegate;
        ViewCompat.setAccessibilityDelegate(this, this.mAccessibilityDelegate);
    }

    public void setAdapter(Adapter adapter) {
        setLayoutFrozen(false);
        setAdapterInternal(adapter, false, true);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(ChildDrawingOrderCallback childDrawingOrderCallback) {
        if (childDrawingOrderCallback != this.mChildDrawingOrderCallback) {
            this.mChildDrawingOrderCallback = childDrawingOrderCallback;
            setChildrenDrawingOrderEnabled(this.mChildDrawingOrderCallback != null);
        }
    }

    public void setClipToPadding(boolean z) {
        if (z != this.mClipToPadding) {
            invalidateGlows();
        }
        this.mClipToPadding = z;
        super.setClipToPadding(z);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    public void setHasFixedSize(boolean z) {
        this.mHasFixedSize = z;
    }

    public void setItemAnimator(ItemAnimator itemAnimator) {
        if (this.mItemAnimator != null) {
            this.mItemAnimator.endAnimations();
            this.mItemAnimator.setListener(null);
        }
        this.mItemAnimator = itemAnimator;
        if (this.mItemAnimator != null) {
            this.mItemAnimator.setListener(this.mItemAnimatorListener);
        }
    }

    public void setItemViewCacheSize(int i) {
        this.mRecycler.setViewCacheSize(i);
    }

    public void setLayoutFrozen(boolean z) {
        if (z != this.mLayoutFrozen) {
            assertNotInLayoutOrScroll("Do not setLayoutFrozen in layout or scroll");
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
                this.mLayoutFrozen = true;
                this.mIgnoreMotionEventTillDown = true;
                stopScroll();
                return;
            }
            this.mLayoutFrozen = false;
            if (!(!this.mLayoutRequestEaten || this.mLayout == null || this.mAdapter == null)) {
                requestLayout();
            }
            this.mLayoutRequestEaten = false;
        }
    }

    public void setLayoutManager(LayoutManager layoutManager) {
        if (layoutManager != this.mLayout) {
            stopScroll();
            if (this.mLayout != null) {
                if (this.mItemAnimator != null) {
                    this.mItemAnimator.endAnimations();
                }
                this.mLayout.removeAndRecycleAllViews(this.mRecycler);
                this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
                this.mRecycler.clear();
                if (this.mIsAttached) {
                    this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
                }
                this.mLayout.setRecyclerView(null);
                this.mLayout = null;
            } else {
                this.mRecycler.clear();
            }
            this.mChildHelper.removeAllViewsUnfiltered();
            this.mLayout = layoutManager;
            if (layoutManager != null) {
                if (layoutManager.mRecyclerView != null) {
                    throw new IllegalArgumentException("LayoutManager " + layoutManager + " is already attached to a RecyclerView: " + layoutManager.mRecyclerView);
                }
                this.mLayout.setRecyclerView(this);
                if (this.mIsAttached) {
                    this.mLayout.dispatchAttachedToWindow(this);
                }
            }
            requestLayout();
        }
    }

    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().setNestedScrollingEnabled(z);
    }

    public void setOnFlingListener(@Nullable OnFlingListener onFlingListener) {
        this.mOnFlingListener = onFlingListener;
    }

    @Deprecated
    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.mScrollListener = onScrollListener;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.mPreserveFocusAfterLayout = z;
    }

    public void setRecycledViewPool(RecycledViewPool recycledViewPool) {
        this.mRecycler.setRecycledViewPool(recycledViewPool);
    }

    public void setRecyclerListener(RecyclerListener recyclerListener) {
        this.mRecyclerListener = recyclerListener;
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        switch (i) {
            case 0:
                break;
            case 1:
                this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
                return;
            default:
                Log.w(TAG, "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
                break;
        }
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(ViewCacheExtension viewCacheExtension) {
        this.mRecycler.setViewCacheExtension(viewCacheExtension);
    }

    /* Access modifiers changed, original: 0000 */
    public boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        int i = 0;
        if (!isComputingLayout()) {
            return false;
        }
        int contentChangeTypes = accessibilityEvent != null ? AccessibilityEventCompat.getContentChangeTypes(accessibilityEvent) : 0;
        if (contentChangeTypes != 0) {
            i = contentChangeTypes;
        }
        this.mEatenAccessibilityChangeFlags = i | this.mEatenAccessibilityChangeFlags;
        return true;
    }

    public void smoothScrollBy(int i, int i2) {
        int i3 = 0;
        if (this.mLayout == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.mLayoutFrozen) {
            if (!this.mLayout.canScrollHorizontally()) {
                i = 0;
            }
            if (this.mLayout.canScrollVertically()) {
                i3 = i2;
            }
            if (i != 0 || i3 != 0) {
                this.mViewFlinger.smoothScrollBy(i, i3);
            }
        }
    }

    public void smoothScrollToPosition(int i) {
        if (!this.mLayoutFrozen) {
            if (this.mLayout == null) {
                Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            } else {
                this.mLayout.smoothScrollToPosition(this, this.mState, i);
            }
        }
    }

    public boolean startNestedScroll(int i) {
        return getScrollingChildHelper().startNestedScroll(i);
    }

    public void stopNestedScroll() {
        getScrollingChildHelper().stopNestedScroll();
    }

    public void stopScroll() {
        setScrollState(0);
        stopScrollersInternal();
    }

    public void swapAdapter(Adapter adapter, boolean z) {
        setLayoutFrozen(false);
        setAdapterInternal(adapter, true, z);
        setDataSetChangedAfterLayout();
        requestLayout();
    }

    /* Access modifiers changed, original: 0000 */
    public void viewRangeUpdate(int i, int i2, Object obj) {
        int unfilteredChildCount = this.mChildHelper.getUnfilteredChildCount();
        int i3 = i + i2;
        for (int i4 = 0; i4 < unfilteredChildCount; i4++) {
            View unfilteredChildAt = this.mChildHelper.getUnfilteredChildAt(i4);
            ViewHolder childViewHolderInt = getChildViewHolderInt(unfilteredChildAt);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i && childViewHolderInt.mPosition < i3) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(obj);
                ((LayoutParams) unfilteredChildAt.getLayoutParams()).mInsetsDirty = true;
            }
        }
        this.mRecycler.viewRangeUpdate(i, i2);
    }
}
