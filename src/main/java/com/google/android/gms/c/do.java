package com.google.android.gms.c;

import java.util.HashMap;

public class do extends ax<Integer, Long> {
    public Long a;
    public Long b;
    public Long c;
    public Long d;
    public Long e;
    public Long f;
    public Long g;
    public Long h;
    public Long i;
    public Long j;
    public Long k;

    public do(String str) {
        a(str);
    }

    /* Access modifiers changed, original: protected */
    public HashMap<Integer, Long> a() {
        HashMap hashMap = new HashMap();
        hashMap.put(Integer.valueOf(0), this.a);
        hashMap.put(Integer.valueOf(1), this.b);
        hashMap.put(Integer.valueOf(2), this.c);
        hashMap.put(Integer.valueOf(3), this.d);
        hashMap.put(Integer.valueOf(4), this.e);
        hashMap.put(Integer.valueOf(5), this.f);
        hashMap.put(Integer.valueOf(6), this.g);
        hashMap.put(Integer.valueOf(7), this.h);
        hashMap.put(Integer.valueOf(8), this.i);
        hashMap.put(Integer.valueOf(9), this.j);
        hashMap.put(Integer.valueOf(10), this.k);
        return hashMap;
    }

    /* Access modifiers changed, original: protected */
    public void a(String str) {
        HashMap b = ax.b(str);
        if (b != null) {
            this.a = (Long) b.get(Integer.valueOf(0));
            this.b = (Long) b.get(Integer.valueOf(1));
            this.c = (Long) b.get(Integer.valueOf(2));
            this.d = (Long) b.get(Integer.valueOf(3));
            this.e = (Long) b.get(Integer.valueOf(4));
            this.f = (Long) b.get(Integer.valueOf(5));
            this.g = (Long) b.get(Integer.valueOf(6));
            this.h = (Long) b.get(Integer.valueOf(7));
            this.i = (Long) b.get(Integer.valueOf(8));
            this.j = (Long) b.get(Integer.valueOf(9));
            this.k = (Long) b.get(Integer.valueOf(10));
        }
    }
}
