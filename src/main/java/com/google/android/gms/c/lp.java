package com.google.android.gms.c;

import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.l;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.common.internal.c;
import java.util.Iterator;
import java.util.LinkedList;

@pa
class lp {
    private final LinkedList<a> a = new LinkedList();
    private gv b;
    private final String c;
    private final int d;
    private boolean e;

    class a {
        l a;
        @Nullable
        gv b;
        ll c;
        long d;
        boolean e;
        boolean f;

        a(lk lkVar) {
            this.a = lkVar.b(lp.this.c);
            this.c = new ll();
            this.c.a(this.a);
        }

        a(lp lpVar, lk lkVar, gv gvVar) {
            this(lkVar);
            this.b = gvVar;
        }

        /* Access modifiers changed, original: 0000 */
        public void a() {
            if (!this.e) {
                this.f = this.a.a(ln.b(this.b != null ? this.b : lp.this.b));
                this.e = true;
                this.d = v.k().a();
            }
        }
    }

    lp(gv gvVar, String str, int i) {
        c.a((Object) gvVar);
        c.a((Object) str);
        this.b = gvVar;
        this.c = str;
        this.d = i;
    }

    /* Access modifiers changed, original: 0000 */
    public gv a() {
        return this.b;
    }

    /* Access modifiers changed, original: 0000 */
    public a a(@Nullable gv gvVar) {
        if (gvVar != null) {
            this.b = gvVar;
        }
        return (a) this.a.remove();
    }

    /* Access modifiers changed, original: 0000 */
    public void a(lk lkVar) {
        a aVar = new a(lkVar);
        this.a.add(aVar);
        aVar.a();
    }

    /* Access modifiers changed, original: 0000 */
    public void a(lk lkVar, gv gvVar) {
        this.a.add(new a(this, lkVar, gvVar));
    }

    /* Access modifiers changed, original: 0000 */
    public int b() {
        return this.d;
    }

    /* Access modifiers changed, original: 0000 */
    public String c() {
        return this.c;
    }

    /* Access modifiers changed, original: 0000 */
    public int d() {
        return this.a.size();
    }

    /* Access modifiers changed, original: 0000 */
    public int e() {
        int i = 0;
        Iterator it = this.a.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            i = ((a) it.next()).e ? i2 + 1 : i2;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void f() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void g() {
        this.e = true;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean h() {
        return this.e;
    }
}
