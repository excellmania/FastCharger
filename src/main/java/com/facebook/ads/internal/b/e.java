package com.facebook.ads.internal.b;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.PowerManager;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Vector;

public class e {
    public static double a(View view, Context context) {
        if (!a(context) || !d(view)) {
            return 0.0d;
        }
        Rect rect = new Rect();
        if (!view.getGlobalVisibleRect(rect)) {
            return 0.0d;
        }
        Vector a = a(view);
        int a2 = a(a);
        a.add(rect);
        return (((double) (a(a) - a2)) * 1.0d) / ((double) (view.getMeasuredHeight() * view.getMeasuredWidth()));
    }

    private static int a(Vector<Rect> vector) {
        int i;
        Rect rect;
        int i2;
        int i3;
        int i4;
        int size = vector.size();
        int[] iArr = new int[(size * 2)];
        int[] iArr2 = new int[(size * 2)];
        boolean[][] zArr = (boolean[][]) Array.newInstance(Boolean.TYPE, new int[]{size * 2, size * 2});
        int i5 = 0;
        int i6 = 0;
        for (i = 0; i < size; i++) {
            rect = (Rect) vector.elementAt(i);
            i2 = i6 + 1;
            iArr[i6] = rect.left;
            i3 = i5 + 1;
            iArr2[i5] = rect.bottom;
            i6 = i2 + 1;
            iArr[i2] = rect.right;
            i5 = i3 + 1;
            iArr2[i3] = rect.top;
        }
        Arrays.sort(iArr);
        Arrays.sort(iArr2);
        for (i5 = 0; i5 < size; i5++) {
            rect = (Rect) vector.elementAt(i5);
            i = a(iArr, rect.left);
            i6 = a(iArr, rect.right);
            i2 = a(iArr2, rect.top);
            i3 = a(iArr2, rect.bottom);
            for (i++; i <= i6; i++) {
                for (i4 = i2 + 1; i4 <= i3; i4++) {
                    zArr[i][i4] = true;
                }
            }
        }
        i6 = 0;
        i4 = 0;
        while (i6 < size * 2) {
            i5 = i4;
            for (i = 0; i < size * 2; i++) {
                i5 += zArr[i6][i] ? (iArr[i6] - iArr[i6 - 1]) * (iArr2[i] - iArr2[i - 1]) : 0;
            }
            i6++;
            i4 = i5;
        }
        return i4;
    }

    private static int a(int[] iArr, int i) {
        int i2 = 0;
        int length = iArr.length;
        while (i2 < length) {
            int i3 = ((length - i2) / 2) + i2;
            if (iArr[i3] == i) {
                return i3;
            }
            if (iArr[i3] > i) {
                length = i2;
            } else {
                int i4 = length;
                length = i3 + 1;
                i3 = i4;
            }
            i2 = length;
            length = i3;
        }
        return -1;
    }

    private static Vector<Rect> a(View view) {
        Vector<Rect> vector = new Vector();
        if (!(view.getParent() instanceof ViewGroup)) {
            return vector;
        }
        View view2 = (ViewGroup) view.getParent();
        int indexOfChild = view2.indexOfChild(view);
        while (true) {
            indexOfChild++;
            if (indexOfChild < view2.getChildCount()) {
                vector.addAll(b(view2.getChildAt(indexOfChild)));
            } else {
                vector.addAll(a(view2));
                return vector;
            }
        }
    }

    private static boolean a(Context context) {
        if (context == null) {
            return true;
        }
        try {
            if (!((PowerManager) context.getSystemService("power")).isScreenOn()) {
                return false;
            }
            boolean z;
            if (context instanceof Activity) {
                Window window = ((Activity) context).getWindow();
                if (window != null) {
                    int i = window.getAttributes().flags;
                    boolean z2 = ((AccessibilityEventCompat.TYPE_WINDOWS_CHANGED & i) == 0 && (i & 524288) == 0) ? false : true;
                    z = z2;
                    return ((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode() || z;
                }
            }
            z = false;
            if (((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            }
        } catch (Exception e) {
            return false;
        }
    }

    private static Vector<Rect> b(View view) {
        Vector<Rect> vector = new Vector();
        if (!view.isShown() || (VERSION.SDK_INT >= 11 && view.getAlpha() <= 0.0f)) {
            return vector;
        }
        if ((view instanceof ViewGroup) && c(view)) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                vector.addAll(b(viewGroup.getChildAt(i)));
            }
            return vector;
        }
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect)) {
            vector.add(rect);
        }
        return vector;
    }

    private static boolean c(View view) {
        return view.getBackground() == null || (VERSION.SDK_INT >= 19 && view.getBackground().getAlpha() <= 0);
    }

    private static boolean d(View view) {
        return (view != null && view.isShown() && view.getWindowVisibility() == 0 && view.getVisibility() == 0 && view.getMeasuredWidth() > 0 && view.getMeasuredHeight() > 0) ? VERSION.SDK_INT < 11 || view.getAlpha() >= 0.9f : false;
    }
}
