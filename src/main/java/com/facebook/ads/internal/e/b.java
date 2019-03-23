package com.facebook.ads.internal.e;

import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;

public class b<T extends c, E extends a> {
    private final Map<Class<E>, List<WeakReference<T>>> a = new HashMap();
    private final Queue<E> b = new ArrayDeque();

    private void a(List<WeakReference<T>> list) {
        if (list != null) {
            int i = 0;
            for (int i2 = 0; i2 < list.size(); i2++) {
                WeakReference weakReference = (WeakReference) list.get(i2);
                if (weakReference.get() != null) {
                    int i3 = i + 1;
                    list.set(i, weakReference);
                    i = i3;
                }
            }
            for (int size = list.size() - 1; size >= i; size--) {
                list.remove(size);
            }
        }
    }

    private void b(E e) {
        if (this.a != null) {
            List list = (List) this.a.get(e.getClass());
            if (list != null) {
                a(list);
                if (!list.isEmpty()) {
                    for (WeakReference weakReference : new ArrayList(list)) {
                        c cVar = (c) weakReference.get();
                        if (cVar != null && cVar.a(e)) {
                            cVar.b(e);
                        }
                    }
                }
            }
        }
    }

    public synchronized void a(E e) {
        if (this.b.isEmpty()) {
            this.b.add(e);
            while (!this.b.isEmpty()) {
                b((a) this.b.peek());
                this.b.remove();
            }
        } else {
            this.b.add(e);
        }
    }

    public synchronized boolean a(T t) {
        boolean z;
        if (t == null) {
            z = false;
        } else {
            Class a = t.a();
            if (this.a.get(a) == null) {
                this.a.put(a, new ArrayList());
            }
            List list = (List) this.a.get(a);
            a(list);
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (((WeakReference) list.get(i)).get() == t) {
                    z = false;
                    break;
                }
            }
            z = list.add(new WeakReference(t));
        }
        return z;
    }
}
