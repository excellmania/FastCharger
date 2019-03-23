package com.google.android.gms.c;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class nx {
    private AtomicInteger a;
    private final Map<String, Queue<mw<?>>> b;
    private final Set<mw<?>> c;
    private final PriorityBlockingQueue<mw<?>> d;
    private final PriorityBlockingQueue<mw<?>> e;
    private final dk f;
    private final hy g;
    private final pz h;
    private iv[] i;
    private fc j;
    private List<Object> k;

    public nx(dk dkVar, hy hyVar) {
        this(dkVar, hyVar, 4);
    }

    public nx(dk dkVar, hy hyVar, int i) {
        this(dkVar, hyVar, i, new gx(new Handler(Looper.getMainLooper())));
    }

    public nx(dk dkVar, hy hyVar, int i, pz pzVar) {
        this.a = new AtomicInteger();
        this.b = new HashMap();
        this.c = new HashSet();
        this.d = new PriorityBlockingQueue();
        this.e = new PriorityBlockingQueue();
        this.k = new ArrayList();
        this.f = dkVar;
        this.g = hyVar;
        this.i = new iv[i];
        this.h = pzVar;
    }

    public <T> mw<T> a(mw<T> mwVar) {
        mwVar.a(this);
        synchronized (this.c) {
            this.c.add(mwVar);
        }
        mwVar.a(c());
        mwVar.b("add-to-queue");
        if (mwVar.l()) {
            synchronized (this.b) {
                String d = mwVar.d();
                if (this.b.containsKey(d)) {
                    Queue queue = (Queue) this.b.get(d);
                    if (queue == null) {
                        queue = new LinkedList();
                    }
                    queue.add(mwVar);
                    this.b.put(d, queue);
                    if (uh.b) {
                        uh.a("Request for cacheKey=%s is in flight, putting on hold.", d);
                    }
                } else {
                    this.b.put(d, null);
                    this.d.add(mwVar);
                }
            }
        } else {
            this.e.add(mwVar);
        }
        return mwVar;
    }

    public void a() {
        b();
        this.j = new fc(this.d, this.e, this.f, this.h);
        this.j.start();
        for (int i = 0; i < this.i.length; i++) {
            iv ivVar = new iv(this.e, this.g, this.f, this.h);
            this.i[i] = ivVar;
            ivVar.start();
        }
    }

    public void b() {
        if (this.j != null) {
            this.j.a();
        }
        for (int i = 0; i < this.i.length; i++) {
            if (this.i[i] != null) {
                this.i[i].a();
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public <T> void b(mw<T> mwVar) {
        synchronized (this.c) {
            this.c.remove(mwVar);
        }
        synchronized (this.k) {
            Iterator it = this.k.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
        if (mwVar.l()) {
            synchronized (this.b) {
                Queue queue = (Queue) this.b.remove(mwVar.d());
                if (queue != null) {
                    if (uh.b) {
                        uh.a("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(queue.size()), r2);
                    }
                    this.d.addAll(queue);
                }
            }
        }
    }

    public int c() {
        return this.a.incrementAndGet();
    }
}
