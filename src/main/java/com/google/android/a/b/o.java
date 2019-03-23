package com.google.android.a.b;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.Display.Mode;
import android.view.WindowManager;
import com.google.android.a.h.k;
import com.google.android.a.h.x;
import com.google.android.a.p;
import java.util.ArrayList;
import java.util.List;

public final class o {
    private static Point a(Context context) {
        return (x.a >= 23 || x.d == null || !x.d.startsWith("BRAVIA") || !context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) ? a(((WindowManager) context.getSystemService("window")).getDefaultDisplay()) : new Point(3840, 2160);
    }

    private static Point a(Display display) {
        Point point = new Point();
        if (x.a >= 23) {
            a(display, point);
        } else if (x.a >= 17) {
            b(display, point);
        } else if (x.a >= 16) {
            c(display, point);
        } else {
            d(display, point);
        }
        return point;
    }

    private static Point a(boolean z, int i, int i2, int i3, int i4) {
        Object obj = 1;
        if (z) {
            Object obj2 = i3 > i4 ? 1 : null;
            if (i <= i2) {
                obj = null;
            }
            if (obj2 != obj) {
                int i5 = i;
                i = i2;
                i2 = i5;
            }
        }
        return i3 * i2 >= i4 * i ? new Point(i, x.a(i * i4, i3)) : new Point(x.a(i2 * i3, i4), i2);
    }

    @TargetApi(23)
    private static void a(Display display, Point point) {
        Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
    }

    private static boolean a(i iVar, String[] strArr, boolean z) {
        if (strArr != null && !x.a((Object[]) strArr, iVar.b)) {
            return false;
        }
        if (z && (iVar.d >= 1280 || iVar.e >= 720)) {
            return false;
        }
        if (iVar.d > 0 && iVar.e > 0) {
            if (x.a >= 21) {
                String d = k.d(iVar.i);
                if ("video/x-unknown".equals(d)) {
                    d = "video/avc";
                }
                return iVar.f > 0.0f ? p.a(d, false, iVar.d, iVar.e, (double) iVar.f) : p.a(d, false, iVar.d, iVar.e);
            } else if (iVar.d * iVar.e > p.a()) {
                return false;
            }
        }
        return true;
    }

    public static int[] a(Context context, List<? extends k> list, String[] strArr, boolean z) {
        Point a = a(context);
        return a(list, strArr, z, true, a.x, a.y);
    }

    public static int[] a(List<? extends k> list, String[] strArr, boolean z, boolean z2, int i, int i2) {
        int i3 = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        List arrayList = new ArrayList();
        int size = list.size();
        int i4 = 0;
        while (i4 < size) {
            int i5;
            i a_ = ((k) list.get(i4)).a_();
            if (a(a_, strArr, z)) {
                arrayList.add(Integer.valueOf(i4));
                if (a_.d > 0 && a_.e > 0 && i > 0 && i2 > 0) {
                    Point a = a(z2, i, i2, a_.d, a_.e);
                    i5 = a_.d * a_.e;
                    if (a_.d >= ((int) (((float) a.x) * 0.98f)) && a_.e >= ((int) (((float) a.y) * 0.98f)) && i5 < i3) {
                        i4++;
                        i3 = i5;
                    }
                }
            }
            i5 = i3;
            i4++;
            i3 = i5;
        }
        if (i3 != Integer.MAX_VALUE) {
            for (i4 = arrayList.size() - 1; i4 >= 0; i4--) {
                i a_2 = ((k) list.get(((Integer) arrayList.get(i4)).intValue())).a_();
                if (a_2.d > 0 && a_2.e > 0) {
                    if (a_2.e * a_2.d > i3) {
                        arrayList.remove(i4);
                    }
                }
            }
        }
        return x.a(arrayList);
    }

    @TargetApi(17)
    private static void b(Display display, Point point) {
        display.getRealSize(point);
    }

    @TargetApi(16)
    private static void c(Display display, Point point) {
        display.getSize(point);
    }

    private static void d(Display display, Point point) {
        point.x = display.getWidth();
        point.y = display.getHeight();
    }
}
