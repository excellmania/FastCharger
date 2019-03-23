package com.google.android.gms.c;

import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.v;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

@pa
public class rw {
    private final ry a;
    private final LinkedList<a> b;
    private final Object c;
    private final String d;
    private final String e;
    private long f;
    private long g;
    private boolean h;
    private long i;
    private long j;
    private long k;
    private long l;

    @pa
    private static final class a {
        private long a = -1;
        private long b = -1;

        public long a() {
            return this.b;
        }

        public void b() {
            this.b = SystemClock.elapsedRealtime();
        }

        public void c() {
            this.a = SystemClock.elapsedRealtime();
        }

        public Bundle d() {
            Bundle bundle = new Bundle();
            bundle.putLong("topen", this.a);
            bundle.putLong("tclose", this.b);
            return bundle;
        }
    }

    public rw(ry ryVar, String str, String str2) {
        this.c = new Object();
        this.f = -1;
        this.g = -1;
        this.h = false;
        this.i = -1;
        this.j = 0;
        this.k = -1;
        this.l = -1;
        this.a = ryVar;
        this.d = str;
        this.e = str2;
        this.b = new LinkedList();
    }

    public rw(String str, String str2) {
        this(v.i(), str, str2);
    }

    public void a() {
        synchronized (this.c) {
            if (this.l != -1 && this.g == -1) {
                this.g = SystemClock.elapsedRealtime();
                this.a.a(this);
            }
            this.a.e().c();
        }
    }

    public void a(long j) {
        synchronized (this.c) {
            this.l = j;
            if (this.l != -1) {
                this.a.a(this);
            }
        }
    }

    public void a(gv gvVar) {
        synchronized (this.c) {
            this.k = SystemClock.elapsedRealtime();
            this.a.e().a(gvVar, this.k);
        }
    }

    public void a(boolean z) {
        synchronized (this.c) {
            if (this.l != -1) {
                this.i = SystemClock.elapsedRealtime();
                if (!z) {
                    this.g = this.i;
                    this.a.a(this);
                }
            }
        }
    }

    public void b() {
        synchronized (this.c) {
            if (this.l != -1) {
                a aVar = new a();
                aVar.c();
                this.b.add(aVar);
                this.j++;
                this.a.e().b();
                this.a.a(this);
            }
        }
    }

    public void b(long j) {
        synchronized (this.c) {
            if (this.l != -1) {
                this.f = j;
                this.a.a(this);
            }
        }
    }

    public void b(boolean z) {
        synchronized (this.c) {
            if (this.l != -1) {
                this.h = z;
                this.a.a(this);
            }
        }
    }

    public void c() {
        synchronized (this.c) {
            if (!(this.l == -1 || this.b.isEmpty())) {
                a aVar = (a) this.b.getLast();
                if (aVar.a() == -1) {
                    aVar.b();
                    this.a.a(this);
                }
            }
        }
    }

    public Bundle d() {
        Bundle bundle;
        synchronized (this.c) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.d);
            bundle.putString("slotid", this.e);
            bundle.putBoolean("ismediation", this.h);
            bundle.putLong("treq", this.k);
            bundle.putLong("tresponse", this.l);
            bundle.putLong("timp", this.g);
            bundle.putLong("tload", this.i);
            bundle.putLong("pcc", this.j);
            bundle.putLong("tfetch", this.f);
            ArrayList arrayList = new ArrayList();
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                arrayList.add(((a) it.next()).d());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }
}
