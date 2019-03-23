package com.google.android.a.g;

import java.util.PriorityQueue;

public final class p {
    public static final p a = new p();
    private final Object b = new Object();
    private final PriorityQueue<Integer> c = new PriorityQueue();
    private int d = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;

    private p() {
    }

    public void a(int i) {
        synchronized (this.b) {
            this.c.add(Integer.valueOf(i));
            this.d = Math.min(this.d, i);
        }
    }

    public void b(int i) {
        synchronized (this.b) {
            this.c.remove(Integer.valueOf(i));
            this.d = this.c.isEmpty() ? ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : ((Integer) this.c.peek()).intValue();
            this.b.notifyAll();
        }
    }
}
