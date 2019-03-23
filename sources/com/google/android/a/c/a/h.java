package com.google.android.a.c.a;

import android.net.Uri;
import com.google.android.a.b.i;
import com.google.android.a.b.k;
import com.google.android.a.c.a.i.e;

public abstract class h implements k {
    public final String a;
    public final long b;
    public final i c;
    public final long d;
    private final String e;
    private final g f;

    public static class a extends h implements com.google.android.a.c.b {
        private final com.google.android.a.c.a.i.a e;

        public a(String str, long j, i iVar, com.google.android.a.c.a.i.a aVar, String str2) {
            super(str, j, iVar, aVar, str2);
            this.e = aVar;
        }

        public int a() {
            return this.e.b();
        }

        public int a(long j) {
            return this.e.a(j);
        }

        public int a(long j, long j2) {
            return this.e.a(j, j2);
        }

        public long a(int i) {
            return this.e.a(i);
        }

        public long a(int i, long j) {
            return this.e.a(i, j);
        }

        public g b(int i) {
            return this.e.a((h) this, i);
        }

        public boolean b() {
            return this.e.c();
        }

        public g d() {
            return null;
        }

        public com.google.android.a.c.b e() {
            return this;
        }
    }

    public static class b extends h {
        public final Uri e;
        public final long f;
        private final g g;
        private final c h;

        public b(String str, long j, i iVar, e eVar, String str2, long j2) {
            super(str, j, iVar, eVar, str2);
            this.e = Uri.parse(eVar.d);
            this.g = eVar.b();
            this.f = j2;
            this.h = this.g != null ? null : new c(new g(eVar.d, null, 0, j2));
        }

        public g d() {
            return this.g;
        }

        public com.google.android.a.c.b e() {
            return this.h;
        }
    }

    private h(String str, long j, i iVar, i iVar2, String str2) {
        this.a = str;
        this.b = j;
        this.c = iVar;
        if (str2 == null) {
            str2 = str + "." + iVar.a + "." + j;
        }
        this.e = str2;
        this.f = iVar2.a(this);
        this.d = iVar2.a();
    }

    public static h a(String str, long j, i iVar, i iVar2) {
        return a(str, j, iVar, iVar2, null);
    }

    public static h a(String str, long j, i iVar, i iVar2, String str2) {
        if (iVar2 instanceof e) {
            return new b(str, j, iVar, (e) iVar2, str2, -1);
        } else if (iVar2 instanceof com.google.android.a.c.a.i.a) {
            return new a(str, j, iVar, (com.google.android.a.c.a.i.a) iVar2, str2);
        } else {
            throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
        }
    }

    public i a_() {
        return this.c;
    }

    public g c() {
        return this.f;
    }

    public abstract g d();

    public abstract com.google.android.a.c.b e();

    public String f() {
        return this.e;
    }
}
