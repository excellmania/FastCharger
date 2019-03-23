package com.google.android.gms.c;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@pa
public class ip {
    private final Collection<io> a = new ArrayList();
    private final Collection<io<String>> b = new ArrayList();
    private final Collection<io<String>> c = new ArrayList();

    public List<String> a() {
        ArrayList arrayList = new ArrayList();
        for (io c : this.b) {
            String str = (String) c.c();
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public void a(io ioVar) {
        this.a.add(ioVar);
    }

    public List<String> b() {
        List a = a();
        for (io c : this.c) {
            String str = (String) c.c();
            if (str != null) {
                a.add(str);
            }
        }
        return a;
    }

    public void b(io<String> ioVar) {
        this.b.add(ioVar);
    }

    public void c(io<String> ioVar) {
        this.c.add(ioVar);
    }
}
