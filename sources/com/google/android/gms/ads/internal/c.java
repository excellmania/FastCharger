package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import com.google.android.gms.c.ha;
import com.google.android.gms.c.is;
import com.google.android.gms.c.jb;
import com.google.android.gms.c.jc;
import com.google.android.gms.c.jf;
import com.google.android.gms.c.kr;
import com.google.android.gms.c.lx;
import com.google.android.gms.c.mo;
import com.google.android.gms.c.nm;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.rp;
import com.google.android.gms.c.rv;
import com.google.android.gms.c.rv.a;
import com.google.android.gms.c.sj;
import com.google.android.gms.c.sz;
import com.google.android.gms.c.tc;
import com.google.android.gms.c.tr;
import java.util.Map;

@pa
public abstract class c extends b implements h, nm {
    public c(Context context, ha haVar, String str, mo moVar, tc tcVar, d dVar) {
        super(context, haVar, str, moVar, tcVar, dVar);
    }

    public void J() {
        e();
    }

    public void K() {
        E();
        m();
    }

    public void L() {
        s();
    }

    /* Access modifiers changed, original: protected */
    public tr a(a aVar, @Nullable e eVar, @Nullable rp rpVar) {
        tr trVar = null;
        View nextView = this.f.f.getNextView();
        if (nextView instanceof tr) {
            trVar = (tr) nextView;
            if (((Boolean) is.ax.c()).booleanValue()) {
                sz.b("Reusing webview...");
                trVar.a(this.f.c, this.f.i, this.a);
            } else {
                trVar.destroy();
                trVar = null;
            }
        }
        if (trVar == null) {
            if (nextView != null) {
                this.f.f.removeView(nextView);
            }
            trVar = v.f().a(this.f.c, this.f.i, false, false, this.f.d, this.f.e, this.a, this, this.i);
            if (this.f.i.h == null) {
                a(trVar.b());
            }
        }
        lx lxVar = trVar;
        lxVar.l().a(this, this, this, this, false, this, null, eVar, this, rpVar);
        a(lxVar);
        lxVar.b(aVar.a.w);
        return lxVar;
    }

    public void a(int i, int i2, int i3, int i4) {
        u();
    }

    public void a(jf jfVar) {
        com.google.android.gms.common.internal.c.b("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.f.y = jfVar;
    }

    /* Access modifiers changed, original: protected */
    public void a(lx lxVar) {
        lxVar.a("/trackActiveViewUnit", new kr() {
            public void a(tr trVar, Map<String, String> map) {
                if (c.this.f.j != null) {
                    c.this.h.a(c.this.f.i, c.this.f.j, trVar.b(), (lx) trVar);
                } else {
                    sz.e("Request to enable ActiveView before adState is available.");
                }
            }
        });
    }

    /* Access modifiers changed, original: protected */
    public void a(final a aVar, final jb jbVar) {
        if (aVar.e != -2) {
            sj.a.post(new Runnable() {
                public void run() {
                    c.this.b(new rv(aVar, null, null, null, null, null, null, null));
                }
            });
            return;
        }
        if (aVar.d != null) {
            this.f.i = aVar.d;
        }
        if (!aVar.b.h || aVar.b.B) {
            sj.a.post(new Runnable(null) {
                public void run() {
                    if (aVar.b.s && c.this.f.y != null) {
                        String str = null;
                        if (aVar.b.b != null) {
                            str = v.e().a(aVar.b.b);
                        }
                        jc jcVar = new jc(c.this, str, aVar.b.c);
                        c.this.f.E = 1;
                        try {
                            c.this.d = false;
                            c.this.f.y.a(jcVar);
                            return;
                        } catch (RemoteException e) {
                            sz.c("Could not call the onCustomRenderedAdLoadedListener.", e);
                            c.this.d = true;
                        }
                    }
                    final e eVar = new e(c.this.f.c, aVar);
                    tr a = c.this.a(aVar, eVar, null);
                    a.setOnTouchListener(new OnTouchListener(this) {
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            eVar.a();
                            return false;
                        }
                    });
                    a.setOnClickListener(new OnClickListener(this) {
                        public void onClick(View view) {
                            eVar.a();
                        }
                    });
                    c.this.f.E = 0;
                    c.this.f.h = v.d().a(c.this.f.c, c.this, aVar, c.this.f.d, a, c.this.j, c.this, jbVar);
                }
            });
            return;
        }
        this.f.E = 0;
        this.f.h = v.d().a(this.f.c, this, aVar, this.f.d, null, this.j, this, jbVar);
    }

    /* Access modifiers changed, original: protected */
    public boolean a(@Nullable rv rvVar, rv rvVar2) {
        if (this.f.e() && this.f.f != null) {
            this.f.f.a().b(rvVar2.C);
        }
        return super.a(rvVar, rvVar2);
    }

    public void b(View view) {
        this.f.D = view;
        b(new rv(this.f.k, null, null, null, null, null, null, null));
    }
}
