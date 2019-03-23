package com.google.android.gms.c;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.google.android.gms.c.rv.a;

@TargetApi(19)
@pa
public class oo extends om {
    private Object g = new Object();
    private PopupWindow h;
    private boolean i = false;

    oo(Context context, a aVar, tr trVar, ol.a aVar2) {
        super(context, aVar, trVar, aVar2);
    }

    private void g() {
        synchronized (this.g) {
            this.i = true;
            if ((this.b instanceof Activity) && ((Activity) this.b).isDestroyed()) {
                this.h = null;
            }
            if (this.h != null) {
                if (this.h.isShowing()) {
                    this.h.dismiss();
                }
                this.h = null;
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(int i) {
        g();
        super.a(i);
    }

    public void d() {
        g();
        super.d();
    }

    /* Access modifiers changed, original: protected */
    public void f() {
        Window window = this.b instanceof Activity ? ((Activity) this.b).getWindow() : null;
        if (window != null && window.getDecorView() != null && !((Activity) this.b).isDestroyed()) {
            FrameLayout frameLayout = new FrameLayout(this.b);
            frameLayout.setLayoutParams(new LayoutParams(-1, -1));
            frameLayout.addView(this.c.b(), -1, -1);
            synchronized (this.g) {
                if (this.i) {
                    return;
                }
                this.h = new PopupWindow(frameLayout, 1, 1, false);
                this.h.setOutsideTouchable(true);
                this.h.setClippingEnabled(false);
                sz.b("Displaying the 1x1 popup off the screen.");
                try {
                    this.h.showAtLocation(window.getDecorView(), 0, -1, -1);
                } catch (Exception e) {
                    this.h = null;
                }
            }
        }
    }
}
