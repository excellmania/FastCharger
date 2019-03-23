package com.google.android.gms.c;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.c.nj.a;
import java.util.Map;

@pa
public class nk extends nl implements kr {
    DisplayMetrics a;
    int b = -1;
    int c = -1;
    int d = -1;
    int e = -1;
    int f = -1;
    int g = -1;
    private final tr h;
    private final Context i;
    private final WindowManager j;
    private final ik k;
    private float l;
    private int m;

    public nk(tr trVar, Context context, ik ikVar) {
        super(trVar);
        this.h = trVar;
        this.i = context;
        this.k = ikVar;
        this.j = (WindowManager) context.getSystemService("window");
    }

    private void g() {
        this.a = new DisplayMetrics();
        Display defaultDisplay = this.j.getDefaultDisplay();
        defaultDisplay.getMetrics(this.a);
        this.l = this.a.density;
        this.m = defaultDisplay.getRotation();
    }

    private void h() {
        int[] iArr = new int[2];
        this.h.getLocationOnScreen(iArr);
        a(hf.a().b(this.i, iArr[0]), hf.a().b(this.i, iArr[1]));
    }

    private nj i() {
        return new a().b(this.k.a()).a(this.k.b()).c(this.k.e()).d(this.k.c()).e(true).a();
    }

    /* Access modifiers changed, original: 0000 */
    public void a() {
        this.b = hf.a().b(this.a, this.a.widthPixels);
        this.c = hf.a().b(this.a, this.a.heightPixels);
        Activity f = this.h.f();
        if (f == null || f.getWindow() == null) {
            this.d = this.b;
            this.e = this.c;
            return;
        }
        int[] a = v.e().a(f);
        this.d = hf.a().b(this.a, a[0]);
        this.e = hf.a().b(this.a, a[1]);
    }

    public void a(int i, int i2) {
        int i3 = this.i instanceof Activity ? v.e().d((Activity) this.i)[0] : 0;
        if (this.h.k() == null || !this.h.k().e) {
            this.f = hf.a().b(this.i, this.h.getMeasuredWidth());
            this.g = hf.a().b(this.i, this.h.getMeasuredHeight());
        }
        b(i, i2 - i3, this.f, this.g);
        this.h.l().a(i, i2);
    }

    public void a(tr trVar, Map<String, String> map) {
        c();
    }

    /* Access modifiers changed, original: 0000 */
    public void b() {
        if (this.h.k().e) {
            this.f = this.b;
            this.g = this.c;
            return;
        }
        this.h.measure(0, 0);
    }

    public void c() {
        g();
        a();
        b();
        e();
        f();
        h();
        d();
    }

    /* Access modifiers changed, original: 0000 */
    public void d() {
        if (sz.a(2)) {
            sz.d("Dispatching Ready Event.");
        }
        c(this.h.o().b);
    }

    /* Access modifiers changed, original: 0000 */
    public void e() {
        a(this.b, this.c, this.d, this.e, this.l, this.m);
    }

    /* Access modifiers changed, original: 0000 */
    public void f() {
        this.h.b("onDeviceFeaturesReceived", i().a());
    }
}
