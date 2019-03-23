package com.google.android.gms.ads.b;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.google.android.gms.a.a;
import com.google.android.gms.a.b;
import com.google.android.gms.c.hf;
import com.google.android.gms.c.jy;
import com.google.android.gms.c.sz;
import com.google.android.gms.common.internal.c;

public abstract class d extends FrameLayout {
    private final FrameLayout a;
    private final jy b = a();

    public d(Context context) {
        super(context);
        this.a = b(context);
    }

    private jy a() {
        c.a(this.a, (Object) "createDelegate must be called after mOverlayFrame has been created");
        return hf.b().a(this.a.getContext(), (FrameLayout) this, this.a);
    }

    private FrameLayout b(Context context) {
        FrameLayout a = a(context);
        a.setLayoutParams(new LayoutParams(-1, -1));
        addView(a);
        return a;
    }

    /* Access modifiers changed, original: protected */
    public View a(String str) {
        try {
            a a = this.b.a(str);
            if (a != null) {
                return (View) b.a(a);
            }
        } catch (RemoteException e) {
            sz.b("Unable to call getAssetView on delegate", e);
        }
        return null;
    }

    /* Access modifiers changed, original: 0000 */
    public FrameLayout a(Context context) {
        return new FrameLayout(context);
    }

    /* Access modifiers changed, original: protected */
    public void a(String str, View view) {
        try {
            this.b.a(str, b.a((Object) view));
        } catch (RemoteException e) {
            sz.b("Unable to call setAssetView on delegate", e);
        }
    }

    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.a);
    }

    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        if (this.a != view) {
            super.bringChildToFront(this.a);
        }
    }

    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.a);
    }

    public void removeView(View view) {
        if (this.a != view) {
            super.removeView(view);
        }
    }

    public void setNativeAd(b bVar) {
        try {
            this.b.a((a) bVar.a());
        } catch (RemoteException e) {
            sz.b("Unable to call setNativeAd on delegate", e);
        }
    }
}
