package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.ItemInvoker;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter.Callback;
import android.support.v7.view.menu.MenuView;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewDebug.ExportedProperty;
import android.view.accessibility.AccessibilityEvent;

public class ActionMenuView extends LinearLayoutCompat implements ItemInvoker, MenuView {
    static final int GENERATED_ITEM_PADDING = 4;
    static final int MIN_CELL_SIZE = 56;
    private static final String TAG = "ActionMenuView";
    private Callback mActionMenuPresenterCallback;
    private boolean mFormatItems;
    private int mFormatItemsWidth;
    private int mGeneratedItemPadding;
    private MenuBuilder mMenu;
    private MenuBuilder.Callback mMenuBuilderCallback;
    private int mMinCellSize;
    private OnMenuItemClickListener mOnMenuItemClickListener;
    private Context mPopupContext;
    private int mPopupTheme;
    private ActionMenuPresenter mPresenter;
    private boolean mReserveOverflow;

    public interface ActionMenuChildView {
        boolean needsDividerAfter();

        boolean needsDividerBefore();
    }

    private class ActionMenuPresenterCallback implements Callback {
        private ActionMenuPresenterCallback() {
        }

        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        }

        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            return false;
        }
    }

    public static class LayoutParams extends android.support.v7.widget.LinearLayoutCompat.LayoutParams {
        @ExportedProperty
        public int cellsUsed;
        @ExportedProperty
        public boolean expandable;
        boolean expanded;
        @ExportedProperty
        public int extraPixels;
        @ExportedProperty
        public boolean isOverflowButton;
        @ExportedProperty
        public boolean preventEdgeOffset;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.isOverflowButton = false;
        }

        LayoutParams(int i, int i2, boolean z) {
            super(i, i2);
            this.isOverflowButton = z;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((android.view.ViewGroup.LayoutParams) layoutParams);
            this.isOverflowButton = layoutParams.isOverflowButton;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    private class MenuBuilderCallback implements MenuBuilder.Callback {
        private MenuBuilderCallback() {
        }

        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            return ActionMenuView.this.mOnMenuItemClickListener != null && ActionMenuView.this.mOnMenuItemClickListener.onMenuItemClick(menuItem);
        }

        public void onMenuModeChange(MenuBuilder menuBuilder) {
            if (ActionMenuView.this.mMenuBuilderCallback != null) {
                ActionMenuView.this.mMenuBuilderCallback.onMenuModeChange(menuBuilder);
            }
        }
    }

    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.mMinCellSize = (int) (56.0f * f);
        this.mGeneratedItemPadding = (int) (f * 4.0f);
        this.mPopupContext = context;
        this.mPopupTheme = 0;
    }

    static int measureChildForCells(View view, int i, int i2, int i3, int i4) {
        int i5;
        boolean z = false;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(MeasureSpec.getSize(i3) - i4, MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.hasText();
        if (i2 <= 0 || (z2 && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(MeasureSpec.makeMeasureSpec(i * i2, Integer.MIN_VALUE), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            i5 = measuredWidth / i;
            if (measuredWidth % i != 0) {
                i5++;
            }
            if (z2 && i5 < 2) {
                i5 = 2;
            }
        }
        if (!layoutParams.isOverflowButton && z2) {
            z = true;
        }
        layoutParams.expandable = z;
        layoutParams.cellsUsed = i5;
        view.measure(MeasureSpec.makeMeasureSpec(i5 * i, 1073741824), makeMeasureSpec);
        return i5;
    }

    /* JADX WARNING: Removed duplicated region for block: B:108:0x0276  */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x01cf  */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x01de  */
    private void onMeasureExactFormat(int r35, int r36) {
        /*
        r34 = this;
        r23 = android.view.View.MeasureSpec.getMode(r36);
        r6 = android.view.View.MeasureSpec.getSize(r35);
        r17 = android.view.View.MeasureSpec.getSize(r36);
        r7 = r34.getPaddingLeft();
        r8 = r34.getPaddingRight();
        r7 = r7 + r8;
        r8 = r34.getPaddingTop();
        r9 = r34.getPaddingBottom();
        r19 = r8 + r9;
        r8 = -2;
        r0 = r36;
        r1 = r19;
        r24 = getChildMeasureSpec(r0, r1, r8);
        r25 = r6 - r7;
        r0 = r34;
        r6 = r0.mMinCellSize;
        r9 = r25 / r6;
        r0 = r34;
        r6 = r0.mMinCellSize;
        r6 = r25 % r6;
        if (r9 != 0) goto L_0x0041;
    L_0x0038:
        r6 = 0;
        r0 = r34;
        r1 = r25;
        r0.setMeasuredDimension(r1, r6);
    L_0x0040:
        return;
    L_0x0041:
        r0 = r34;
        r7 = r0.mMinCellSize;
        r6 = r6 / r9;
        r26 = r7 + r6;
        r16 = 0;
        r15 = 0;
        r10 = 0;
        r7 = 0;
        r11 = 0;
        r12 = 0;
        r27 = r34.getChildCount();
        r6 = 0;
        r18 = r6;
    L_0x0057:
        r0 = r18;
        r1 = r27;
        if (r0 >= r1) goto L_0x0103;
    L_0x005d:
        r0 = r34;
        r1 = r18;
        r8 = r0.getChildAt(r1);
        r6 = r8.getVisibility();
        r14 = 8;
        if (r6 != r14) goto L_0x007e;
    L_0x006d:
        r8 = r7;
        r6 = r12;
        r12 = r16;
        r13 = r9;
        r9 = r15;
    L_0x0073:
        r14 = r18 + 1;
        r18 = r14;
        r15 = r9;
        r16 = r12;
        r9 = r13;
        r12 = r6;
        r7 = r8;
        goto L_0x0057;
    L_0x007e:
        r0 = r8 instanceof android.support.v7.view.menu.ActionMenuItemView;
        r20 = r0;
        r14 = r7 + 1;
        if (r20 == 0) goto L_0x009a;
    L_0x0086:
        r0 = r34;
        r6 = r0.mGeneratedItemPadding;
        r7 = 0;
        r0 = r34;
        r0 = r0.mGeneratedItemPadding;
        r21 = r0;
        r22 = 0;
        r0 = r21;
        r1 = r22;
        r8.setPadding(r6, r7, r0, r1);
    L_0x009a:
        r6 = r8.getLayoutParams();
        r6 = (android.support.v7.widget.ActionMenuView.LayoutParams) r6;
        r7 = 0;
        r6.expanded = r7;
        r7 = 0;
        r6.extraPixels = r7;
        r7 = 0;
        r6.cellsUsed = r7;
        r7 = 0;
        r6.expandable = r7;
        r7 = 0;
        r6.leftMargin = r7;
        r7 = 0;
        r6.rightMargin = r7;
        if (r20 == 0) goto L_0x00ff;
    L_0x00b4:
        r7 = r8;
        r7 = (android.support.v7.view.menu.ActionMenuItemView) r7;
        r7 = r7.hasText();
        if (r7 == 0) goto L_0x00ff;
    L_0x00bd:
        r7 = 1;
    L_0x00be:
        r6.preventEdgeOffset = r7;
        r7 = r6.isOverflowButton;
        if (r7 == 0) goto L_0x0101;
    L_0x00c4:
        r7 = 1;
    L_0x00c5:
        r0 = r26;
        r1 = r24;
        r2 = r19;
        r20 = measureChildForCells(r8, r0, r7, r1, r2);
        r0 = r20;
        r15 = java.lang.Math.max(r15, r0);
        r7 = r6.expandable;
        if (r7 == 0) goto L_0x0321;
    L_0x00d9:
        r7 = r10 + 1;
    L_0x00db:
        r6 = r6.isOverflowButton;
        if (r6 == 0) goto L_0x031e;
    L_0x00df:
        r6 = 1;
    L_0x00e0:
        r11 = r9 - r20;
        r8 = r8.getMeasuredHeight();
        r0 = r16;
        r10 = java.lang.Math.max(r0, r8);
        r8 = 1;
        r0 = r20;
        if (r0 != r8) goto L_0x0312;
    L_0x00f1:
        r8 = 1;
        r8 = r8 << r18;
        r8 = (long) r8;
        r8 = r8 | r12;
        r12 = r10;
        r13 = r11;
        r10 = r7;
        r11 = r6;
        r6 = r8;
        r9 = r15;
        r8 = r14;
        goto L_0x0073;
    L_0x00ff:
        r7 = 0;
        goto L_0x00be;
    L_0x0101:
        r7 = r9;
        goto L_0x00c5;
    L_0x0103:
        if (r11 == 0) goto L_0x0140;
    L_0x0105:
        r6 = 2;
        if (r7 != r6) goto L_0x0140;
    L_0x0108:
        r6 = 1;
        r8 = r6;
    L_0x010a:
        r18 = 0;
        r20 = r12;
        r19 = r9;
    L_0x0110:
        if (r10 <= 0) goto L_0x030e;
    L_0x0112:
        if (r19 <= 0) goto L_0x030e;
    L_0x0114:
        r14 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r12 = 0;
        r9 = 0;
        r6 = 0;
        r22 = r6;
    L_0x011d:
        r0 = r22;
        r1 = r27;
        if (r0 >= r1) goto L_0x0163;
    L_0x0123:
        r0 = r34;
        r1 = r22;
        r6 = r0.getChildAt(r1);
        r6 = r6.getLayoutParams();
        r6 = (android.support.v7.widget.ActionMenuView.LayoutParams) r6;
        r0 = r6.expandable;
        r28 = r0;
        if (r28 != 0) goto L_0x0143;
    L_0x0137:
        r6 = r9;
        r9 = r14;
    L_0x0139:
        r14 = r22 + 1;
        r22 = r14;
        r14 = r9;
        r9 = r6;
        goto L_0x011d;
    L_0x0140:
        r6 = 0;
        r8 = r6;
        goto L_0x010a;
    L_0x0143:
        r0 = r6.cellsUsed;
        r28 = r0;
        r0 = r28;
        if (r0 >= r14) goto L_0x0153;
    L_0x014b:
        r9 = r6.cellsUsed;
        r6 = 1;
        r6 = r6 << r22;
        r12 = (long) r6;
        r6 = 1;
        goto L_0x0139;
    L_0x0153:
        r6 = r6.cellsUsed;
        if (r6 != r14) goto L_0x030a;
    L_0x0157:
        r6 = 1;
        r6 = r6 << r22;
        r0 = (long) r6;
        r28 = r0;
        r12 = r12 | r28;
        r6 = r9 + 1;
        r9 = r14;
        goto L_0x0139;
    L_0x0163:
        r20 = r20 | r12;
        r0 = r19;
        if (r9 <= r0) goto L_0x01ee;
    L_0x0169:
        r12 = r20;
    L_0x016b:
        if (r11 != 0) goto L_0x0273;
    L_0x016d:
        r6 = 1;
        if (r7 != r6) goto L_0x0273;
    L_0x0170:
        r6 = 1;
    L_0x0171:
        if (r19 <= 0) goto L_0x02bf;
    L_0x0173:
        r8 = 0;
        r8 = (r12 > r8 ? 1 : (r12 == r8 ? 0 : -1));
        if (r8 == 0) goto L_0x02bf;
    L_0x0179:
        r7 = r7 + -1;
        r0 = r19;
        if (r0 < r7) goto L_0x0184;
    L_0x017f:
        if (r6 != 0) goto L_0x0184;
    L_0x0181:
        r7 = 1;
        if (r15 <= r7) goto L_0x02bf;
    L_0x0184:
        r7 = java.lang.Long.bitCount(r12);
        r7 = (float) r7;
        if (r6 != 0) goto L_0x0304;
    L_0x018b:
        r8 = 1;
        r8 = r8 & r12;
        r10 = 0;
        r6 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1));
        if (r6 == 0) goto L_0x01a8;
    L_0x0194:
        r6 = 0;
        r0 = r34;
        r6 = r0.getChildAt(r6);
        r6 = r6.getLayoutParams();
        r6 = (android.support.v7.widget.ActionMenuView.LayoutParams) r6;
        r6 = r6.preventEdgeOffset;
        if (r6 != 0) goto L_0x01a8;
    L_0x01a5:
        r6 = 1056964608; // 0x3f000000 float:0.5 double:5.222099017E-315;
        r7 = r7 - r6;
    L_0x01a8:
        r6 = 1;
        r8 = r27 + -1;
        r6 = r6 << r8;
        r8 = (long) r6;
        r8 = r8 & r12;
        r10 = 0;
        r6 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1));
        if (r6 == 0) goto L_0x0304;
    L_0x01b4:
        r6 = r27 + -1;
        r0 = r34;
        r6 = r0.getChildAt(r6);
        r6 = r6.getLayoutParams();
        r6 = (android.support.v7.widget.ActionMenuView.LayoutParams) r6;
        r6 = r6.preventEdgeOffset;
        if (r6 != 0) goto L_0x0304;
    L_0x01c6:
        r6 = 1056964608; // 0x3f000000 float:0.5 double:5.222099017E-315;
        r6 = r7 - r6;
    L_0x01ca:
        r7 = 0;
        r7 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1));
        if (r7 <= 0) goto L_0x0276;
    L_0x01cf:
        r7 = r19 * r26;
        r7 = (float) r7;
        r6 = r7 / r6;
        r6 = (int) r6;
        r7 = r6;
    L_0x01d6:
        r6 = 0;
        r9 = r6;
        r8 = r18;
    L_0x01da:
        r0 = r27;
        if (r9 >= r0) goto L_0x02c1;
    L_0x01de:
        r6 = 1;
        r6 = r6 << r9;
        r10 = (long) r6;
        r10 = r10 & r12;
        r14 = 0;
        r6 = (r10 > r14 ? 1 : (r10 == r14 ? 0 : -1));
        if (r6 != 0) goto L_0x027a;
    L_0x01e8:
        r6 = r8;
    L_0x01e9:
        r8 = r9 + 1;
        r9 = r8;
        r8 = r6;
        goto L_0x01da;
    L_0x01ee:
        r22 = r14 + 1;
        r6 = 0;
        r14 = r6;
        r9 = r19;
        r18 = r20;
    L_0x01f6:
        r0 = r27;
        if (r14 >= r0) goto L_0x026a;
    L_0x01fa:
        r0 = r34;
        r20 = r0.getChildAt(r14);
        r6 = r20.getLayoutParams();
        r6 = (android.support.v7.widget.ActionMenuView.LayoutParams) r6;
        r21 = 1;
        r21 = r21 << r14;
        r0 = r21;
        r0 = (long) r0;
        r28 = r0;
        r28 = r28 & r12;
        r30 = 0;
        r21 = (r28 > r30 ? 1 : (r28 == r30 ? 0 : -1));
        if (r21 != 0) goto L_0x022a;
    L_0x0217:
        r6 = r6.cellsUsed;
        r0 = r22;
        if (r6 != r0) goto L_0x0307;
    L_0x021d:
        r6 = 1;
        r6 = r6 << r14;
        r0 = (long) r6;
        r20 = r0;
        r18 = r18 | r20;
        r6 = r9;
    L_0x0225:
        r9 = r14 + 1;
        r14 = r9;
        r9 = r6;
        goto L_0x01f6;
    L_0x022a:
        if (r8 == 0) goto L_0x0257;
    L_0x022c:
        r0 = r6.preventEdgeOffset;
        r21 = r0;
        if (r21 == 0) goto L_0x0257;
    L_0x0232:
        r21 = 1;
        r0 = r21;
        if (r9 != r0) goto L_0x0257;
    L_0x0238:
        r0 = r34;
        r0 = r0.mGeneratedItemPadding;
        r21 = r0;
        r21 = r21 + r26;
        r28 = 0;
        r0 = r34;
        r0 = r0.mGeneratedItemPadding;
        r29 = r0;
        r30 = 0;
        r0 = r20;
        r1 = r21;
        r2 = r28;
        r3 = r29;
        r4 = r30;
        r0.setPadding(r1, r2, r3, r4);
    L_0x0257:
        r0 = r6.cellsUsed;
        r20 = r0;
        r20 = r20 + 1;
        r0 = r20;
        r6.cellsUsed = r0;
        r20 = 1;
        r0 = r20;
        r6.expanded = r0;
        r6 = r9 + -1;
        goto L_0x0225;
    L_0x026a:
        r6 = 1;
        r20 = r18;
        r18 = r6;
        r19 = r9;
        goto L_0x0110;
    L_0x0273:
        r6 = 0;
        goto L_0x0171;
    L_0x0276:
        r6 = 0;
        r7 = r6;
        goto L_0x01d6;
    L_0x027a:
        r0 = r34;
        r10 = r0.getChildAt(r9);
        r6 = r10.getLayoutParams();
        r6 = (android.support.v7.widget.ActionMenuView.LayoutParams) r6;
        r10 = r10 instanceof android.support.v7.view.menu.ActionMenuItemView;
        if (r10 == 0) goto L_0x029d;
    L_0x028a:
        r6.extraPixels = r7;
        r8 = 1;
        r6.expanded = r8;
        if (r9 != 0) goto L_0x029a;
    L_0x0291:
        r8 = r6.preventEdgeOffset;
        if (r8 != 0) goto L_0x029a;
    L_0x0295:
        r8 = -r7;
        r8 = r8 / 2;
        r6.leftMargin = r8;
    L_0x029a:
        r6 = 1;
        goto L_0x01e9;
    L_0x029d:
        r10 = r6.isOverflowButton;
        if (r10 == 0) goto L_0x02ae;
    L_0x02a1:
        r6.extraPixels = r7;
        r8 = 1;
        r6.expanded = r8;
        r8 = -r7;
        r8 = r8 / 2;
        r6.rightMargin = r8;
        r6 = 1;
        goto L_0x01e9;
    L_0x02ae:
        if (r9 == 0) goto L_0x02b4;
    L_0x02b0:
        r10 = r7 / 2;
        r6.leftMargin = r10;
    L_0x02b4:
        r10 = r27 + -1;
        if (r9 == r10) goto L_0x02bc;
    L_0x02b8:
        r10 = r7 / 2;
        r6.rightMargin = r10;
    L_0x02bc:
        r6 = r8;
        goto L_0x01e9;
    L_0x02bf:
        r8 = r18;
    L_0x02c1:
        if (r8 == 0) goto L_0x02f0;
    L_0x02c3:
        r6 = 0;
        r7 = r6;
    L_0x02c5:
        r0 = r27;
        if (r7 >= r0) goto L_0x02f0;
    L_0x02c9:
        r0 = r34;
        r8 = r0.getChildAt(r7);
        r6 = r8.getLayoutParams();
        r6 = (android.support.v7.widget.ActionMenuView.LayoutParams) r6;
        r9 = r6.expanded;
        if (r9 != 0) goto L_0x02dd;
    L_0x02d9:
        r6 = r7 + 1;
        r7 = r6;
        goto L_0x02c5;
    L_0x02dd:
        r9 = r6.cellsUsed;
        r9 = r9 * r26;
        r6 = r6.extraPixels;
        r6 = r6 + r9;
        r9 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r6 = android.view.View.MeasureSpec.makeMeasureSpec(r6, r9);
        r0 = r24;
        r8.measure(r6, r0);
        goto L_0x02d9;
    L_0x02f0:
        r6 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r0 = r23;
        if (r0 == r6) goto L_0x0301;
    L_0x02f6:
        r0 = r34;
        r1 = r25;
        r2 = r16;
        r0.setMeasuredDimension(r1, r2);
        goto L_0x0040;
    L_0x0301:
        r16 = r17;
        goto L_0x02f6;
    L_0x0304:
        r6 = r7;
        goto L_0x01ca;
    L_0x0307:
        r6 = r9;
        goto L_0x0225;
    L_0x030a:
        r6 = r9;
        r9 = r14;
        goto L_0x0139;
    L_0x030e:
        r12 = r20;
        goto L_0x016b;
    L_0x0312:
        r8 = r14;
        r9 = r15;
        r32 = r12;
        r12 = r10;
        r13 = r11;
        r11 = r6;
        r10 = r7;
        r6 = r32;
        goto L_0x0073;
    L_0x031e:
        r6 = r11;
        goto L_0x00e0;
    L_0x0321:
        r7 = r10;
        goto L_0x00db;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.ActionMenuView.onMeasureExactFormat(int, int):void");
    }

    /* Access modifiers changed, original: protected */
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams != null && (layoutParams instanceof LayoutParams);
    }

    public void dismissPopupMenus() {
        if (this.mPresenter != null) {
            this.mPresenter.dismissPopupMenus();
        }
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    /* Access modifiers changed, original: protected */
    public LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.gravity = 16;
        return layoutParams;
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* Access modifiers changed, original: protected */
    public LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        LayoutParams layoutParams2 = layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : new LayoutParams(layoutParams);
        if (layoutParams2.gravity > 0) {
            return layoutParams2;
        }
        layoutParams2.gravity = 16;
        return layoutParams2;
    }

    public LayoutParams generateOverflowButtonLayoutParams() {
        LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.isOverflowButton = true;
        return generateDefaultLayoutParams;
    }

    public Menu getMenu() {
        if (this.mMenu == null) {
            Context context = getContext();
            this.mMenu = new MenuBuilder(context);
            this.mMenu.setCallback(new MenuBuilderCallback());
            this.mPresenter = new ActionMenuPresenter(context);
            this.mPresenter.setReserveOverflow(true);
            this.mPresenter.setCallback(this.mActionMenuPresenterCallback != null ? this.mActionMenuPresenterCallback : new ActionMenuPresenterCallback());
            this.mMenu.addMenuPresenter(this.mPresenter, this.mPopupContext);
            this.mPresenter.setMenuView(this);
        }
        return this.mMenu;
    }

    @Nullable
    public Drawable getOverflowIcon() {
        getMenu();
        return this.mPresenter.getOverflowIcon();
    }

    public int getPopupTheme() {
        return this.mPopupTheme;
    }

    public int getWindowAnimations() {
        return 0;
    }

    /* Access modifiers changed, original: protected */
    public boolean hasSupportDividerBeforeChildAt(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof ActionMenuChildView)) {
            z = 0 | ((ActionMenuChildView) childAt).needsDividerAfter();
        }
        return (i <= 0 || !(childAt2 instanceof ActionMenuChildView)) ? z : ((ActionMenuChildView) childAt2).needsDividerBefore() | z;
    }

    public boolean hideOverflowMenu() {
        return this.mPresenter != null && this.mPresenter.hideOverflowMenu();
    }

    public void initialize(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    public boolean invokeItem(MenuItemImpl menuItemImpl) {
        return this.mMenu.performItemAction(menuItemImpl, 0);
    }

    public boolean isOverflowMenuShowPending() {
        return this.mPresenter != null && this.mPresenter.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing() {
        return this.mPresenter != null && this.mPresenter.isOverflowMenuShowing();
    }

    public boolean isOverflowReserved() {
        return this.mReserveOverflow;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mPresenter != null) {
            this.mPresenter.updateMenuView(false);
            if (this.mPresenter.isOverflowMenuShowing()) {
                this.mPresenter.hideOverflowMenu();
                this.mPresenter.showOverflowMenu();
            }
        }
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dismissPopupMenus();
    }

    /* Access modifiers changed, original: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mFormatItems) {
            int i5;
            int i6;
            LayoutParams layoutParams;
            int paddingLeft;
            int childCount = getChildCount();
            int i7 = (i4 - i2) / 2;
            int dividerWidth = getDividerWidth();
            int i8 = 0;
            int i9 = 0;
            int paddingRight = ((i3 - i) - getPaddingRight()) - getPaddingLeft();
            Object obj = null;
            boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
            int i10 = 0;
            while (i10 < childCount) {
                Object obj2;
                View childAt = getChildAt(i10);
                if (childAt.getVisibility() == 8) {
                    obj2 = obj;
                    i5 = i9;
                    i6 = paddingRight;
                    paddingRight = i8;
                } else {
                    layoutParams = (LayoutParams) childAt.getLayoutParams();
                    if (layoutParams.isOverflowButton) {
                        i6 = childAt.getMeasuredWidth();
                        if (hasSupportDividerBeforeChildAt(i10)) {
                            i6 += dividerWidth;
                        }
                        int measuredHeight = childAt.getMeasuredHeight();
                        if (isLayoutRtl) {
                            paddingLeft = layoutParams.leftMargin + getPaddingLeft();
                            i5 = paddingLeft + i6;
                        } else {
                            i5 = (getWidth() - getPaddingRight()) - layoutParams.rightMargin;
                            paddingLeft = i5 - i6;
                        }
                        int i11 = i7 - (measuredHeight / 2);
                        childAt.layout(paddingLeft, i11, i5, measuredHeight + i11);
                        i6 = paddingRight - i6;
                        obj2 = 1;
                        i5 = i9;
                        paddingRight = i8;
                    } else {
                        i5 = (childAt.getMeasuredWidth() + layoutParams.leftMargin) + layoutParams.rightMargin;
                        paddingLeft = i8 + i5;
                        i5 = paddingRight - i5;
                        if (hasSupportDividerBeforeChildAt(i10)) {
                            paddingLeft += dividerWidth;
                        }
                        Object obj3 = obj;
                        i6 = i5;
                        i5 = i9 + 1;
                        paddingRight = paddingLeft;
                        obj2 = obj3;
                    }
                }
                i10++;
                i8 = paddingRight;
                paddingRight = i6;
                i9 = i5;
                obj = obj2;
            }
            if (childCount == 1 && obj == null) {
                View childAt2 = getChildAt(0);
                i6 = childAt2.getMeasuredWidth();
                i5 = childAt2.getMeasuredHeight();
                paddingRight = ((i3 - i) / 2) - (i6 / 2);
                i9 = i7 - (i5 / 2);
                childAt2.layout(paddingRight, i9, i6 + paddingRight, i5 + i9);
                return;
            }
            paddingLeft = i9 - (obj != null ? 0 : 1);
            paddingRight = Math.max(0, paddingLeft > 0 ? paddingRight / paddingLeft : 0);
            View childAt3;
            if (isLayoutRtl) {
                i6 = getWidth() - getPaddingRight();
                i5 = 0;
                while (i5 < childCount) {
                    childAt3 = getChildAt(i5);
                    layoutParams = (LayoutParams) childAt3.getLayoutParams();
                    if (childAt3.getVisibility() == 8) {
                        paddingLeft = i6;
                    } else if (layoutParams.isOverflowButton) {
                        paddingLeft = i6;
                    } else {
                        i6 -= layoutParams.rightMargin;
                        i8 = childAt3.getMeasuredWidth();
                        i10 = childAt3.getMeasuredHeight();
                        dividerWidth = i7 - (i10 / 2);
                        childAt3.layout(i6 - i8, dividerWidth, i6, i10 + dividerWidth);
                        paddingLeft = i6 - ((layoutParams.leftMargin + i8) + paddingRight);
                    }
                    i5++;
                    i6 = paddingLeft;
                }
                return;
            }
            i6 = getPaddingLeft();
            i5 = 0;
            while (i5 < childCount) {
                childAt3 = getChildAt(i5);
                layoutParams = (LayoutParams) childAt3.getLayoutParams();
                if (childAt3.getVisibility() == 8) {
                    paddingLeft = i6;
                } else if (layoutParams.isOverflowButton) {
                    paddingLeft = i6;
                } else {
                    i6 += layoutParams.leftMargin;
                    i8 = childAt3.getMeasuredWidth();
                    i10 = childAt3.getMeasuredHeight();
                    dividerWidth = i7 - (i10 / 2);
                    childAt3.layout(i6, dividerWidth, i6 + i8, i10 + dividerWidth);
                    paddingLeft = ((layoutParams.rightMargin + i8) + paddingRight) + i6;
                }
                i5++;
                i6 = paddingLeft;
            }
            return;
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    /* Access modifiers changed, original: protected */
    public void onMeasure(int i, int i2) {
        boolean z = this.mFormatItems;
        this.mFormatItems = MeasureSpec.getMode(i) == 1073741824;
        if (z != this.mFormatItems) {
            this.mFormatItemsWidth = 0;
        }
        int size = MeasureSpec.getSize(i);
        if (!(!this.mFormatItems || this.mMenu == null || size == this.mFormatItemsWidth)) {
            this.mFormatItemsWidth = size;
            this.mMenu.onItemsChanged(true);
        }
        int childCount = getChildCount();
        if (!this.mFormatItems || childCount <= 0) {
            for (int i3 = 0; i3 < childCount; i3++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i3).getLayoutParams();
                layoutParams.rightMargin = 0;
                layoutParams.leftMargin = 0;
            }
            super.onMeasure(i, i2);
            return;
        }
        onMeasureExactFormat(i, i2);
    }

    public MenuBuilder peekMenu() {
        return this.mMenu;
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.mPresenter.setExpandedActionViewsExclusive(z);
    }

    public void setMenuCallbacks(Callback callback, MenuBuilder.Callback callback2) {
        this.mActionMenuPresenterCallback = callback;
        this.mMenuBuilderCallback = callback2;
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.mOnMenuItemClickListener = onMenuItemClickListener;
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        getMenu();
        this.mPresenter.setOverflowIcon(drawable);
    }

    public void setOverflowReserved(boolean z) {
        this.mReserveOverflow = z;
    }

    public void setPopupTheme(@StyleRes int i) {
        if (this.mPopupTheme != i) {
            this.mPopupTheme = i;
            if (i == 0) {
                this.mPopupContext = getContext();
            } else {
                this.mPopupContext = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.mPresenter = actionMenuPresenter;
        this.mPresenter.setMenuView(this);
    }

    public boolean showOverflowMenu() {
        return this.mPresenter != null && this.mPresenter.showOverflowMenu();
    }
}
