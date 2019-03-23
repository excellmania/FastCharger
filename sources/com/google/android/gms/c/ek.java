package com.google.android.gms.c;

public abstract class ek<M extends ek<M>> extends eq {
    protected em ag;

    public void a(ej ejVar) {
        if (this.ag != null) {
            for (int i = 0; i < this.ag.a(); i++) {
                this.ag.b(i).a(ejVar);
            }
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean a(ei eiVar, int i) {
        int p = eiVar.p();
        if (!eiVar.b(i)) {
            return false;
        }
        int b = et.b(i);
        es esVar = new es(i, eiVar.a(p, eiVar.p() - p));
        en enVar = null;
        if (this.ag == null) {
            this.ag = new em();
        } else {
            enVar = this.ag.a(b);
        }
        if (enVar == null) {
            enVar = new en();
            this.ag.a(b, enVar);
        }
        enVar.a(esVar);
        return true;
    }

    /* Access modifiers changed, original: protected */
    public int b() {
        int i = 0;
        if (this.ag == null) {
            return 0;
        }
        int i2 = 0;
        while (i < this.ag.a()) {
            i2 += this.ag.b(i).a();
            i++;
        }
        return i2;
    }

    /* renamed from: c */
    public M clone() {
        ek ekVar = (ek) super.clone();
        eo.a(this, ekVar);
        return ekVar;
    }

    public /* synthetic */ eq d() {
        return (ek) clone();
    }
}
