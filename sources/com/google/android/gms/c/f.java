package com.google.android.gms.c;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.c.a;
import com.google.android.gms.common.api.k;
import com.google.android.gms.d.e;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.WeakHashMap;

public class f {
    private final Map<vh<?>, Boolean> a = Collections.synchronizedMap(new WeakHashMap());
    private final Map<e<?>, Boolean> b = Collections.synchronizedMap(new WeakHashMap());

    private void a(boolean z, Status status) {
        synchronized (this.a) {
            HashMap hashMap = new HashMap(this.a);
        }
        synchronized (this.b) {
            HashMap hashMap2 = new HashMap(this.b);
        }
        for (Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((vh) entry.getKey()).d(status);
            }
        }
        for (Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((e) entry2.getKey()).b(new k(status));
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(final vh<? extends com.google.android.gms.common.api.f> vhVar, boolean z) {
        this.a.put(vhVar, Boolean.valueOf(z));
        vhVar.a(new a() {
            public void a(Status status) {
                f.this.a.remove(vhVar);
            }
        });
    }

    /* Access modifiers changed, original: 0000 */
    public boolean a() {
        return (this.a.isEmpty() && this.b.isEmpty()) ? false : true;
    }

    public void b() {
        a(false, p.a);
    }

    public void c() {
        a(true, am.a);
    }
}
