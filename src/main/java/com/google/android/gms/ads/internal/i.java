package com.google.android.gms.ads.internal;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.c.bm;
import com.google.android.gms.c.cl;
import com.google.android.gms.c.hf;
import com.google.android.gms.c.is;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.si;
import com.google.android.gms.c.sz;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

@pa
class i implements bm, Runnable {
    CountDownLatch a = new CountDownLatch(1);
    private final List<Object[]> b = new Vector();
    private final AtomicReference<bm> c = new AtomicReference();
    private w d;

    public i(w wVar) {
        this.d = wVar;
        if (hf.a().b()) {
            si.a((Runnable) this);
        } else {
            run();
        }
    }

    private Context b(Context context) {
        if (!((Boolean) is.n.c()).booleanValue()) {
            return context;
        }
        Context applicationContext = context.getApplicationContext();
        return applicationContext != null ? applicationContext : context;
    }

    private void b() {
        if (!this.b.isEmpty()) {
            for (Object[] objArr : this.b) {
                if (objArr.length == 1) {
                    ((bm) this.c.get()).a((MotionEvent) objArr[0]);
                } else if (objArr.length == 3) {
                    ((bm) this.c.get()).a(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
                }
            }
            this.b.clear();
        }
    }

    /* Access modifiers changed, original: protected */
    public bm a(String str, Context context, boolean z) {
        return cl.a(str, context, z);
    }

    public String a(Context context) {
        return a(context, null);
    }

    public String a(Context context, String str, View view) {
        if (a()) {
            bm bmVar = (bm) this.c.get();
            if (bmVar != null) {
                b();
                return bmVar.a(b(context), str, view);
            }
        }
        return "";
    }

    public String a(Context context, byte[] bArr) {
        if (a()) {
            bm bmVar = (bm) this.c.get();
            if (bmVar != null) {
                b();
                return bmVar.a(b(context));
            }
        }
        return "";
    }

    public void a(int i, int i2, int i3) {
        bm bmVar = (bm) this.c.get();
        if (bmVar != null) {
            b();
            bmVar.a(i, i2, i3);
            return;
        }
        this.b.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
    }

    public void a(MotionEvent motionEvent) {
        bm bmVar = (bm) this.c.get();
        if (bmVar != null) {
            b();
            bmVar.a(motionEvent);
            return;
        }
        this.b.add(new Object[]{motionEvent});
    }

    /* Access modifiers changed, original: protected */
    public void a(bm bmVar) {
        this.c.set(bmVar);
    }

    /* Access modifiers changed, original: protected */
    public boolean a() {
        try {
            this.a.await();
            return true;
        } catch (InterruptedException e) {
            sz.c("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    public void run() {
        try {
            boolean z = !((Boolean) is.J.c()).booleanValue() || this.d.e.e;
            a(a(this.d.e.b, b(this.d.c), z));
        } finally {
            this.a.countDown();
            this.d = null;
        }
    }
}
