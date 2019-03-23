package com.google.android.a.g;

import android.os.Handler;
import com.facebook.ads.AdError;
import com.google.android.a.g.d.a;
import com.google.android.a.h.b;
import com.google.android.a.h.c;
import com.google.android.a.h.t;
import com.google.android.a.h.u;

public final class j implements d {
    private final Handler a;
    private final a b;
    private final c c;
    private final t d;
    private long e;
    private long f;
    private long g;
    private int h;

    public j() {
        this(null, null);
    }

    public j(Handler handler, a aVar) {
        this(handler, aVar, new u());
    }

    public j(Handler handler, a aVar, c cVar) {
        this(handler, aVar, cVar, AdError.SERVER_ERROR_CODE);
    }

    public j(Handler handler, a aVar, c cVar, int i) {
        this.a = handler;
        this.b = aVar;
        this.c = cVar;
        this.d = new t(i);
        this.g = -1;
    }

    private void a(int i, long j, long j2) {
        if (this.a != null && this.b != null) {
            final int i2 = i;
            final long j3 = j;
            final long j4 = j2;
            this.a.post(new Runnable() {
                public void run() {
                    j.this.b.onBandwidthSample(i2, j3, j4);
                }
            });
        }
    }

    public synchronized long a() {
        return this.g;
    }

    public synchronized void a(int i) {
        this.e += (long) i;
    }

    public synchronized void b() {
        if (this.h == 0) {
            this.f = this.c.a();
        }
        this.h++;
    }

    public synchronized void c() {
        b.b(this.h > 0);
        long a = this.c.a();
        int i = (int) (a - this.f);
        if (i > 0) {
            this.d.a((int) Math.sqrt((double) this.e), (float) ((this.e * 8000) / ((long) i)));
            float a2 = this.d.a(0.5f);
            this.g = Float.isNaN(a2) ? -1 : (long) a2;
            a(i, this.e, this.g);
        }
        this.h--;
        if (this.h > 0) {
            this.f = a;
        }
        this.e = 0;
    }
}
