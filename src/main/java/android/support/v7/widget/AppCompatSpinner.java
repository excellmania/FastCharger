package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources.Theme;
import android.database.DataSetObserver;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.v4.view.TintableBackgroundView;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.support.v7.content.res.AppCompatResources;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;

public class AppCompatSpinner extends Spinner implements TintableBackgroundView {
    private static final int[] ATTRS_ANDROID_SPINNERMODE = new int[]{16843505};
    private static final boolean IS_AT_LEAST_JB = (VERSION.SDK_INT >= 16);
    private static final boolean IS_AT_LEAST_M = (VERSION.SDK_INT >= 23);
    private static final int MAX_ITEMS_MEASURED = 15;
    private static final int MODE_DIALOG = 0;
    private static final int MODE_DROPDOWN = 1;
    private static final int MODE_THEME = -1;
    private static final String TAG = "AppCompatSpinner";
    private AppCompatBackgroundHelper mBackgroundTintHelper;
    private int mDropDownWidth;
    private ForwardingListener mForwardingListener;
    private DropdownPopup mPopup;
    private Context mPopupContext;
    private boolean mPopupSet;
    private SpinnerAdapter mTempAdapter;
    private final Rect mTempRect;

    private static class DropDownAdapter implements ListAdapter, SpinnerAdapter {
        private SpinnerAdapter mAdapter;
        private ListAdapter mListAdapter;

        public DropDownAdapter(@Nullable SpinnerAdapter spinnerAdapter, @Nullable Theme theme) {
            this.mAdapter = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.mListAdapter = (ListAdapter) spinnerAdapter;
            }
            if (theme == null) {
                return;
            }
            if (AppCompatSpinner.IS_AT_LEAST_M && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                    themedSpinnerAdapter.setDropDownViewTheme(theme);
                }
            } else if (spinnerAdapter instanceof ThemedSpinnerAdapter) {
                ThemedSpinnerAdapter themedSpinnerAdapter2 = (ThemedSpinnerAdapter) spinnerAdapter;
                if (themedSpinnerAdapter2.getDropDownViewTheme() == null) {
                    themedSpinnerAdapter2.setDropDownViewTheme(theme);
                }
            }
        }

        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.mListAdapter;
            return listAdapter != null ? listAdapter.areAllItemsEnabled() : true;
        }

        public int getCount() {
            return this.mAdapter == null ? 0 : this.mAdapter.getCount();
        }

        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            return this.mAdapter == null ? null : this.mAdapter.getDropDownView(i, view, viewGroup);
        }

        public Object getItem(int i) {
            return this.mAdapter == null ? null : this.mAdapter.getItem(i);
        }

        public long getItemId(int i) {
            return this.mAdapter == null ? -1 : this.mAdapter.getItemId(i);
        }

        public int getItemViewType(int i) {
            return 0;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        public int getViewTypeCount() {
            return 1;
        }

        public boolean hasStableIds() {
            return this.mAdapter != null && this.mAdapter.hasStableIds();
        }

        public boolean isEmpty() {
            return getCount() == 0;
        }

        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.mListAdapter;
            return listAdapter != null ? listAdapter.isEnabled(i) : true;
        }

        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.mAdapter != null) {
                this.mAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.mAdapter != null) {
                this.mAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    private class DropdownPopup extends ListPopupWindow {
        private ListAdapter mAdapter;
        private CharSequence mHintText;
        private final Rect mVisibleRect = new Rect();

        public DropdownPopup(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            setAnchorView(AppCompatSpinner.this);
            setModal(true);
            setPromptPosition(0);
            setOnItemClickListener(new OnItemClickListener(AppCompatSpinner.this) {
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    AppCompatSpinner.this.setSelection(i);
                    if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                        AppCompatSpinner.this.performItemClick(view, i, DropdownPopup.this.mAdapter.getItemId(i));
                    }
                    DropdownPopup.this.dismiss();
                }
            });
        }

        private boolean isVisibleToUser(View view) {
            return ViewCompat.isAttachedToWindow(view) && view.getGlobalVisibleRect(this.mVisibleRect);
        }

        /* Access modifiers changed, original: 0000 */
        public void computeContentWidth() {
            int i;
            Drawable background = getBackground();
            if (background != null) {
                background.getPadding(AppCompatSpinner.this.mTempRect);
                i = ViewUtils.isLayoutRtl(AppCompatSpinner.this) ? AppCompatSpinner.this.mTempRect.right : -AppCompatSpinner.this.mTempRect.left;
            } else {
                Rect access$300 = AppCompatSpinner.this.mTempRect;
                AppCompatSpinner.this.mTempRect.right = 0;
                access$300.left = 0;
                i = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            if (AppCompatSpinner.this.mDropDownWidth == -2) {
                int access$500 = AppCompatSpinner.this.compatMeasureContentWidth((SpinnerAdapter) this.mAdapter, getBackground());
                int i2 = (AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels - AppCompatSpinner.this.mTempRect.left) - AppCompatSpinner.this.mTempRect.right;
                if (access$500 <= i2) {
                    i2 = access$500;
                }
                setContentWidth(Math.max(i2, (width - paddingLeft) - paddingRight));
            } else if (AppCompatSpinner.this.mDropDownWidth == -1) {
                setContentWidth((width - paddingLeft) - paddingRight);
            } else {
                setContentWidth(AppCompatSpinner.this.mDropDownWidth);
            }
            setHorizontalOffset(ViewUtils.isLayoutRtl(AppCompatSpinner.this) ? ((width - paddingRight) - getWidth()) + i : i + paddingLeft);
        }

        public CharSequence getHintText() {
            return this.mHintText;
        }

        public void setAdapter(ListAdapter listAdapter) {
            super.setAdapter(listAdapter);
            this.mAdapter = listAdapter;
        }

        public void setPromptText(CharSequence charSequence) {
            this.mHintText = charSequence;
        }

        public void show() {
            boolean isShowing = isShowing();
            computeContentWidth();
            setInputMethodMode(2);
            super.show();
            getListView().setChoiceMode(1);
            setSelection(AppCompatSpinner.this.getSelectedItemPosition());
            if (!isShowing) {
                ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    final AnonymousClass2 anonymousClass2 = new OnGlobalLayoutListener() {
                        public void onGlobalLayout() {
                            if (DropdownPopup.this.isVisibleToUser(AppCompatSpinner.this)) {
                                DropdownPopup.this.computeContentWidth();
                                super.show();
                                return;
                            }
                            DropdownPopup.this.dismiss();
                        }
                    };
                    viewTreeObserver.addOnGlobalLayoutListener(anonymousClass2);
                    setOnDismissListener(new OnDismissListener() {
                        public void onDismiss() {
                            ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                            if (viewTreeObserver != null) {
                                viewTreeObserver.removeGlobalOnLayoutListener(anonymousClass2);
                            }
                        }
                    });
                }
            }
        }
    }

    public AppCompatSpinner(Context context) {
        this(context, null);
    }

    public AppCompatSpinner(Context context, int i) {
        this(context, null, R.attr.spinnerStyle, i);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.spinnerStyle);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i, i2, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0089  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00a2  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00d6  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0089  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00a2  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00df  */
    public AppCompatSpinner(android.content.Context r9, android.util.AttributeSet r10, int r11, int r12, android.content.res.Resources.Theme r13) {
        /*
        r8 = this;
        r1 = 0;
        r3 = 1;
        r7 = 0;
        r8.<init>(r9, r10, r11);
        r0 = new android.graphics.Rect;
        r0.<init>();
        r8.mTempRect = r0;
        r0 = android.support.v7.appcompat.R.styleable.Spinner;
        r4 = android.support.v7.widget.TintTypedArray.obtainStyledAttributes(r9, r10, r0, r11, r7);
        r0 = new android.support.v7.widget.AppCompatBackgroundHelper;
        r0.<init>(r8);
        r8.mBackgroundTintHelper = r0;
        if (r13 == 0) goto L_0x00af;
    L_0x001c:
        r0 = new android.support.v7.view.ContextThemeWrapper;
        r0.<init>(r9, r13);
        r8.mPopupContext = r0;
    L_0x0023:
        r0 = r8.mPopupContext;
        if (r0 == 0) goto L_0x0081;
    L_0x0027:
        r0 = -1;
        if (r12 != r0) goto L_0x0049;
    L_0x002a:
        r0 = android.os.Build.VERSION.SDK_INT;
        r2 = 11;
        if (r0 < r2) goto L_0x00e3;
    L_0x0030:
        r0 = ATTRS_ANDROID_SPINNERMODE;	 Catch:{ Exception -> 0x00cb, all -> 0x00db }
        r2 = 0;
        r2 = r9.obtainStyledAttributes(r10, r0, r11, r2);	 Catch:{ Exception -> 0x00cb, all -> 0x00db }
        r0 = 0;
        r0 = r2.hasValue(r0);	 Catch:{ Exception -> 0x00e8 }
        if (r0 == 0) goto L_0x0044;
    L_0x003e:
        r0 = 0;
        r5 = 0;
        r12 = r2.getInt(r0, r5);	 Catch:{ Exception -> 0x00e8 }
    L_0x0044:
        if (r2 == 0) goto L_0x0049;
    L_0x0046:
        r2.recycle();
    L_0x0049:
        if (r12 != r3) goto L_0x0081;
    L_0x004b:
        r0 = new android.support.v7.widget.AppCompatSpinner$DropdownPopup;
        r2 = r8.mPopupContext;
        r0.<init>(r2, r10, r11);
        r2 = r8.mPopupContext;
        r5 = android.support.v7.appcompat.R.styleable.Spinner;
        r2 = android.support.v7.widget.TintTypedArray.obtainStyledAttributes(r2, r10, r5, r11, r7);
        r5 = android.support.v7.appcompat.R.styleable.Spinner_android_dropDownWidth;
        r6 = -2;
        r5 = r2.getLayoutDimension(r5, r6);
        r8.mDropDownWidth = r5;
        r5 = android.support.v7.appcompat.R.styleable.Spinner_android_popupBackground;
        r5 = r2.getDrawable(r5);
        r0.setBackgroundDrawable(r5);
        r5 = android.support.v7.appcompat.R.styleable.Spinner_android_prompt;
        r5 = r4.getString(r5);
        r0.setPromptText(r5);
        r2.recycle();
        r8.mPopup = r0;
        r2 = new android.support.v7.widget.AppCompatSpinner$1;
        r2.<init>(r8, r0);
        r8.mForwardingListener = r2;
    L_0x0081:
        r0 = android.support.v7.appcompat.R.styleable.Spinner_android_entries;
        r0 = r4.getTextArray(r0);
        if (r0 == 0) goto L_0x0099;
    L_0x0089:
        r2 = new android.widget.ArrayAdapter;
        r5 = 17367048; // 0x1090008 float:2.5162948E-38 double:8.580462E-317;
        r2.<init>(r9, r5, r0);
        r0 = android.support.v7.appcompat.R.layout.support_simple_spinner_dropdown_item;
        r2.setDropDownViewResource(r0);
        r8.setAdapter(r2);
    L_0x0099:
        r4.recycle();
        r8.mPopupSet = r3;
        r0 = r8.mTempAdapter;
        if (r0 == 0) goto L_0x00a9;
    L_0x00a2:
        r0 = r8.mTempAdapter;
        r8.setAdapter(r0);
        r8.mTempAdapter = r1;
    L_0x00a9:
        r0 = r8.mBackgroundTintHelper;
        r0.loadFromAttributes(r10, r11);
        return;
    L_0x00af:
        r0 = android.support.v7.appcompat.R.styleable.Spinner_popupTheme;
        r0 = r4.getResourceId(r0, r7);
        if (r0 == 0) goto L_0x00c0;
    L_0x00b7:
        r2 = new android.support.v7.view.ContextThemeWrapper;
        r2.<init>(r9, r0);
        r8.mPopupContext = r2;
        goto L_0x0023;
    L_0x00c0:
        r0 = IS_AT_LEAST_M;
        if (r0 != 0) goto L_0x00c9;
    L_0x00c4:
        r0 = r9;
    L_0x00c5:
        r8.mPopupContext = r0;
        goto L_0x0023;
    L_0x00c9:
        r0 = r1;
        goto L_0x00c5;
    L_0x00cb:
        r0 = move-exception;
        r2 = r1;
    L_0x00cd:
        r5 = "AppCompatSpinner";
        r6 = "Could not read android:spinnerMode";
        android.util.Log.i(r5, r6, r0);	 Catch:{ all -> 0x00e6 }
        if (r2 == 0) goto L_0x0049;
    L_0x00d6:
        r2.recycle();
        goto L_0x0049;
    L_0x00db:
        r0 = move-exception;
        r2 = r1;
    L_0x00dd:
        if (r2 == 0) goto L_0x00e2;
    L_0x00df:
        r2.recycle();
    L_0x00e2:
        throw r0;
    L_0x00e3:
        r12 = r3;
        goto L_0x0049;
    L_0x00e6:
        r0 = move-exception;
        goto L_0x00dd;
    L_0x00e8:
        r0 = move-exception;
        goto L_0x00cd;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }

    private int compatMeasureContentWidth(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        int max2 = Math.max(0, max - (15 - (min - max)));
        View view = null;
        int i = 0;
        max = 0;
        while (max2 < min) {
            View view2;
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != max) {
                view2 = null;
            } else {
                itemViewType = max;
                view2 = view;
            }
            view = spinnerAdapter.getView(max2, view2, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i = Math.max(i, view.getMeasuredWidth());
            max2++;
            max = itemViewType;
        }
        if (drawable == null) {
            return i;
        }
        drawable.getPadding(this.mTempRect);
        return (this.mTempRect.left + this.mTempRect.right) + i;
    }

    /* Access modifiers changed, original: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.applySupportBackgroundTint();
        }
    }

    public int getDropDownHorizontalOffset() {
        return this.mPopup != null ? this.mPopup.getHorizontalOffset() : IS_AT_LEAST_JB ? super.getDropDownHorizontalOffset() : 0;
    }

    public int getDropDownVerticalOffset() {
        return this.mPopup != null ? this.mPopup.getVerticalOffset() : IS_AT_LEAST_JB ? super.getDropDownVerticalOffset() : 0;
    }

    public int getDropDownWidth() {
        return this.mPopup != null ? this.mDropDownWidth : IS_AT_LEAST_JB ? super.getDropDownWidth() : 0;
    }

    public Drawable getPopupBackground() {
        return this.mPopup != null ? this.mPopup.getBackground() : IS_AT_LEAST_JB ? super.getPopupBackground() : null;
    }

    public Context getPopupContext() {
        return this.mPopup != null ? this.mPopupContext : IS_AT_LEAST_M ? super.getPopupContext() : null;
    }

    public CharSequence getPrompt() {
        return this.mPopup != null ? this.mPopup.getHintText() : super.getPrompt();
    }

    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        return this.mBackgroundTintHelper != null ? this.mBackgroundTintHelper.getSupportBackgroundTintList() : null;
    }

    @Nullable
    public Mode getSupportBackgroundTintMode() {
        return this.mBackgroundTintHelper != null ? this.mBackgroundTintHelper.getSupportBackgroundTintMode() : null;
    }

    /* Access modifiers changed, original: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mPopup != null && this.mPopup.isShowing()) {
            this.mPopup.dismiss();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mPopup != null && MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), compatMeasureContentWidth(getAdapter(), getBackground())), MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return (this.mForwardingListener == null || !this.mForwardingListener.onTouch(this, motionEvent)) ? super.onTouchEvent(motionEvent) : true;
    }

    public boolean performClick() {
        if (this.mPopup == null) {
            return super.performClick();
        }
        if (!this.mPopup.isShowing()) {
            this.mPopup.show();
        }
        return true;
    }

    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (this.mPopupSet) {
            super.setAdapter(spinnerAdapter);
            if (this.mPopup != null) {
                this.mPopup.setAdapter(new DropDownAdapter(spinnerAdapter, (this.mPopupContext == null ? getContext() : this.mPopupContext).getTheme()));
                return;
            }
            return;
        }
        this.mTempAdapter = spinnerAdapter;
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.onSetBackgroundDrawable(drawable);
        }
    }

    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.onSetBackgroundResource(i);
        }
    }

    public void setDropDownHorizontalOffset(int i) {
        if (this.mPopup != null) {
            this.mPopup.setHorizontalOffset(i);
        } else if (IS_AT_LEAST_JB) {
            super.setDropDownHorizontalOffset(i);
        }
    }

    public void setDropDownVerticalOffset(int i) {
        if (this.mPopup != null) {
            this.mPopup.setVerticalOffset(i);
        } else if (IS_AT_LEAST_JB) {
            super.setDropDownVerticalOffset(i);
        }
    }

    public void setDropDownWidth(int i) {
        if (this.mPopup != null) {
            this.mDropDownWidth = i;
        } else if (IS_AT_LEAST_JB) {
            super.setDropDownWidth(i);
        }
    }

    public void setPopupBackgroundDrawable(Drawable drawable) {
        if (this.mPopup != null) {
            this.mPopup.setBackgroundDrawable(drawable);
        } else if (IS_AT_LEAST_JB) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    public void setPopupBackgroundResource(@DrawableRes int i) {
        setPopupBackgroundDrawable(AppCompatResources.getDrawable(getPopupContext(), i));
    }

    public void setPrompt(CharSequence charSequence) {
        if (this.mPopup != null) {
            this.mPopup.setPromptText(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.setSupportBackgroundTintList(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(@Nullable Mode mode) {
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.setSupportBackgroundTintMode(mode);
        }
    }
}
