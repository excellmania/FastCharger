package com.google.android.gms.c;

import android.content.Context;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.google.android.gms.ads.internal.r;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.c.rv.a;
import com.google.android.gms.c.ts.b;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

@pa
public class ot {
    private final Object a = new Object();
    private final Context b;
    private final cm c;
    private final a d;
    private final jb e;
    private final r f;
    private OnGlobalLayoutListener g;
    private OnScrollChangedListener h;
    private su i;
    private int j = -1;
    private int k = -1;

    public ot(Context context, cm cmVar, a aVar, jb jbVar, r rVar) {
        this.b = context;
        this.c = cmVar;
        this.d = aVar;
        this.e = jbVar;
        this.f = rVar;
        this.i = new su(200);
    }

    private OnGlobalLayoutListener a(final WeakReference<tr> weakReference) {
        if (this.g == null) {
            this.g = new OnGlobalLayoutListener() {
                public void onGlobalLayout() {
                    ot.this.a(weakReference, false);
                }
            };
        }
        return this.g;
    }

    private void a(tr trVar) {
        ts l = trVar.l();
        l.a("/video", kq.n);
        l.a("/videoMeta", kq.o);
        l.a("/precache", kq.p);
        l.a("/delayPageLoaded", kq.s);
        l.a("/instrument", kq.q);
        l.a("/log", kq.i);
        l.a("/videoClicked", kq.j);
        l.a("/trackActiveViewUnit", new kr() {
            public void a(tr trVar, Map<String, String> map) {
                ot.this.f.J();
            }
        });
    }

    private void a(WeakReference<tr> weakReference, boolean z) {
        if (weakReference != null) {
            tr trVar = (tr) weakReference.get();
            if (trVar != null && trVar.b() != null) {
                if (!z || this.i.a()) {
                    int[] iArr = new int[2];
                    trVar.b().getLocationOnScreen(iArr);
                    int b = hf.a().b(this.b, iArr[0]);
                    int b2 = hf.a().b(this.b, iArr[1]);
                    synchronized (this.a) {
                        if (!(this.j == b && this.k == b2)) {
                            this.j = b;
                            this.k = b2;
                            trVar.l().a(this.j, this.k, !z);
                        }
                    }
                }
            }
        }
    }

    private OnScrollChangedListener b(final WeakReference<tr> weakReference) {
        if (this.h == null) {
            this.h = new OnScrollChangedListener() {
                public void onScrollChanged() {
                    ot.this.a(weakReference, true);
                }
            };
        }
        return this.h;
    }

    public th<tr> a(final JSONObject jSONObject) {
        final te teVar = new te();
        v.e().a(new Runnable() {
            public void run() {
                try {
                    final tr a = ot.this.a();
                    ot.this.f.a(a);
                    WeakReference weakReference = new WeakReference(a);
                    a.l().a(ot.this.a(weakReference), ot.this.b(weakReference));
                    ot.this.a(a);
                    a.l().a(new b() {
                        public void a(tr trVar) {
                            a.a("google.afma.nativeAds.renderVideo", jSONObject);
                        }
                    });
                    a.l().a(new ts.a() {
                        public void a(tr trVar, boolean z) {
                            ot.this.f.M();
                            teVar.b((Object) trVar);
                        }
                    });
                    a.loadUrl(or.a(ot.this.d, (String) is.cc.c()));
                } catch (Exception e) {
                    sz.c("Exception occurred while getting video view", e);
                    teVar.b(null);
                }
            }
        });
        return teVar;
    }

    /* Access modifiers changed, original: 0000 */
    public tr a() {
        return v.f().a(this.b, ha.a(this.b), false, false, this.c, this.d.a.k, this.e, null, this.f.g());
    }
}
