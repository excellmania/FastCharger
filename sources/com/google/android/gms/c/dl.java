package com.google.android.gms.c;

import java.util.HashMap;

public class dl extends ax<Integer, Object> {
    public Long a;
    public Boolean b;
    public Boolean c;

    public dl(String str) {
        a(str);
    }

    /* Access modifiers changed, original: protected */
    public HashMap<Integer, Object> a() {
        HashMap hashMap = new HashMap();
        hashMap.put(Integer.valueOf(0), this.a);
        hashMap.put(Integer.valueOf(1), this.b);
        hashMap.put(Integer.valueOf(2), this.c);
        return hashMap;
    }

    /* Access modifiers changed, original: protected */
    public void a(String str) {
        HashMap b = ax.b(str);
        if (b != null) {
            this.a = (Long) b.get(Integer.valueOf(0));
            this.b = (Boolean) b.get(Integer.valueOf(1));
            this.c = (Boolean) b.get(Integer.valueOf(2));
        }
    }
}
