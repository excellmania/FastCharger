package com.google.android.gms.c;

import java.util.HashMap;

public class dq extends ax<Integer, Long> {
    public Long a;

    public dq(String str) {
        a(str);
    }

    /* Access modifiers changed, original: protected */
    public HashMap<Integer, Long> a() {
        HashMap hashMap = new HashMap();
        hashMap.put(Integer.valueOf(0), this.a);
        return hashMap;
    }

    /* Access modifiers changed, original: protected */
    public void a(String str) {
        HashMap b = ax.b(str);
        if (b != null) {
            this.a = (Long) b.get(Integer.valueOf(0));
        }
    }
}
