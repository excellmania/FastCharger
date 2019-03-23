package com.google.android.gms.ads.internal;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.google.android.gms.ads.d;
import com.google.android.gms.c.fr;
import com.google.android.gms.c.gv;
import com.google.android.gms.c.ha;
import com.google.android.gms.c.hf;
import com.google.android.gms.c.hu;
import com.google.android.gms.c.is;
import com.google.android.gms.c.mo;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.rp;
import com.google.android.gms.c.rv;
import com.google.android.gms.c.sj;
import com.google.android.gms.c.sz;
import com.google.android.gms.c.tc;
import com.google.android.gms.c.tr;
import com.google.android.gms.c.ts;
import com.google.android.gms.c.ts.c;
import com.google.android.gms.c.ts.e;
import com.google.android.gms.c.tw;
import com.google.android.gms.common.util.k;
import java.util.List;

@pa
public class f extends c implements OnGlobalLayoutListener, OnScrollChangedListener {
    private boolean l;

    public class a {
        public void a() {
            f.this.e();
        }
    }

    public f(Context context, ha haVar, String str, mo moVar, tc tcVar, d dVar) {
        super(context, haVar, str, moVar, tcVar, dVar);
    }

    private ha b(com.google.android.gms.c.rv.a aVar) {
        if (aVar.b.A) {
            return this.f.i;
        }
        d dVar;
        String str = aVar.b.m;
        if (str != null) {
            String[] split = str.split("[xX]");
            split[0] = split[0].trim();
            split[1] = split[1].trim();
            dVar = new d(Integer.parseInt(split[0]), Integer.parseInt(split[1]));
        } else {
            dVar = this.f.i.b();
        }
        return new ha(this.f.c, dVar);
    }

    private boolean b(@Nullable rv rvVar, rv rvVar2) {
        if (rvVar2.n) {
            View a = o.a(rvVar2);
            if (a == null) {
                sz.e("Could not get mediation view");
                return false;
            }
            View nextView = this.f.f.getNextView();
            if (nextView != null) {
                if (nextView instanceof tr) {
                    ((tr) nextView).destroy();
                }
                this.f.f.removeView(nextView);
            }
            if (!o.b(rvVar2)) {
                try {
                    a(a);
                } catch (Throwable th) {
                    sz.c("Could not add mediation view to view hierarchy.", th);
                    return false;
                }
            }
        } else if (!(rvVar2.v == null || rvVar2.b == null)) {
            rvVar2.b.a(rvVar2.v);
            this.f.f.removeAllViews();
            this.f.f.setMinimumWidth(rvVar2.v.g);
            this.f.f.setMinimumHeight(rvVar2.v.d);
            a(rvVar2.b.b());
        }
        if (this.f.f.getChildCount() > 1) {
            this.f.f.showNext();
        }
        if (rvVar != null) {
            View nextView2 = this.f.f.getNextView();
            if (nextView2 instanceof tr) {
                ((tr) nextView2).a(this.f.c, this.f.i, this.a);
            } else if (nextView2 != null) {
                this.f.f.removeView(nextView2);
            }
            this.f.d();
        }
        this.f.f.setVisibility(0);
        return true;
    }

    private void e(final rv rvVar) {
        if (!k.c()) {
            return;
        }
        if (this.f.e()) {
            if (rvVar.b != null) {
                if (rvVar.j != null) {
                    this.h.a(this.f.i, rvVar);
                }
                if (rvVar.a()) {
                    new fr(this.f.c, rvVar.b.b()).a(rvVar.b);
                } else {
                    rvVar.b.l().a(new c() {
                        public void a() {
                            new fr(f.this.f.c, rvVar.b.b()).a(rvVar.b);
                        }
                    });
                }
            }
        } else if (this.f.D != null && rvVar.j != null) {
            this.h.a(this.f.i, rvVar, this.f.D);
        }
    }

    public void G() {
        throw new IllegalStateException("Interstitial is NOT supported by BannerAdManager.");
    }

    /* Access modifiers changed, original: protected */
    public tr a(com.google.android.gms.c.rv.a aVar, @Nullable e eVar, @Nullable rp rpVar) {
        if (this.f.i.h == null && this.f.i.j) {
            this.f.i = b(aVar);
        }
        return super.a(aVar, eVar, rpVar);
    }

    /* Access modifiers changed, original: protected */
    public void a(@Nullable rv rvVar, boolean z) {
        super.a(rvVar, z);
        if (o.b(rvVar)) {
            o.a(rvVar, new a());
        }
    }

    public void a(boolean z) {
        com.google.android.gms.common.internal.c.b("setManualImpressionsEnabled must be called from the main thread.");
        this.l = z;
    }

    public boolean a(gv gvVar) {
        return super.a(d(gvVar));
    }

    public boolean a(@Nullable rv rvVar, final rv rvVar2) {
        if (!super.a(rvVar, rvVar2)) {
            return false;
        }
        if (!this.f.e() || b(rvVar, rvVar2)) {
            tw z;
            if (rvVar2.k) {
                d(rvVar2);
                v.C().a(this.f.f, (OnGlobalLayoutListener) this);
                v.C().a(this.f.f, (OnScrollChangedListener) this);
                if (!rvVar2.m) {
                    final AnonymousClass1 anonymousClass1 = new Runnable() {
                        public void run() {
                            f.this.d(f.this.f.j);
                        }
                    };
                    ts l = rvVar2.b != null ? rvVar2.b.l() : null;
                    if (l != null) {
                        l.a(new e(this) {
                            public void a() {
                                if (!rvVar2.m) {
                                    v.e();
                                    sj.b(anonymousClass1);
                                }
                            }
                        });
                    }
                }
            } else if (!this.f.f() || ((Boolean) is.ca.c()).booleanValue()) {
                a(rvVar2, false);
            }
            if (rvVar2.b != null) {
                z = rvVar2.b.z();
                ts l2 = rvVar2.b.l();
                if (l2 != null) {
                    l2.h();
                }
            } else {
                z = null;
            }
            if (!(this.f.x == null || z == null)) {
                z.b(this.f.x.b);
            }
            e(rvVar2);
            return true;
        }
        a(0);
        return false;
    }

    /* Access modifiers changed, original: 0000 */
    public gv d(gv gvVar) {
        if (gvVar.h == this.l) {
            return gvVar;
        }
        int i = gvVar.a;
        long j = gvVar.b;
        Bundle bundle = gvVar.c;
        int i2 = gvVar.d;
        List list = gvVar.e;
        boolean z = gvVar.f;
        int i3 = gvVar.g;
        boolean z2 = gvVar.h || this.l;
        return new gv(i, j, bundle, i2, list, z, i3, z2, gvVar.i, gvVar.j, gvVar.k, gvVar.l, gvVar.m, gvVar.n, gvVar.o, gvVar.p, gvVar.q, gvVar.r);
    }

    /* Access modifiers changed, original: 0000 */
    public void d(@Nullable rv rvVar) {
        if (rvVar != null && !rvVar.m && this.f.f != null && v.e().a(this.f.f, this.f.c) && this.f.f.getGlobalVisibleRect(new Rect(), null)) {
            if (!(rvVar == null || rvVar.b == null || rvVar.b.l() == null)) {
                rvVar.b.l().a(null);
            }
            a(rvVar, false);
            rvVar.m = true;
        }
    }

    public void onGlobalLayout() {
        d(this.f.j);
    }

    public void onScrollChanged() {
        d(this.f.j);
    }

    @Nullable
    public hu r() {
        com.google.android.gms.common.internal.c.b("getVideoController must be called from the main thread.");
        return (this.f.j == null || this.f.j.b == null) ? null : this.f.j.b.z();
    }

    /* Access modifiers changed, original: protected */
    public boolean x() {
        boolean z = true;
        if (!v.e().a(this.f.c.getPackageManager(), this.f.c.getPackageName(), "android.permission.INTERNET")) {
            hf.a().a(this.f.f, this.f.i, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
            z = false;
        }
        if (!v.e().a(this.f.c)) {
            hf.a().a(this.f.f, this.f.i, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
            z = false;
        }
        if (!(z || this.f.f == null)) {
            this.f.f.setVisibility(0);
        }
        return z;
    }
}
