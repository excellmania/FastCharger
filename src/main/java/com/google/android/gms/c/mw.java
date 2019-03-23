package com.google.android.gms.c;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Map;
import org.apache.http.protocol.HTTP;

public abstract class mw<T> implements Comparable<mw<T>> {
    private final a a;
    private final int b;
    private final String c;
    private final int d;
    private final com.google.android.gms.c.oy.a e;
    private Integer f;
    private nx g;
    private boolean h;
    private boolean i;
    private boolean j;
    private long k;
    private qz l;
    private com.google.android.gms.c.dk.a m;

    public enum a {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public mw(int i, String str, com.google.android.gms.c.oy.a aVar) {
        this.a = a.a ? new a() : null;
        this.h = true;
        this.i = false;
        this.j = false;
        this.k = 0;
        this.m = null;
        this.b = i;
        this.c = str;
        this.e = aVar;
        a(new fw());
        this.d = a(str);
    }

    private static int a(String str) {
        if (!TextUtils.isEmpty(str)) {
            Uri parse = Uri.parse(str);
            if (parse != null) {
                String host = parse.getHost();
                if (host != null) {
                    return host.hashCode();
                }
            }
        }
        return 0;
    }

    public int a() {
        return this.b;
    }

    /* renamed from: a */
    public int compareTo(mw<T> mwVar) {
        a m = m();
        a m2 = mwVar.m();
        return m == m2 ? this.f.intValue() - mwVar.f.intValue() : m2.ordinal() - m.ordinal();
    }

    public final mw<?> a(int i) {
        this.f = Integer.valueOf(i);
        return this;
    }

    public mw<?> a(com.google.android.gms.c.dk.a aVar) {
        this.m = aVar;
        return this;
    }

    public mw<?> a(nx nxVar) {
        this.g = nxVar;
        return this;
    }

    public mw<?> a(qz qzVar) {
        this.l = qzVar;
        return this;
    }

    public abstract oy<T> a(ku kuVar);

    /* Access modifiers changed, original: protected */
    public uc a(uc ucVar) {
        return ucVar;
    }

    public abstract void a(T t);

    public int b() {
        return this.d;
    }

    public void b(uc ucVar) {
        if (this.e != null) {
            this.e.a(ucVar);
        }
    }

    public void b(String str) {
        if (a.a) {
            this.a.a(str, Thread.currentThread().getId());
        } else if (this.k == 0) {
            this.k = SystemClock.elapsedRealtime();
        }
    }

    public String c() {
        return this.c;
    }

    /* Access modifiers changed, original: 0000 */
    public void c(final String str) {
        if (this.g != null) {
            this.g.b(this);
        }
        if (a.a) {
            final long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    public void run() {
                        mw.this.a.a(str, id);
                        mw.this.a.a(toString());
                    }
                });
                return;
            }
            this.a.a(str, id);
            this.a.a(toString());
            return;
        }
        if (SystemClock.elapsedRealtime() - this.k >= 3000) {
            uh.b("%d ms: %s", Long.valueOf(SystemClock.elapsedRealtime() - this.k), toString());
        }
    }

    public String d() {
        return c();
    }

    public com.google.android.gms.c.dk.a e() {
        return this.m;
    }

    public Map<String, String> f() {
        return Collections.emptyMap();
    }

    @Deprecated
    public String g() {
        return j();
    }

    @Deprecated
    public byte[] h() {
        return null;
    }

    /* Access modifiers changed, original: protected */
    public String i() {
        return HTTP.UTF_8;
    }

    public String j() {
        String str = "application/x-www-form-urlencoded; charset=";
        String valueOf = String.valueOf(i());
        return valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
    }

    public byte[] k() {
        return null;
    }

    public final boolean l() {
        return this.h;
    }

    public a m() {
        return a.NORMAL;
    }

    public final int n() {
        return this.l.a();
    }

    public qz o() {
        return this.l;
    }

    public void p() {
        this.j = true;
    }

    public boolean q() {
        return this.j;
    }

    public String toString() {
        String str = "0x";
        String valueOf = String.valueOf(Integer.toHexString(b()));
        Object concat = valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
        str = "[ ] ";
        String valueOf2 = String.valueOf(c());
        String valueOf3 = String.valueOf(m());
        String valueOf4 = String.valueOf(this.f);
        return new StringBuilder(((((String.valueOf(str).length() + 3) + String.valueOf(valueOf2).length()) + String.valueOf(concat).length()) + String.valueOf(valueOf3).length()) + String.valueOf(valueOf4).length()).append(str).append(valueOf2).append(" ").append(concat).append(" ").append(valueOf3).append(" ").append(valueOf4).toString();
    }
}
