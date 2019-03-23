package com.google.android.gms.c;

import com.google.android.gms.c.pq.a;
import java.lang.ref.WeakReference;

@pa
public final class pi extends a {
    private final WeakReference<pd.a> a;

    public pi(pd.a aVar) {
        this.a = new WeakReference(aVar);
    }

    public void a(pj pjVar) {
        pd.a aVar = (pd.a) this.a.get();
        if (aVar != null) {
            aVar.a(pjVar);
        }
    }
}
