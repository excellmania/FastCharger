package com.google.android.gms.c;

import android.support.annotation.Nullable;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

@pa
public class rv {
    public final long A;
    public final long B;
    public final String C;
    public final String D;
    @Nullable
    public final com.google.android.gms.c.jq.a E;
    public boolean F;
    public boolean G;
    public boolean H;
    @Nullable
    public final List<String> I;
    public final gv a;
    @Nullable
    public final tr b;
    public final List<String> c;
    public final int d;
    public final List<String> e;
    public final List<String> f;
    public final int g;
    public final long h;
    public final String i;
    public final JSONObject j;
    public final boolean k;
    public final pl l;
    public boolean m;
    public final boolean n;
    @Nullable
    public final me o;
    @Nullable
    public final mp p;
    @Nullable
    public final String q;
    public final mf r;
    @Nullable
    public final mh s;
    public final long t;
    @Nullable
    public final String u;
    public final ha v;
    public final long w;
    @Nullable
    public final rk x;
    @Nullable
    public final List<String> y;
    @Nullable
    public final List<String> z;

    @pa
    public static final class a {
        public final pg a;
        public final pj b;
        public final mf c;
        @Nullable
        public final ha d;
        public final int e;
        public final long f;
        public final long g;
        @Nullable
        public final JSONObject h;

        public a(pg pgVar, pj pjVar, mf mfVar, ha haVar, int i, long j, long j2, JSONObject jSONObject) {
            this.a = pgVar;
            this.b = pjVar;
            this.c = mfVar;
            this.d = haVar;
            this.e = i;
            this.f = j;
            this.g = j2;
            this.h = jSONObject;
        }
    }

    public rv(gv gvVar, @Nullable tr trVar, List<String> list, int i, List<String> list2, List<String> list3, int i2, long j, String str, boolean z, @Nullable me meVar, @Nullable mp mpVar, @Nullable String str2, mf mfVar, @Nullable mh mhVar, long j2, ha haVar, long j3, long j4, long j5, String str3, JSONObject jSONObject, @Nullable com.google.android.gms.c.jq.a aVar, rk rkVar, List<String> list4, List<String> list5, boolean z2, pl plVar, @Nullable String str4, List<String> list6, String str5) {
        this.F = false;
        this.G = false;
        this.H = false;
        this.a = gvVar;
        this.b = trVar;
        this.c = a(list);
        this.d = i;
        this.e = a(list2);
        this.f = a(list3);
        this.g = i2;
        this.h = j;
        this.i = str;
        this.n = z;
        this.o = meVar;
        this.p = mpVar;
        this.q = str2;
        this.r = mfVar;
        this.s = mhVar;
        this.t = j2;
        this.v = haVar;
        this.w = j3;
        this.A = j4;
        this.B = j5;
        this.C = str3;
        this.j = jSONObject;
        this.E = aVar;
        this.x = rkVar;
        this.y = a(list4);
        this.z = a(list5);
        this.k = z2;
        this.l = plVar;
        this.u = str4;
        this.I = a(list6);
        this.D = str5;
    }

    public rv(a aVar, @Nullable tr trVar, @Nullable me meVar, @Nullable mp mpVar, @Nullable String str, @Nullable mh mhVar, @Nullable com.google.android.gms.c.jq.a aVar2, @Nullable String str2) {
        this(aVar.a.c, trVar, aVar.b.d, aVar.e, aVar.b.f, aVar.b.j, aVar.b.l, aVar.b.k, aVar.a.i, aVar.b.h, meVar, mpVar, str, aVar.c, mhVar, aVar.b.i, aVar.d, aVar.b.g, aVar.f, aVar.g, aVar.b.o, aVar.h, aVar2, aVar.b.C, aVar.b.D, aVar.b.D, aVar.b.F, aVar.b.G, str2, aVar.b.J, aVar.b.N);
    }

    @Nullable
    private static <T> List<T> a(@Nullable List<T> list) {
        return list == null ? null : Collections.unmodifiableList(list);
    }

    public boolean a() {
        return (this.b == null || this.b.l() == null) ? false : this.b.l().b();
    }
}
