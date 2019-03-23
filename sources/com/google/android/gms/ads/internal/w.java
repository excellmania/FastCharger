package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.ViewSwitcher;
import com.google.android.gms.ads.internal.purchase.k;
import com.google.android.gms.c.cm;
import com.google.android.gms.c.ha;
import com.google.android.gms.c.hf;
import com.google.android.gms.c.hi;
import com.google.android.gms.c.hj;
import com.google.android.gms.c.hp;
import com.google.android.gms.c.hr;
import com.google.android.gms.c.ii;
import com.google.android.gms.c.is;
import com.google.android.gms.c.jf;
import com.google.android.gms.c.js;
import com.google.android.gms.c.kf;
import com.google.android.gms.c.kg;
import com.google.android.gms.c.kh;
import com.google.android.gms.c.ki;
import com.google.android.gms.c.nw;
import com.google.android.gms.c.ob;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.qt;
import com.google.android.gms.c.rv;
import com.google.android.gms.c.rw;
import com.google.android.gms.c.sc;
import com.google.android.gms.c.se;
import com.google.android.gms.c.sf;
import com.google.android.gms.c.sl;
import com.google.android.gms.c.sm;
import com.google.android.gms.c.su;
import com.google.android.gms.c.sx;
import com.google.android.gms.c.sz;
import com.google.android.gms.c.tc;
import com.google.android.gms.c.tr;
import com.google.android.gms.c.ts;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;

@pa
public final class w implements OnGlobalLayoutListener, OnScrollChangedListener {
    @Nullable
    List<String> A;
    @Nullable
    k B;
    @Nullable
    public sc C;
    @Nullable
    View D;
    public int E;
    boolean F;
    boolean G;
    private HashSet<rw> H;
    private int I;
    private int J;
    private su K;
    private boolean L;
    private boolean M;
    private boolean N;
    final String a;
    public String b;
    public final Context c;
    final cm d;
    public final tc e;
    @Nullable
    a f;
    @Nullable
    public se g;
    @Nullable
    public sl h;
    public ha i;
    @Nullable
    public rv j;
    public com.google.android.gms.c.rv.a k;
    @Nullable
    public rw l;
    @Nullable
    hi m;
    @Nullable
    hj n;
    @Nullable
    hp o;
    @Nullable
    hr p;
    @Nullable
    nw q;
    @Nullable
    ob r;
    @Nullable
    kf s;
    @Nullable
    kg t;
    SimpleArrayMap<String, kh> u;
    SimpleArrayMap<String, ki> v;
    js w;
    @Nullable
    ii x;
    @Nullable
    jf y;
    @Nullable
    qt z;

    public static class a extends ViewSwitcher {
        private final sm a;
        @Nullable
        private final sx b;
        private boolean c = true;

        public a(Context context, String str, OnGlobalLayoutListener onGlobalLayoutListener, OnScrollChangedListener onScrollChangedListener) {
            super(context);
            this.a = new sm(context);
            this.a.a(str);
            if (context instanceof Activity) {
                this.b = new sx((Activity) context, this, onGlobalLayoutListener, onScrollChangedListener);
            } else {
                this.b = new sx(null, this, onGlobalLayoutListener, onScrollChangedListener);
            }
            this.b.a();
        }

        public sm a() {
            return this.a;
        }

        public void b() {
            sf.a("Disable position monitoring on adFrame.");
            if (this.b != null) {
                this.b.b();
            }
        }

        public void c() {
            sf.a("Enable debug gesture detector on adFrame.");
            this.c = true;
        }

        public void d() {
            sf.a("Disable debug gesture detector on adFrame.");
            this.c = false;
        }

        /* Access modifiers changed, original: protected */
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.b != null) {
                this.b.c();
            }
        }

        /* Access modifiers changed, original: protected */
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.b != null) {
                this.b.d();
            }
        }

        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (this.c) {
                this.a.a(motionEvent);
            }
            return false;
        }

        public void removeAllViews() {
            ArrayList<tr> arrayList = new ArrayList();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= getChildCount()) {
                    break;
                }
                View childAt = getChildAt(i2);
                if (childAt != null && (childAt instanceof tr)) {
                    arrayList.add((tr) childAt);
                }
                i = i2 + 1;
            }
            super.removeAllViews();
            for (tr destroy : arrayList) {
                destroy.destroy();
            }
        }
    }

    public w(Context context, ha haVar, String str, tc tcVar) {
        this(context, haVar, str, tcVar, null);
    }

    w(Context context, ha haVar, String str, tc tcVar, cm cmVar) {
        this.C = null;
        this.D = null;
        this.E = 0;
        this.F = false;
        this.G = false;
        this.H = null;
        this.I = -1;
        this.J = -1;
        this.L = true;
        this.M = true;
        this.N = false;
        is.a(context);
        if (v.i().f() != null) {
            List b = is.b();
            if (tcVar.c != 0) {
                b.add(Integer.toString(tcVar.c));
            }
            v.i().f().a(b);
        }
        this.a = UUID.randomUUID().toString();
        if (haVar.e || haVar.i) {
            this.f = null;
        } else {
            this.f = new a(context, str, this, this);
            this.f.setMinimumWidth(haVar.g);
            this.f.setMinimumHeight(haVar.d);
            this.f.setVisibility(4);
        }
        this.i = haVar;
        this.b = str;
        this.c = context;
        this.e = tcVar;
        if (cmVar == null) {
            cmVar = new cm(new i(this));
        }
        this.d = cmVar;
        this.K = new su(200);
        this.v = new SimpleArrayMap();
    }

    private void b(boolean z) {
        boolean z2 = true;
        if (this.f != null && this.j != null && this.j.b != null && this.j.b.l() != null) {
            if (!z || this.K.a()) {
                if (this.j.b.l().b()) {
                    int[] iArr = new int[2];
                    this.f.getLocationOnScreen(iArr);
                    int b = hf.a().b(this.c, iArr[0]);
                    int b2 = hf.a().b(this.c, iArr[1]);
                    if (!(b == this.I && b2 == this.J)) {
                        this.I = b;
                        this.J = b2;
                        ts l = this.j.b.l();
                        b = this.I;
                        int i = this.J;
                        if (z) {
                            z2 = false;
                        }
                        l.a(b, i, z2);
                    }
                }
                k();
            }
        }
    }

    private void k() {
        if (this.f != null) {
            View findViewById = this.f.getRootView().findViewById(16908290);
            if (findViewById != null) {
                Rect rect = new Rect();
                Rect rect2 = new Rect();
                this.f.getGlobalVisibleRect(rect);
                findViewById.getGlobalVisibleRect(rect2);
                if (rect.top != rect2.top) {
                    this.L = false;
                }
                if (rect.bottom != rect2.bottom) {
                    this.M = false;
                }
            }
        }
    }

    public HashSet<rw> a() {
        return this.H;
    }

    public void a(HashSet<rw> hashSet) {
        this.H = hashSet;
    }

    public void a(boolean z) {
        if (this.E == 0) {
            c();
        }
        if (this.g != null) {
            this.g.d();
        }
        if (this.h != null) {
            this.h.d();
        }
        if (z) {
            this.j = null;
        }
    }

    public void b() {
        if (this.j != null && this.j.b != null) {
            this.j.b.destroy();
        }
    }

    public void c() {
        if (this.j != null && this.j.b != null) {
            this.j.b.stopLoading();
        }
    }

    public void d() {
        if (this.j != null && this.j.p != null) {
            try {
                this.j.p.c();
            } catch (RemoteException e) {
                sz.e("Could not destroy mediation adapter.");
            }
        }
    }

    public boolean e() {
        return this.E == 0;
    }

    public boolean f() {
        return this.E == 1;
    }

    public void g() {
        if (this.f != null) {
            this.f.b();
        }
    }

    public String h() {
        return (this.L && this.M) ? "" : this.L ? this.N ? "top-scrollable" : "top-locked" : this.M ? this.N ? "bottom-scrollable" : "bottom-locked" : "";
    }

    public void i() {
        if (this.l != null) {
            if (this.j != null) {
                this.l.a(this.j.A);
                this.l.b(this.j.B);
                this.l.b(this.j.n);
            }
            this.l.a(this.i.e);
        }
    }

    public void j() {
        g();
        this.n = null;
        this.o = null;
        this.r = null;
        this.q = null;
        this.y = null;
        this.p = null;
        a(false);
        if (this.f != null) {
            this.f.removeAllViews();
        }
        b();
        d();
        this.j = null;
    }

    public void onGlobalLayout() {
        b(false);
    }

    public void onScrollChanged() {
        b(true);
        this.N = true;
    }
}
