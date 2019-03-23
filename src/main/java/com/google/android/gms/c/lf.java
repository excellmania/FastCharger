package com.google.android.gms.c;

import com.google.android.gms.ads.internal.v;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@pa
public class lf implements Iterable<le> {
    private final List<le> a = new LinkedList();

    private le c(tr trVar) {
        Iterator it = v.B().iterator();
        while (it.hasNext()) {
            le leVar = (le) it.next();
            if (leVar.a == trVar) {
                return leVar;
            }
        }
        return null;
    }

    public int a() {
        return this.a.size();
    }

    public void a(le leVar) {
        this.a.add(leVar);
    }

    public boolean a(tr trVar) {
        le c = c(trVar);
        if (c == null) {
            return false;
        }
        c.b.b();
        return true;
    }

    public void b(le leVar) {
        this.a.remove(leVar);
    }

    public boolean b(tr trVar) {
        return c(trVar) != null;
    }

    public Iterator<le> iterator() {
        return this.a.iterator();
    }
}
