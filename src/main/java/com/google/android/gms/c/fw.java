package com.google.android.gms.c;

public class fw implements qz {
    private int a;
    private int b;
    private final int c;
    private final float d;

    public fw() {
        this(2500, 1, 1.0f);
    }

    public fw(int i, int i2, float f) {
        this.a = i;
        this.c = i2;
        this.d = f;
    }

    public int a() {
        return this.a;
    }

    public void a(uc ucVar) {
        this.b++;
        this.a = (int) (((float) this.a) + (((float) this.a) * this.d));
        if (!c()) {
            throw ucVar;
        }
    }

    public int b() {
        return this.b;
    }

    /* Access modifiers changed, original: protected */
    public boolean c() {
        return this.b <= this.c;
    }
}
