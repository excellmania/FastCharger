package com.google.android.gms.c;

import com.google.android.gms.c.oy.a;
import com.google.android.gms.c.oy.b;
import java.io.UnsupportedEncodingException;

public class z extends mw<String> {
    private final b<String> a;

    public z(int i, String str, b<String> bVar, a aVar) {
        super(i, str, aVar);
        this.a = bVar;
    }

    /* Access modifiers changed, original: protected */
    public oy<String> a(ku kuVar) {
        Object str;
        try {
            str = new String(kuVar.b, um.a(kuVar.c));
        } catch (UnsupportedEncodingException e) {
            str = new String(kuVar.b);
        }
        return oy.a(str, um.a(kuVar));
    }

    /* Access modifiers changed, original: protected */
    public void a(String str) {
        this.a.a(str);
    }
}
