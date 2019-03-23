package com.facebook.ads.internal.util;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.facebook.ads.internal.b.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class w {
    @NonNull
    private final Context a;
    @NonNull
    private final g b;
    @NonNull
    private final a c;
    @NonNull
    private final String d;
    @NonNull
    private final com.facebook.ads.internal.b.a e;
    private int f = 0;
    private int g = 0;
    private int h = 0;
    private float i = 0.0f;
    private float j = 1.0f;
    private float k = 0.0f;

    public interface a {
        boolean a();

        boolean b();

        boolean c();

        boolean getGlobalVisibleRect(Rect rect);

        long getInitialBufferTime();

        int getMeasuredHeight();

        int getMeasuredWidth();
    }

    protected enum b {
        PLAY(0),
        SKIP(1),
        TIME(2),
        MRC(3);
        
        public final int e;

        private b(int i) {
            this.e = i;
        }
    }

    public w(@NonNull Context context, @NonNull g gVar, @NonNull a aVar, @NonNull String str) {
        this.a = context;
        this.b = gVar;
        this.c = aVar;
        this.d = str;
        ArrayList arrayList = new ArrayList();
        final g gVar2 = gVar;
        arrayList.add(new com.facebook.ads.internal.b.b(0.5d, -1.0d, 2.0d, true) {
            /* Access modifiers changed, original: protected */
            public void a(boolean z, boolean z2, @NonNull c cVar) {
                if (w.this.a(b.MRC) != null) {
                    gVar2.a(w.this.a(b.MRC), w.this.a());
                }
            }
        });
        this.e = new com.facebook.ads.internal.b.a(context, (View) aVar, arrayList);
    }

    private Map<String, String> a() {
        Map hashMap = new HashMap();
        x.a(hashMap, this.c.a(), !this.c.c());
        a(hashMap);
        b(hashMap);
        c(hashMap);
        d(hashMap);
        e(hashMap);
        return hashMap;
    }

    private void a(int i, boolean z) {
        if (((double) i) > 0.0d) {
            this.e.a((double) (((float) (i - this.f)) / 1000.0f));
            float a = x.a(this.a);
            if (a >= 0.0f) {
                this.i += a;
                if (this.j < 0.0f || a < this.j) {
                    this.j = a;
                }
                if (this.k < 0.0f || a > this.k) {
                    this.k = a;
                }
            }
            this.h++;
            this.f = i;
            if (i - this.g >= 5000) {
                if (a(b.TIME) != null) {
                    this.b.a(a(b.TIME), a());
                }
                this.g += 5000;
                this.h = 0;
                this.i = 0.0f;
                this.j = a;
                this.k = a;
                this.e.a();
            }
            if (z && a(b.TIME) != null) {
                Map a2 = a();
                a2.put("time", String.valueOf(((double) i) / 1000.0d));
                this.b.a(a(b.TIME), a2);
            }
        }
    }

    private void a(Map<String, String> map) {
        map.put("exoplayer", String.valueOf(this.c.b()));
        map.put("prep", Long.toString(this.c.getInitialBufferTime()));
    }

    private void b(Map<String, String> map) {
        c b = this.e.b();
        map.put("vwa", String.valueOf(b.a()));
        map.put("vwm", String.valueOf(b.c()));
    }

    private void c(Map<String, String> map) {
        map.put("ptime", String.valueOf(((float) this.g) / 1000.0f));
        map.put("time", String.valueOf(((float) (this.g + 5000)) / 1000.0f));
    }

    private void d(Map<String, String> map) {
        if (this.c.c()) {
            map.put("vlm", String.valueOf(this.j));
            map.put("vlmax", String.valueOf(this.k));
            map.put("vla", String.valueOf(this.i / ((float) this.h)));
            return;
        }
        map.put("vlm", String.valueOf(0));
        map.put("vlmax", String.valueOf(0));
        map.put("vla", String.valueOf(0));
    }

    private void e(Map<String, String> map) {
        Rect rect = new Rect();
        this.c.getGlobalVisibleRect(rect);
        map.put("pt", String.valueOf(rect.top));
        map.put("pl", String.valueOf(rect.left));
        map.put("ph", String.valueOf(this.c.getMeasuredHeight()));
        map.put("pw", String.valueOf(this.c.getMeasuredWidth()));
        WindowManager windowManager = (WindowManager) this.a.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        map.put("vph", String.valueOf(displayMetrics.heightPixels));
        map.put("vpw", String.valueOf(displayMetrics.widthPixels));
    }

    /* Access modifiers changed, original: protected */
    public String a(b bVar) {
        return this.d + "&action=" + bVar.e;
    }

    public void a(int i) {
        a(i, false);
    }

    public void b(int i) {
        a(i, true);
    }
}
