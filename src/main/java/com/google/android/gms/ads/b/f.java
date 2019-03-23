package com.google.android.gms.ads.b;

import android.content.Context;
import android.view.View;
import com.google.android.gms.c.sz;

public final class f extends d {
    public f(Context context) {
        super(context);
    }

    public final View getBodyView() {
        return super.a("2004");
    }

    public final View getCallToActionView() {
        return super.a("2002");
    }

    public final View getHeadlineView() {
        return super.a("2001");
    }

    public final View getIconView() {
        return super.a("2003");
    }

    public final View getImageView() {
        return super.a("2007");
    }

    public final a getMediaView() {
        View a = super.a("2011");
        if (a instanceof a) {
            return (a) a;
        }
        if (a != null) {
            sz.b("View is not an instance of MediaView");
        }
        return null;
    }

    public final View getPriceView() {
        return super.a("2006");
    }

    public final View getStarRatingView() {
        return super.a("2008");
    }

    public final View getStoreView() {
        return super.a("2005");
    }

    public final void setBodyView(View view) {
        super.a("2004", view);
    }

    public final void setCallToActionView(View view) {
        super.a("2002", view);
    }

    public final void setHeadlineView(View view) {
        super.a("2001", view);
    }

    public final void setIconView(View view) {
        super.a("2003", view);
    }

    public final void setImageView(View view) {
        super.a("2007", view);
    }

    public final void setMediaView(a aVar) {
        super.a("2011", aVar);
    }

    public final void setPriceView(View view) {
        super.a("2006", view);
    }

    public final void setStarRatingView(View view) {
        super.a("2008", view);
    }

    public final void setStoreView(View view) {
        super.a("2005", view);
    }
}
