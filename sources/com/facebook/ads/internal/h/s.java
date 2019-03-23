package com.facebook.ads.internal.h;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

public class s extends View {
    private r a;

    public s(Context context, r rVar) {
        super(context);
        this.a = rVar;
        setLayoutParams(new LayoutParams(0, 0));
    }

    public void onWindowVisibilityChanged(int i) {
        if (this.a != null) {
            this.a.a(i);
        }
    }
}
