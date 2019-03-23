package com.google.android.gms.c;

import com.google.android.gms.common.util.a;

public class g extends vg {
    private final a<vc<?>> e;
    private p f;

    public void a() {
        super.a();
        if (!this.e.isEmpty()) {
            this.f.a(this);
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(com.google.android.gms.common.a aVar, int i) {
        this.f.b(aVar, i);
    }

    public void b() {
        super.b();
        this.f.b(this);
    }

    /* Access modifiers changed, original: protected */
    public void c() {
        this.f.c();
    }

    /* Access modifiers changed, original: 0000 */
    public a<vc<?>> d() {
        return this.e;
    }
}
