package com.google.android.gms.ads.internal;

import android.os.Build.VERSION;
import com.google.android.gms.ads.internal.overlay.a;
import com.google.android.gms.ads.internal.overlay.h;
import com.google.android.gms.ads.internal.overlay.t;
import com.google.android.gms.ads.internal.overlay.u;
import com.google.android.gms.ads.internal.purchase.i;
import com.google.android.gms.c.fx;
import com.google.android.gms.c.gh;
import com.google.android.gms.c.ip;
import com.google.android.gms.c.iq;
import com.google.android.gms.c.ir;
import com.google.android.gms.c.iw;
import com.google.android.gms.c.lf;
import com.google.android.gms.c.ln;
import com.google.android.gms.c.ma;
import com.google.android.gms.c.mk;
import com.google.android.gms.c.ol;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.pb;
import com.google.android.gms.c.qg;
import com.google.android.gms.c.ry;
import com.google.android.gms.c.sj;
import com.google.android.gms.c.sk;
import com.google.android.gms.c.sn;
import com.google.android.gms.c.sr;
import com.google.android.gms.c.ss;
import com.google.android.gms.c.tj;
import com.google.android.gms.c.tm;
import com.google.android.gms.c.tt;
import com.google.android.gms.common.util.c;
import com.google.android.gms.common.util.e;

@pa
public class v {
    private static final Object a = new Object();
    private static v b;
    private final u A = new u();
    private final mk B = new mk();
    private final ss C = new ss();
    private final q D = new q();
    private final lf E = new lf();
    private final tm F = new tm();
    private final a c = new a();
    private final pb d = new pb();
    private final h e = new h();
    private final ol f = new ol();
    private final sj g = new sj();
    private final tt h = new tt();
    private final sk i = sk.a(VERSION.SDK_INT);
    private final fx j = new fx();
    private final ry k = new ry(this.g);
    private final gh l = new gh();
    private final c m = e.d();
    private final g n = new g();
    private final iw o = new iw();
    private final sn p = new sn();
    private final qg q = new qg();
    private final ip r = new ip();
    private final iq s = new iq();
    private final ir t = new ir();
    private final tj u = new tj();
    private final i v = new i();
    private final ln w = new ln();
    private final ma x = new ma();
    private final sr y = new sr();
    private final t z = new t();

    static {
        a(new v());
    }

    protected v() {
    }

    public static g A() {
        return D().n;
    }

    public static lf B() {
        return D().E;
    }

    public static tm C() {
        return D().F;
    }

    private static v D() {
        v vVar;
        synchronized (a) {
            vVar = b;
        }
        return vVar;
    }

    public static pb a() {
        return D().d;
    }

    protected static void a(v vVar) {
        synchronized (a) {
            b = vVar;
        }
    }

    public static a b() {
        return D().c;
    }

    public static h c() {
        return D().e;
    }

    public static ol d() {
        return D().f;
    }

    public static sj e() {
        return D().g;
    }

    public static tt f() {
        return D().h;
    }

    public static sk g() {
        return D().i;
    }

    public static fx h() {
        return D().j;
    }

    public static ry i() {
        return D().k;
    }

    public static gh j() {
        return D().l;
    }

    public static c k() {
        return D().m;
    }

    public static iw l() {
        return D().o;
    }

    public static sn m() {
        return D().p;
    }

    public static qg n() {
        return D().q;
    }

    public static iq o() {
        return D().s;
    }

    public static ip p() {
        return D().r;
    }

    public static ir q() {
        return D().t;
    }

    public static tj r() {
        return D().u;
    }

    public static i s() {
        return D().v;
    }

    public static ln t() {
        return D().w;
    }

    public static sr u() {
        return D().y;
    }

    public static t v() {
        return D().z;
    }

    public static u w() {
        return D().A;
    }

    public static mk x() {
        return D().B;
    }

    public static q y() {
        return D().D;
    }

    public static ss z() {
        return D().C;
    }
}
