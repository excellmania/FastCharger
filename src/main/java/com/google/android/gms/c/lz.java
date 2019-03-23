package com.google.android.gms.c;

import java.util.AbstractMap.SimpleEntry;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONObject;

@pa
public class lz implements ly {
    private final lx a;
    private final HashSet<SimpleEntry<String, kr>> b = new HashSet();

    public lz(lx lxVar) {
        this.a = lxVar;
    }

    public void a() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            SimpleEntry simpleEntry = (SimpleEntry) it.next();
            String str = "Unregistering eventhandler: ";
            String valueOf = String.valueOf(((kr) simpleEntry.getValue()).toString());
            sf.a(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            this.a.b((String) simpleEntry.getKey(), (kr) simpleEntry.getValue());
        }
        this.b.clear();
    }

    public void a(String str, kr krVar) {
        this.a.a(str, krVar);
        this.b.add(new SimpleEntry(str, krVar));
    }

    public void a(String str, String str2) {
        this.a.a(str, str2);
    }

    public void a(String str, JSONObject jSONObject) {
        this.a.a(str, jSONObject);
    }

    public void b(String str, kr krVar) {
        this.a.b(str, krVar);
        this.b.remove(new SimpleEntry(str, krVar));
    }

    public void b(String str, JSONObject jSONObject) {
        this.a.b(str, jSONObject);
    }
}
