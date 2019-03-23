package com.facebook.ads.internal.adapters;

import android.graphics.Color;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageView.ScaleType;
import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.h.b.c;
import com.facebook.ads.internal.h.h;
import com.facebook.ads.internal.h.p;
import com.facebook.ads.internal.util.l;
import com.facebook.ads.internal.util.m;
import java.util.List;

public class g extends Adapter<h> {
    private static final int a = Color.argb(51, 0, 0, 0);
    private final List<NativeAd> b;
    private final int c;
    private final int d;

    public g(c cVar, List<NativeAd> list) {
        float f = cVar.getContext().getResources().getDisplayMetrics().density;
        this.b = list;
        this.c = Math.round(f * 1.0f);
        this.d = cVar.getChildSpacing();
    }

    /* renamed from: a */
    public h onCreateViewHolder(ViewGroup viewGroup, int i) {
        p pVar = new p(viewGroup.getContext());
        pVar.setScaleType(ScaleType.CENTER_CROP);
        return new h(pVar);
    }

    /* renamed from: a */
    public void onBindViewHolder(final h hVar, int i) {
        MarginLayoutParams marginLayoutParams = new MarginLayoutParams(-2, -1);
        marginLayoutParams.setMargins(i == 0 ? this.d * 2 : this.d, 0, i >= this.b.size() + -1 ? this.d * 2 : this.d, 0);
        hVar.a.setBackgroundColor(0);
        hVar.a.setImageDrawable(null);
        hVar.a.setLayoutParams(marginLayoutParams);
        hVar.a.setPadding(this.c, this.c, this.c, this.c);
        NativeAd nativeAd = (NativeAd) this.b.get(i);
        nativeAd.registerViewForInteraction(hVar.a);
        if (nativeAd.getAdCoverImage() != null) {
            l lVar = new l(hVar.a);
            lVar.a(new m() {
                public void a() {
                    hVar.a.setBackgroundColor(g.a);
                }
            });
            lVar.a(r0.getUrl());
        }
    }

    public int getItemCount() {
        return this.b.size();
    }
}
