package com.google.android.gms.c;

import android.os.Binder;

public abstract class an<T> {
    private static final Object c = new Object();
    private static a d = null;
    private static int e = 0;
    private static String f = "com.google.android.providers.gsf.permission.READ_GSERVICES";
    protected final String a;
    protected final T b;
    private T g = null;

    private interface a {
        Integer a(String str, Integer num);

        Long a(String str, Long l);

        String a(String str, String str2);
    }

    protected an(String str, T t) {
        this.a = str;
        this.b = t;
    }

    public static an<Integer> a(String str, Integer num) {
        return new an<Integer>(str, num) {
            /* Access modifiers changed, original: protected */
            /* renamed from: b */
            public Integer a(String str) {
                a aVar = null;
                return aVar.a(this.a, (Integer) this.b);
            }
        };
    }

    public static an<Long> a(String str, Long l) {
        return new an<Long>(str, l) {
            /* Access modifiers changed, original: protected */
            /* renamed from: b */
            public Long a(String str) {
                a aVar = null;
                return aVar.a(this.a, (Long) this.b);
            }
        };
    }

    public static an<String> a(String str, String str2) {
        return new an<String>(str, str2) {
            /* Access modifiers changed, original: protected */
            /* renamed from: b */
            public String a(String str) {
                a aVar = null;
                return aVar.a(this.a, (String) this.b);
            }
        };
    }

    public final T a() {
        long clearCallingIdentity;
        try {
            return a(this.a);
        } catch (SecurityException e) {
            clearCallingIdentity = Binder.clearCallingIdentity();
            T a = a(this.a);
            return a;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public abstract T a(String str);
}
