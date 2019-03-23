package com.google.android.gms.c;

import android.content.Context;
import android.support.annotation.Nullable;
import android.view.View;
import com.google.android.gms.c.fm.a;
import com.google.android.gms.c.fm.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.WeakHashMap;

@pa
public class fl implements fn {
    private final Object a = new Object();
    private final WeakHashMap<rv, fm> b = new WeakHashMap();
    private final ArrayList<fm> c = new ArrayList();
    private final Context d;
    private final tc e;
    private final lw f;

    public fl(Context context, tc tcVar, lw lwVar) {
        this.d = context.getApplicationContext();
        this.e = tcVar;
        this.f = lwVar;
    }

    public void a(fm fmVar) {
        synchronized (this.a) {
            if (!fmVar.f()) {
                this.c.remove(fmVar);
                Iterator it = this.b.entrySet().iterator();
                while (it.hasNext()) {
                    if (((Entry) it.next()).getValue() == fmVar) {
                        it.remove();
                    }
                }
            }
        }
    }

    public void a(ha haVar, rv rvVar) {
        a(haVar, rvVar, rvVar.b.b());
    }

    public void a(ha haVar, rv rvVar, View view) {
        a(haVar, rvVar, new d(view, rvVar), null);
    }

    public void a(ha haVar, rv rvVar, View view, lx lxVar) {
        a(haVar, rvVar, new d(view, rvVar), lxVar);
    }

    public void a(ha haVar, rv rvVar, ft ftVar, @Nullable lx lxVar) {
        synchronized (this.a) {
            fm fmVar;
            if (a(rvVar)) {
                fmVar = (fm) this.b.get(rvVar);
            } else {
                fmVar = new fm(this.d, haVar, rvVar, this.e, ftVar);
                fmVar.a((fn) this);
                this.b.put(rvVar, fmVar);
                this.c.add(fmVar);
            }
            if (lxVar != null) {
                fmVar.a(new fo(fmVar, lxVar));
            } else {
                fmVar.a(new fp(fmVar, this.f));
            }
        }
    }

    public void a(ha haVar, rv rvVar, jq jqVar) {
        a(haVar, rvVar, new a(jqVar), null);
    }

    public boolean a(rv rvVar) {
        boolean z;
        synchronized (this.a) {
            fm fmVar = (fm) this.b.get(rvVar);
            z = fmVar != null && fmVar.f();
        }
        return z;
    }

    public void b(rv rvVar) {
        synchronized (this.a) {
            fm fmVar = (fm) this.b.get(rvVar);
            if (fmVar != null) {
                fmVar.d();
            }
        }
    }

    public void c(rv rvVar) {
        synchronized (this.a) {
            fm fmVar = (fm) this.b.get(rvVar);
            if (fmVar != null) {
                fmVar.o();
            }
        }
    }

    public void d(rv rvVar) {
        synchronized (this.a) {
            fm fmVar = (fm) this.b.get(rvVar);
            if (fmVar != null) {
                fmVar.p();
            }
        }
    }

    public void e(rv rvVar) {
        synchronized (this.a) {
            fm fmVar = (fm) this.b.get(rvVar);
            if (fmVar != null) {
                fmVar.q();
            }
        }
    }
}
